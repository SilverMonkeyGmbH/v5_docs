Installation
=============

.. contents:: `In this article:`
    :depth: 2
    :local:
    

Requirements
----------------------------
For general information on system requirements see :doc:`/Requirements`.

Report Builder
----------------------------
In order to build reports on the website and to export lists in Microsoft Excel format the following libraries have to be installed:

- Report Viewer 2010
- Report Viewer 2012

  - Which needs SQLSysClrTypes

Clicking `here <http://www.silvermonkey.net/DL/Microsoft_ReportViewers.zip>`_ will start the free download of these libraries.


IIS Features
----------------------------
Execute the following command to enable IIS features on the application server:

  .. literalinclude:: /_static/Install.cmd
    :language: batch

See :download:`Download Script </_static/Install.cmd>`.


Microsoft SQL Server
----------------------------
For information about supported SQL Server versions see :doc:`/SupportedConf`.

The installation of the SQL Server will be described in the following section.


Installation Setup
^^^^^^^^^^^^^^^^^^^^
Start the SQL Server installation setup.
Choose the option "New SQL Server stand-alone installation..." in the follwing Window:

  .. image:: _static/SQLServerInstallation_00.png

Throughout the installation, please choose the same features as shown below:

  .. image:: _static/SQLServerInstallation_01.png

Name the instance SIM or choose another name:

  .. image:: _static/SQLServerInstallation_02.png

Configurate the server as follows:

  .. image:: _static/SQLServerInstallation_03.png

Choose the Database Engine called 'SQL_Latin_General_CP1_CI_AS': 

  .. image:: _static/SQLServerInstallation_04.png

Select the 'mixed mode'-authentification and add your SQL service account as SQL Server administrator:

  .. image:: _static/SQLServerInstallation_05.png

You have completed the setup!


SQL Server TCP/IP Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Open the SQL Server Configuration Manager, choose 'SQL Server Network Configuration' and then 'Protocols for [Database Name]'. Change the  TCP/IP Status to *Enabled*:

  .. image:: _static/SQLServerInstallation_06.png

Right-click the TCP/IP line and choose 'Properties':

  .. image:: _static/SQLServerInstallation_07.png

Choose the tab "IP Adresses" and change the 'TCP Port'-entry to 1433:

  .. figure:: _static/SQLServerInstallation_08.png
     :align: center

Afterwards, navigate to the SQL Server Services and restart the 'SQL Server ([Database Name])':

  .. figure:: _static/SQLServerInstallation_09.png
     :align: center


SIM SQL DB Service Account
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Visit :doc:`/KnowledgeBase/KB00020_SIM-SQL_DB-Rights/index` to see how to create the Silver Monkey service account necessary for the DB connection. 

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

  .. figure:: _static/SQL_server_Security_App_Data.png
     :align: center

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

  .. figure:: _static/IIS_Configuration3.png
     :align: center

Next, choose the ‘Add Application’ option in the right-click dialogue of the Default Web Site, choose the name of the application, the application pool that has just been created and the website folder that you copied in the C:\inetpub\\wwwroot… directory. 

  .. image:: _static/IIS_Configuration4.png

  .. figure:: _static/IIS_Configuration5.png
     :align: center

  After this navigate to the ‘Authentication’ settings of the new application. Set the authentication as seen below:

  .. image:: _static/IIS_Configuration6.png

For some features, it is necessary that a second AppPool is created using these settings: 

  .. image:: _static/IIS_Configuration7.png

Basic Configuration
---------------------------- 

Licence
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Your Licence is part of the license certificate. Your can find an Information on this topic here:
:doc:`/KnowledgeBase/KB00012_Activate-and-Update-License-Key/index`

Setting up Database Connection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Silver Monkey Administrator rights are required to set or update the SQL Server Connection via the user interface. If the "Settings"-Tab is visible, you got the required rights:

  .. figure:: _static/Activation_Key_Screenshot1.png
     :align: center

Fill in the fields in the Database Settings: 

  .. figure:: _static/SQLServerConnection_01.png
     :align: center

Click the 'Save'-button, click the 'Check database (save before)'-button.

The following Pop-Up shows the test result. If the test was not successfull, please check if the specified account has the correct user rights.

Setting up ConfigMgr Connection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Silver Monkey Administrator rights are required to set or update the Configuration Manager Connection. If the "Settings"-Tab is visible, you got the required rights:

  .. figure:: _static/Activation_Key_Screenshot1.png
     :align: center

Expand the 'Sites' entry on the left side and choose 'New site':

  .. figure:: _static/Set_ConfigMgr_Connection_Screenshot01.png
     :align: center

Fill in the red-lined fields as seen below.

  .. image:: _static/Set_ConfigMgr_Connection_Screenshot02.png


Visit: :doc:`/KnowledgeBase/KB00016_Configuration-Manager-Rights/index` to see which rights are required for the SCCM Service account and the SCCM SQL Service account.

Click the 'Create'-button.

.. note:: The rest of the fields will be filled in in the configuration step of the implementation.