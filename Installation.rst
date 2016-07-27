Installation
=============

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
For information about supported SQL Server versions see :doc`/Supported configurations`

Connect to your SQL Server via the SQL Management Console. Check if the Database server is supporting SQL server and Windows-Authentication:

  .. image:: _static/SQL_Server_Security_Settings.png

Create an new database with the desired name (for example "SIM_R001").

Install the Silver Monkey Database Backup. The Backup is part of the installtion Package. 

Website Files
----------------------------

Database
---------------------------- 


Basic Configuration
---------------------------- 

Licence
---------------------------- 

Set up data base connection
---------------------------- 

Set up ConfigMgr connection
---------------------------- 