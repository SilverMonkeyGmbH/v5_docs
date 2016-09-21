Manual for module "Reporting"
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 3


.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet! You may cause damage to your system. This article will be finished soon.


Site custom reports can be stored within this configuration area. The reports have to be submitted in the form of RDL or RDLC files (The format of Microsoft Reporting Services).  Reports can be generated most easily with the Microsoft Business Intelligence Development Studio. After uploading a report definition file, the data sources in the report are analyzed and displayed. When you create a report you have to assign report authorization groups, which may open this report. You can define custom folder structures to structorize multiple reports.

.. csv-table:: 
   :header: "Property","Description","Example"
   :widths: 25,57,15

   "Name", "Localized Name of the report", "Report1"
   "URL", "Reference to an external report", "25"
   "Definition", "Report definition file", "MyReport.rdl"
   "Connection", "Database Connection String (if you want query a different database that the SIM Database or rather no linkserver to the specific database has been created within the SIM database server", "25"
   "Dataset 1 .. n", "SQL query for all datasets within the report", "SELECT Table.Column,Table.Column2 FROM Table"
   "Show toolbar", "Report definition file", "0/1"
   "Show toolbar navigation", "Check to generally display the toolbar within the report", "0/1"
   "Show toolbar zoom", "Check to show toolbar zoom", "0/1"
   "Show toolbar search", "Check to show toolbar search", "0/1"
   "Show toolbar export", "Check to show toolbar export", "0/1"
   "Show toolbar refresh", "Check to show toolbar refresh", "0/1"
   "Show toolbar print", "Check to show toolbar print", "0/1"
