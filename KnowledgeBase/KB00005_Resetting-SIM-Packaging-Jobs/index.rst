KB00005 - Resetting SIM Packaging Jobs
=========================================

.. contents:: *In this article:*
  :local:
  :depth: 1

-------

Erasing Table of Packaging jobs 
++++++++++++++++++++++++++++++++++

.. image:: _static/image001.png

.. image:: _static/image002.png

.. image:: _static/image003.png


Resetting Identity
++++++++++++++++++++++
Excecute the following command in order to make the database start the new packaging jobs with the ID number 1.

"DBCC CHECKIDENT('PackagingJob', RESEED, 0)"

.. image:: _static/image004.png

.. image:: _static/image005.png