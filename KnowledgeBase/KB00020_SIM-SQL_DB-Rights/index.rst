KB00020 SIM SQL Database Rights
=========================================


.. contents:: `In this article:`
    :depth: 2
    :local:


Creating the SIM Service Account
--------------------------------------------------------------

Open the SQL Management Studio and connect to your Silver Monkey SQL DB Server. 
Expand 'Security' and right click 'Login' to create a new login.   

  .. image:: _static/Set_SQL_Service_Account_Screenshot01.png

   Choose a name (for example sql-sim)and a password. Set the Authentication to 'SQL Server authentication' also uncheck the 'Enforce password policy'-checkbox.

  .. image:: _static/Set_SQL_Service_Account_Screenshot02.png

  Navigate to 'User Mapping' choose the SIM SQL DB and activate the db_owner role. After that click 'OK'.

    .. image:: _static/Set_SQL_Service_Account_Screenshot03.png