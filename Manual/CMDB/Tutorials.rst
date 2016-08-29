Tutorials for module "CMDB"
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 3


.. _tut-firstCMDBclass:

************************************************************************************
Creating first CMDB class
************************************************************************************

For full reference see .. :ref:`CMDB-actions-CMDB2SCCM`.

.. note:: You have to be in a role that has the right "Edit settings".

1. Go to "Settings" tab
2. Navigate to CMDB and click on the plus button at the buttom

.. image:: _static/Tutorial_FirstCMDBClass_1.png 

3. Create a new CMDB class called "Computers":

.. image:: _static/Tutorial_FirstCMDBClass_2.png 

4. Create first attributes "Name" and "MACAddress":

.. image:: _static/Tutorial_FirstCMDBClass_3.png 

.. image:: _static/Tutorial_FirstCMDBClass_4.png 

5. Create an attribute of the type "Object reference" and set the reference to another custom CMDB Class "Packaging Languages" (It will be good practice for subsequent tutorial):

.. image:: _static/Tutorial_FirstCMDBClass_5.png 

.. image:: _static/Tutorial_FirstCMDBClass_6.png 

6. Create a list view

.. note:: There are two different types of views: Lists and Forms. Lists display multiple elements of a CMDB Class. When clicking on an item, the configured form will be opened to view or edit the item.

.. image:: _static/Tutorial_FirstCMDBClass_7.png 

Configure the list like the following

.. image:: _static/Tutorial_FirstCMDBClass_8.png 

Two important things: 

 - The setting ``detailView="Computers Details"`` says that there is a form view with the name "Computers Details" expected
 - The setting ``cmdb2sccm="true"`` displays a transfer button in the list context menu
 .. image:: _static/Tutorial_FirstCMDBClass_8_preview.png  
 - For full reference see :ref:`CMDB-Lists-View`

.. literalinclude:: _static/ViewExample2.xml
    :language: xml
    :linenos:
    :emphasize-lines: 5,11

7. Create a form view

Create a new form view like the following (you have to stick to the configured name from the list view ``detailView="Computers Details"``):

.. image:: _static/Tutorial_FirstCMDBClass_9.png

A set a attributes and form elements are suggested automatically. You can delete the ``<connections link="true" />`` line as no connections are configured in this example.

.. image:: _static/Tutorial_FirstCMDBClass_10.png

When you go to CMDB you can have a look at the result of our list and form:

.. image:: _static/Tutorial_FirstCMDBClass_11.png

You can add more attributes to the class and use those attributes in lists and forms as you need.

.. _tut-massImport:

************************************************************************************
Setting up mass import for ConfigMgr
************************************************************************************

For full reference see :ref:`CMDB-actions-CMDB2SCCM`.

.. note:: This tutorial is built up on the database schema of the tutorial :ref:`tut-firstCMDBclass`.

