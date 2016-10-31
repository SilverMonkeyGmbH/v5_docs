Manual for Module "Webservice"
=============================================================

.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet! You may cause damage to your system. This article will be finished soon.

.. contents:: *In this article:*
  :local:
  :depth: 3


Several Microsoft ConfigMgr processes can be automated using the Web Service. This service provides the following functions that can be initiated by a corresponding Web Service call by any system:

- Creating a new computer
- Deleting computers
- Distributing Software
- Exchanging computers
- Recreating computers
- Creating software packages
- Creating file structures
- Executing scripts on the webserver

To go to the processes a HTTP POST calls the address of the service. This call is basically a stream with an XML structure that contains a set of commands. These commands are processed by the service, expanded by their results and sent back to the caller. The success status includes a new node called "result" added to the attribute "error".

Please observe upper and lower case when you are generating the XML command structure (for example, when you enter the site code, etc.). The following example shows an XML structure with three separate commands. All calls must be made using an account that has the appropriate permissions. When the  call for createation of a new computer is committed, the specified variables are added to the list of standard variables from the configuration.

.. tip:: Go to :doc:`/KnowledgeBase/KB00002_WebService-Test-Tool/index` to get help connecting to the web service. 

************************************************************************************
Authentication
************************************************************************************
Depending on the setting of the IIS application there are two possible authentication methods:

1. Windows Authentication (recommended)

2. Authentication via XML input (supplied credentials will be used for impersonation)

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
Available Commands
************************************************************************************

All commands sent to the webservice have to be enclosed by the following XML block:

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

.. _websrv-deployment:

===============
Deployment
===============

Creating a deployment for a ConfigMgr **package**. 
Go to :ref:`websrv-assignment` in order to get help deploying a ConfigMgr **application**. 

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

.. note:: Depeding on the settings of ``Settings->Sites->[SITE]->Computer software deplyoment``, corresponding collections and deployments will be created in ConfigMgr. The same settings are used by the Operations module.

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
 :emphasize-lines: 4,6,8-9
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


===============
deleteClient
===============

.. code-block:: xml
  :linenos:

  <cmd name="deleteClient" siteCode="000">
    <resourceID>Resourcen ID des Computers (alternativ)</resourceID>
    <name>Name des Computers (alternativ)</name>
  </cmd>

===============
createClient
===============

.. code-block:: xml
  :linenos:

  <cmd name="createClient" siteCode="000">
    <name>Computername</name>
    <mac>MAC Adresse</mac>
    <configuration>Standard</configuration>
    <overwrite>true</overwrite>
    <variable>
      <name>Variablenname</name>
      <locale>Locale</locale>
      <value>Variablenwert</value>
   </variable>
  </cmd>

===============
executeScript
===============

.. code-block:: xml
  :linenos:

  <cmd name="executeScript" siteCode="000">
   <executable>Computername</executable>
   <parameters>MAC Adresse</parameters>
  </cmd>

===============
exchangeClient
===============

.. code-block:: xml
  :linenos:

  <cmd name="exchangeClient" siteCode="000">
    <sourceComputerName>Name des alten Computers</sourceComputerName>
    <targetComputerName>Name des neuen Computers (alternativ Name oder MAC)</targetComputerName>
    <targetComputerMAC>MAC Adresse des neuen Computers (alternative Name oder MAC)</targetComputerMAC>
    <configuration>Name der Konfiguration des neuen Computers</configuration>
    <packages>
        <packageId>PaketId des ersten Paketes</packageId>
        <packageId>PaketId des zweiten Paketes</packageId>
    </packages>
    <applications>
        <application>Name der Applikation</application>
        <application>Name der Applikation</application>
    </applications >
   <variable>
      <name>Variablenname</name>
      <locale>Locale</locale>
      <value>Variablenwert</value>
   </variable>
  </cmd>

===============
refreshClient
===============

.. _websrv-assignment:

.. code-block::
  :linenos:

  <cmd name="refreshClient" siteCode="000">
    <computerName>Computername</computerName>
    <configuration>Name der Konfiguration des neuen Computers</configuration>
    <packages>
        <packageId>PaketId des ersten Paketes</packageId>
        <packageId>PaketId des zweiten Paketes</packageId>
    </packages>
    <applications>
        <application>Name der Applikation</application>
        <application>Name der Applikation</application>
    </applications >
   <variable>
      <name>Variablenname</name>
      <locale>Locale</locale>
      <value>Variablenwert</value>
   </variable>
  </cmd>


===============
assignment
===============

Creating a deployment for a ConfigMgr **application**. 
Go to :ref:`websrv-deployment` for deploying a ConfigMgr **package**. 

.. code-block:: xml 
  :linenos:

  <cmd name="assignment" siteCode="000">
   <computerName>Name des Computers (alternativ)</computerName>
   <resourceID>Resourcen ID des Computers (alternativ)</applicationID >
   <applicationID>ApplikationsID</ applicationID>
   <type>Installation|Deinstallation</type>
   <offerTypeId>0=Required|2=Available</offerTypeId>  
</cmd> 

==============================
createFileStructure
==============================

.. code-block:: xml
  :linenos:

  <cmd name="createFileStructure">
   <packagingParamName1>Wert 1</packagingParamName1>
   <packagingParamName2>Wert 2</packagingParamName2>
   <packagingParamName3>Wert 3</packagingParamName3>
   ...
  </cmd> 

===============
createPackage
===============

.. code-block:: xml
  :linenos:

  <cmd name=" createPackage">
   <packagingParamName1>Wert 1</packagingParamName1>
   <packagingParamName2>Wert 2</packagingParamName2>
   <packagingParamName3>Wert 3</packagingParamName3>
   ...
  </cmd>

==============================
createApplication
==============================

.. code-block:: xml
  :linenos:

  <cmd name="createApplication" siteCode="000" template="default" >
    <variable name="Name">Wert</variable>
  </cmd>

==============================
createCollection
==============================

.. code-block:: xml
  :linenos:

  <cmd name="createCollection" siteCode="000"
   name="Neu 2"
   collectionType="1=user|2=device"
   limitToCollectionId="SMS00001"
   query="" />
  </cmd>