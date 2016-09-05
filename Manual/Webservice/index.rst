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

===============
deployment
===============

You can change the behaviour of the new computer "plus" button.
Add the following XML tag to ``//sites/site``:

.. code-block:: xml
 :linenos:

  <cmd name="deployment" siteCode="000">
    <computerName>Name of the computer (alternative)</computerName>
    <resourceID>Resourcen ID of the computer (alternative)</resourceID>
    <packageName>Name of the package (alternative)</packageName>
    <packageID>Id of the package (alternative)</packageID>
    <program>name of the package program</program>
    <type>Optional/Mandatory</type>
  </cmd> 


**Examples**

Creating a deployment of a SCCM package by IDs

 .. code-block:: xml
  :emphasize-lines: 3,5-7
  :linenos:

  <cmd name="deployment" siteCode="P01">
    <computerName></computerName>
    <resourceID>12341134</resourceID>
    <packageName></packageName>
    <packageID>P0100001</packageID>
    <program>install</program>
    <type>Mandatory</type>
  </cmd> 