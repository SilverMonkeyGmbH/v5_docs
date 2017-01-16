Requirements
============

Server Application (IIS)
----------------------------
-	Microsoft Windows Server 2008 R2 or higher
-	Internet Information Server
-	Microsoft .NET Framework 3.5
-	Microsoft Report Viewer 2012 (free download from Microsoft)

Server Database (SQL)
----------------------------
-	Microsoft SQL Server 2008 R2 or higher 
-	Or Microsoft SQL Server Express with Advanced Services

  -	2008 R2: http://www.microsoft.com/en-us/download/details.aspx?id=25174
  -	2012: http://www.microsoft.com/en-us/download/details.aspx?id=29062 (ENU\x86\SQLEXPRADV_x86_ENU.exe)
  -	2014: https://www.microsoft.com/en-US/download/details.aspx?id=42299  

Server Hardware Requirements (IIS+SQL)
--------------------------------------------------------
The system requirements for processors, RAM and hard disk space on the server depend on the size of the correspondig ConfigMgr environment and the number of users working at the same time. Anyway, there is always the option to easily move the application to a more powerful machine or to distribute it across several servers with load balancing.

System Requirements
----------------------------------------------------------------------------------------------------------------
- CPU	1GHz
- RAM	2GB (If there is a SQL Server running on the Webapplication Server 4GB RAM are required)
- Database size	500MB
- Website/Application files	50MB

(Valid for up to 10,000 systems and 20 concurrent users on the Web Application)

Network Configuration
----------------------------
SIM v5 Engine supports multiple domain configurations. Please see figure below for detailed information about network communication ports:

  .. image:: _static/SIM_Network_Diagram_v1.0.png

Workplace Applications
----------------------------
-	Microsoft Internet Explorer 8 or later
-	Mozilla FireFox 5 or later (Windows SSO is not supported by browser)
-	Google Chrome

