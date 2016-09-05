Manual for module "Webservice"
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 3


.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet! You may cause damage to your system. This article will be finished soon.

Using the Web Service several Microsoft ConfigMgr processes can be automated. This service provides the following functions that can be initiated by a corresponding Web service call by any system:

- Creating new computer
- Delete computers
- Software distribution
- exchange of computers
- recreation computers
- creating software packages
- creating file structures
- Executing scripts on the webserver

To go to the processes a HTTP POST calls to the address of the service. On this call is a stream with an XML structure sent the a set of commands contains. These commands are processed by the service to expand the results and sent back to the caller. The success status includes the added node "result" in the attribute "error".
When generating the XML command structure is in upper / lower case to respect (for example, when you enter the site code, etc.). The sequence example shows an XML structure with three separate commands. All calls must be made through an account that has the appropriate permissions. When you call to create new computer the specified variables are added to the list of standard variables from the configuration.

************************************************************************************
Authentication
************************************************************************************
Depending on the setting of the IIS application there are two possible authentication methods

a) Windows Authentication (recommended)
b) Authentication via XML input (supplied credentials will be used for impersonation)

.. code-block:: xml
 :emphasize-lines: 3-7
 :linenos:

  <?xml version="1.0" encoding="utf-8"?>
  <cmds>
    <login>
      <domain>DOMAIN</domain>
      <user>USERNAME</user>
      <password>ClearPassword</password>
    </login>
    <cmd></cmd>
    <cmd></cmd>
    ...
  </cmds>

************************************************************************************
Available commands
************************************************************************************

All commands have to be send to the webservice enclosed by the following XML block:

.. code-block:: xml
 :emphasize-lines: 1,2,6
 :linenos:

  <?xml version="1.0" encoding="utf-8"?>
  <cmds>
    <cmd></cmd>
    <cmd></cmd>
    ...
  </cmds>

The web service executes each ``cmd`` element and adds a ``result`` node to it.

.. code-block:: xml
 :emphasize-lines: 7
 :linenos:

  <?xml version="1.0" encoding="utf-8"?>
  <cmds>
    <cmd>
      <param1></param1>
      <param2></param2>
      <param3></param3>
      <result error="true/false">Message</result>
    </cmd>
    <cmd></cmd>
    ...
  </cmds>


===============
deployment
===============

You can change the behaviour of the new computer "plus" button.
Add the following XML tag to ``//sites/site``:

.. code-block:: xml
 :linenos:

  <cmd name="deployment" siteCode="000">
    
    <computerName>Name of the computer</computerName><!-- Supply NAME -->
    <resourceID>Resource ID of the computer</resourceID><!-- or resourceID -->
    
    <packageName>Supplied value of the field "Name" in ConfigMgr console</packageName><!-- Supply NAME -->
    <packageID>Id of the package</packageID><!-- or packageID -->
    
    <program>name of the package program</program>
    <type>Optional/Mandatory</type>

  </cmd> 

.. note:: Depeding on the settings of ``Settings->Sites->[SITE]->Computer software deplyoment`` corresponding collections and deployments will be created in ConfigMgr. The same settings are used by the Operations module.

**Examples**

1. Creating a deployment of a SCCM package by IDs

.. code-block:: xml
 :emphasize-lines: 5,7-9
 :linenos:

  <?xml version="1.0" encoding="utf-8"?>
  <cmds>
    <cmd name="deployment" siteCode="P01">
      <computerName></computerName>
      <resourceID>12341134</resourceID>
      <packageName></packageName>
      <packageID>P0100001</packageID>
      <program>install</program>
      <type>Mandatory</type>
    </cmd>
  </cmds>

2. Creating a deployment of a SCCM package by names

.. code-block:: xml
 :emphasize-lines: 4,5,8-9
 :linenos:

  <?xml version="1.0" encoding="utf-8"?>
  <cmds>
    <cmd name="deployment" siteCode="P01">
      <computerName>MyPc1</computerName>
      <resourceID></resourceID>
      <packageName>TestPackage</packageName>
      <packageID></packageID>
      <program>install</program>
      <type>Mandatory</type>
    </cmd>
  </cmds>  