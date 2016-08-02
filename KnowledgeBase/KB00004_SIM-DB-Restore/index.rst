KB00004 - SIM data base restore
=========================================


Silver Monkey database restore
---------------------------------

Create new Database
^^^^^^^^^^^^^^^^^^^^^^
Connect to your SQL Server via SQL Management Studio, create a new Database:

  .. image:: _static/Create_new_database_Screenshot01.png

In the following dialogue choose a database name that fits your naming convention. Click the 'OK'-Button.

  .. image:: _static/Create_new_database_Screenshot02.png

Run Script
^^^^^^^^^^^^^

Choose 'new Query': 
  .. image:: _static/Create_new_database_Screenshot03.png

Copy the content of the SQL backup file that is part of the installation package and paste it into the new query window. Replace the database name in the 'USE {DATABASE NAME}' part of the query with the Name of the Database you just created.

  .. image:: _static/Create_new_database_Screenshot04.png

  After (!) this click the 'Execute' button.

  You have successfully created the SIM Database!