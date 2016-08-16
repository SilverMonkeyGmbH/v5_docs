KB00008 - Sending an Email in PackWF at the Push of a Button
=================================================

.. contents:: *In this article:*
  :local:
  :depth: 1

*************************************
Creating an IIS Website
*************************************

1. Copy Files to Inetpub
+++++++++++++++++++++++++++++++
Create a new folder in C:\inetpub\wwwroot\. Please be sure to name your file with rising numbers following the name convention
"treon_R****" if a Silver Monkey website already exists (see image below).

.. image:: _static/image001.png

Now move the content of the Silver Monkey installation file to the folder you just created.

.. image:: _static/image003.png


2. Creating an Application
+++++++++++++++++++++++++++
Please start MMC for IIS ("Internet Information Services"). Right click on the folder and select "Add application".

.. image:: _static/image005.png

Fill in the fields displayed. The field named "Alias" should be filled with "Treon_R0001".

.. image:: _static/image007.png

.. note:: Please choose the application pool named *"Treon"* or *"SIM*" if it exists.

In the next step, please authentificate the application by activating its authentification for Windows.

.. image:: _static/image009.png
.. image:: _static/image011.png


3. Writing Permission for App_data
+++++++++++++++++++++++++++++++++++
Writing permission can be set in C:\inetpub\wwwroot\treonR0001\App_Data

.. image:: _static/image013


4. Insert Configuration.xml
+++++++++++++++++++++++++++++
Please copy the file "configuration.xml" from the former website to the new one.

.. image:: _static/image015

5. Testing your Website
++++++++++++++++++++++++
.. note:: In case of a disabled Single Sign On, please restart Internet Explorer before restarting the whole server.

Open Internet explorer, then go to http://SERVERNAME/Treon_R0001 .

Check your website version as follows:

.. image:: _static/image017.png
.. image:: _static/image019.png