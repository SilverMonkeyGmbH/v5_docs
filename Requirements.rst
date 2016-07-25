Requirements
============

Server application (IIS)
----------------------------
-	Microsoft Windows Server 2008 R2 or higher
-	Internet Information Server
-	Microsoft .NET Framework 3.5
-	Microsoft Report Viewer 2012 (free download from Microsoft)

Server database (SQL)
----------------------------
-	Microsoft SQL Server 2008 R2 or higher 
-	Or Microsoft SQL Server Express with Advanced Services

  -	2008 R2: http://www.microsoft.com/en-us/download/details.aspx?id=25174
  -	2012: http://www.microsoft.com/en-us/download/details.aspx?id=29062 (ENU\x86\SQLEXPRADV_x86_ENU.exe)
  -	2014: https://www.microsoft.com/en-US/download/details.aspx?id=42299  

Server hardware requirements (IIS+SQL)
--------------------------------------------------------
The system requirements for processors RAM and hard disk space depends on the size of the correspondig ConfigMgr environment and the number of parallel working users. Anyway, there is always the option easily move the application to a more powerful machine or be distributed across several servers with load balancing.

In addition to the requirements of the operating system, the following conditions arise:
----------------------------------------------------------------------------------------------------------------
- CPU	1
- RAM	2GB
- Database size	500MB
- Website/Application files	50MB

(Valid for up to 10,000 systems and 20 concurrent users on the Web Application)

Network configuration
----------------------------
SIM v5 Engine support multiple domain configurations. Please see figure below for detailed information about network communication ports:

  .. image:: _static/SIM_Network_Diagram_v1.0.png

Workplace systems
----------------------------
-	Microsoft Internet Explorer 8 or higher
-	Mozilla FireFox 5 or higher (Windows SSO is not supported by browser)
-	Google Chrome

