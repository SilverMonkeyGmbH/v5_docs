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

The installation of the SQL Server will be described in the following steps.

Installation Setup
^^^^^^^^^^^^^^^^^^^^
Start the SQL Server installation setup.
Choose the "New SQL Server stand-alone installation..."-Option in the follwing Window:

  .. image:: _static/SQLServerInstallation_00.png

Follow the Install, choose the same Features as in the seen below:

  .. image:: _static/SQLServerInstallation_01.png

Name the instance SIM or choose another name:

  .. image:: _static/SQLServerInstallation_02.png

Configure the server as seen below:

  .. image:: _static/SQLServerInstallation_03.png

Choose the Database Engine 'SQL_Latin_General_CP1_CI_AS': 

  .. image:: _static/SQLServerInstallation_04.png

Select the 'mixed mode'-Authentication and add your SQL service account as SQL Server administrator:

  .. image:: _static/SQLServerInstallation_05.png

You have completed the setup!


SQL Server TCP/IP configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Open the Sql Server Configuration Manager, choose the 'SQL Server Network Configuration' and then 'Protocols for [Database Name]'. Change the  TCP/IP Status to Enabled:

  .. image:: _static/SQLServerInstallation_06.png

Right-click the TCP/IP row and choose 'Properties':

  .. image:: _static/SQLServerInstallation_07.png

Choose the IP Adresses Tab and change the 'TCP Port'-entry to 1433:

  .. image:: _static/SQLServerInstallation_08.png

After that navigate to the SQL Server Services and restart the 'SQL Server ([Database Name]):

  .. image:: _static/SQLServerInstallation_09.png


SIM SQL DB Service Account
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Visit: :doc:`/KnowledgeBase/KB00020_SIM-SQL_DB-Rights/index` to see how to create the Silver Monkey service account necessary for the DB connection. 

You finished the basic SQL Server installation for Silver Monkey.


Website Files
----------------------------
Copy the basic configuration of the website to the specified path on the web application server:

*C:\inetpub\wwwroot\[HERE]*
Example:
*C:\inetpub\wwwroot\SIM_R001*

This configuration will be customized later based on the customer requirements.

.. tip::
     Make sure that the role “Everyone” has the permission to “Modify, Read& execute, List folder contents, Read, Write” to the App_Data folder (as seen below)

  .. image:: _static/SQL_server_Security_App_Data.png

Database
---------------------------- 
Install the Silver Monkey Database Backup. The Backup is part of the installation Package.

See: :doc:`/KnowledgeBase/KB00004_SIM-DB-Restore/index` for more Information.

IIS Configuration
---------------------------- 

Open the IIS (Internet Information Services) Manager.
An app pool has to be created for the SIM Packaging website with the .NET CLR Version ‘v2.0.50727’ and the ‘Integrated’ Managed pipeline mode.

  .. image:: _static/IIS_Configuration1.png

Navigate to the advanced settings of the created application pool (Figure 3) and set the ‘Idle Time-out(minutes)’ parameter to ‘600’. Set the ‘Idle Time-out Action’ parameter to ‘Suspend’. 

  .. image:: _static/IIS_Configuration2.png

  .. image:: _static/IIS_Configuration3.png

Next, choose the ‘Add Application’ option in the right-click dialogue of the Default Web Site, choose the name of the application, the application pool that has just been created and the website folder that you copied in the C:\inetpub\\wwwroot… directory. 

  .. image:: _static/IIS_Configuration4.png

  .. image:: _static/IIS_Configuration5.png

  After this navigate to the ‘Authentication’ settings of the new application. Set the authentication as seen below:

  .. image:: _static/IIS_Configuration6.png

For some features, it is necessary that a second AppPool is created using these settings: 

  .. image:: _static/IIS_Configuration7.png

Basic Configuration
---------------------------- 

Licence
---------------------------- 
Your Licence is part of the license certificate. Your can find an Information on this topic here:
:doc:`/KnowledgeBase/KB00012_Activate-and-Update-License-Key/index`

Set up data base connection
---------------------------- 
Silver Monkey Administrator rights are required to set or update the SQL Server Connection via the user interface. If the "Settings"-Tab is visible, you got the required rights:

  .. image:: _static/Activation_Key_Screenshot1.png

Fill in the fields in the Database Settings: 

  .. image:: _static/SQLServerConnection_01.png

Click the 'Save'-button, click the 'Check database (save before)'-button.

The following Pop-Up shows the test result. If the test was not successfull, please check if the specified account has the correct user rights.

Set up ConfigMgr connection
----------------------------
Silver Monkey Administrator rights are required to set or update the Configuration Manager Connection. If the "Settings"-Tab is visible, you got the required rights:

  .. image:: _static/Activation_Key_Screenshot1.png

Expand the 'Sites' entry on the left side and choose 'New site':

  .. image:: _static/Set_ConfigMgr_Connection_Screenshot01.png

Fill in the red-lined fields as seen below.

  .. image:: _static/Set_ConfigMgr_Connection_Screenshot02.png


Visit: :doc:`/KnowledgeBase/KB00016_Configuration-Manager-Rights/index` to see which rights are required for the SCCM Service account and the SCCM SQL Service account.

Click the 'Create'-button.

.. note:: The rest of the fields will be filled in in the configuration step of the implementation.