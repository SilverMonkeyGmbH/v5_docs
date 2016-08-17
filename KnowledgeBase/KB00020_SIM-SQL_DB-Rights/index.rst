KB00020 - SIM SQL Database Rights
=========================================


Creating the SIM Service Account
+++++++++++++++++++++++++++++++++++++++++++

Open SQL Management Studio and connect to your Silver Monkey SQL DB Server. 
Expand 'Security' and right click 'Login' to create a new login.   

    .. image:: _static/image001.png
        :align: center

Choose a name (e.g. 'sql-sim') and a password. Set the authentication to 'SQL Server authentication' and uncheck the 'Enforce password policy'-checkbox.

    .. image:: _static/image003.png

Navigate to 'User Mapping' choose the SIM SQL DB and activate the db_owner role. After that click 'OK'.

    .. image:: _static/image005.png

You now have successfully created your SIM Service Account!