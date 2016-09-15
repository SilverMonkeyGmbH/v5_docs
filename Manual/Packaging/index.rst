Manual for module "Packaging"
=============================================================

.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet!
             You may cause damage to your system. This article will be finished soon.

.. contents:: *In this article:*
  :local:
  :depth: 3


The Packaging Module is used to map and standardize the organisational packaging process. In addition, it is possible to use operations to simplify Configuration Manager Tasks like creating Packages or Applications. The Packaging Module is based on the functions of the CMDB Module: Attributes, Views and operations are configured just as in the CMDB Module. The settings for the automatic creation of packages in SCCM (System Center Configuration Manager) and the creation of folder structures for the packaging process are described in the sections :ref:`sites`, :ref:`programmes` and :ref:`operating-system-groups`.

  .. figure:: _static/PackagingConfiguration.png

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58 

   "Table name", "The name of the packaging table"
   "Name rule", "Define how packages will be displayed in connection views from other classes"
   "Automation", "Define triggers that will execute SQL Stored Procedures on specific events"
   "Workflow", "Define the preconfigured workflow for the packaging process"
   "Key field", "Define the identifier for the packaging table"
   "Link view", "Define the view that will be displayed when you open a entry of the packaging table from another class form"

.. _sites:
****************************************************************
Sites
****************************************************************

  .. figure:: _static/SiteConfiguration.png

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Name - de", "German display name of the packaging site"
   "Name - en", "English display name of the packaging site"
   "Site", "Choose a preconfigured site as packaging site here. See the reference below to learn how to configure sites in general."
   "Package Folder", "Depricated!(Feature for SCCM Packages)"
   "Package Name rule", "Depricated!(Feature for SCCM Packages)"
   "Analyse file ext.", "Define what kind of files should be parsed when copy jobs are executed. All files that are copied and that have a type that is defined here will be parsed, meaning when there are Attributenames in curly braces ({AttributeName}) they will be replaced with the attribut value in the form context. (Possible values: ""docx; vbs; txt; xml"")"


See :ref:`General-Configuration-Sites` to learn how to configure sites. 

================================================================
Copy jobs
================================================================

Various file copying operations can be defined for the packaging process. Create the filestructure for the packaging process with this operation. Execute single or multiple copy jobs from the forms.  

  .. figure:: _static/CopyJobs.png

  .. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Name - de", "German display name of the copy job"
   "Name - en", "English display name of the copy job"
   "Source", "Source path for the copy job"
   "Destination", "Destination path for the copy job"

See the general Site Configuration for the definition of the files that will be parsed while executing copy jobs.

 .. note:: The copy jobs will be executed in the context of the deposited sccm account. 

================================================================
Package parameters
================================================================

Depricated!(Feature for SCCM Packages)

.. _programmes:

****************************************************************
Programmes
****************************************************************

Depricated!(Feature for SCCM Packages)

.. _operating-system-groups:
****************************************************************
Operating System groups
****************************************************************

Depricated!(Feature for SCCM Packages)

****************************************************************
Attributes
****************************************************************

Create attributes for the packaging workflow here. 

You can see informations about attributes here :ref:`CMDB-Attributes` 

****************************************************************
Views
****************************************************************

Create lists and forms for the packaging workflow here. 

For further information :ref:`CMDB-Form Views` 