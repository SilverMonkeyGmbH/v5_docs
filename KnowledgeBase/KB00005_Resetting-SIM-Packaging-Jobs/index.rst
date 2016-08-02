KB00005 - Resetting SIM Packaging Jobs
=========================================

.. contents:: *In this article:*
  :local:
  :depth: 1

*************************************
Resetting Silver Monkey Packaging Jobs
*************************************

1. Erase Table of Packaging jobs 
++++++++++++++++++++++++++++++++++


.. image:: _static/image001.png

.. image:: _static/image002.png

.. image:: _static/image003.png


2. Reset Identity
++++++++++++++++++++++
The following command has to be executed in order to make the database start the new packaging jobs with the ID number 1.
"DBCC CHECKIDENT('PackagingJob', RESEED, 0)"

.. image:: _static/image004.png

.. image:: _static/image005.png