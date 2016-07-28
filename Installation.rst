Installation
=============

.. contents:: `In this article:`
    :depth: 2
    :local:
    

Requirements
----------------------------
For general information about requirements see :doc:`/Requirements`

Report Builder
----------------------------
For building reports on the website and for exporting lists in Microsoft Excel format the following libraries have to be installed:

- Report Viewer 2010
- Report Viewer 2012

  - Which needs SQLSysClrTypes

You can download these libraries in one zip at: http://www.silvermonkey.net/DL/Microsoft_ReportViewers.zip


IIS Features
----------------------------
Execute the following command to enable IIS features on the application server:

  .. literalinclude:: /_static/Install.cmd
    :language: batch

See :download:`Download Script </_static/Install.cmd>`.


Microsoft SQL Server
----------------------------
For information about supported SQL Server versions see :doc:`/SupportedConf`

Connect to your SQL Server via the SQL Management Console. Check if the Database server is supporting SQL server and Windows-Authentication:

  .. image:: _static/SQL_Server_Security_Settings.png

Create an new database with the desired name (for example "SIM_R001").

Website Files
----------------------------
Copy the basic configuration of the website to the specified path on the web application server:

*C:\inetpub\wwwroot\[HERE]*
Example:
*C:\inetpub\wwwroot\SIM_R001*

Note: Make sure that the role “Everyone” has the permission to “Modify, Read& execute, List folder contents, Read, Write” to the App_Data folder 


This configuration will be customized later based on the customer requirements.

.. tip::
     Make sure that the role “Everyone” has the permission to “Modify, Read& execute, List folder contents, Read, Write” to the App_Data folder (as seen below)

  .. image:: _static/SQL_server_Security_App_Data.png

Database
---------------------------- 
Install the Silver Monkey Database Backup. The Backup is part of the installation Package.

Basic Configuration
---------------------------- 

Licence
---------------------------- 

Set up data base connection
---------------------------- 

Set up ConfigMgr connection
---------------------------- 

:ref:`KB00002_WebService-Test-Tool`
:doc:`/KnowledgeBase/KB00002_WebService-Test-Tool/index.rst`
:doc:`/KnowledgeBase/KB00002_WebService-Test-Tool/index`