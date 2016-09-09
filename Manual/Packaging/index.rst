Manual for module "Packaging"
=============================================================

.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet!
             You may cause damage to your system. This article will be finished soon.

.. contents:: *In this article:*
  :local:
  :depth: 3


The Packaging Module is used to map and standartize the organisational packaging process. In addition to that you can use operations to simplify Configuration Manager Tasks, like creating Packages or Applications. The Packaging Module is based on the functions of the CMDB Module: Attributes, Views and operations are configured like in the CMDB Module. The Settings for the automatic creation of packages in sccm and the creation of folder structures for the packaging process are described in the sections sites, programms and operating system groups.

  .. figure:: _static/SiteConfiguration.png

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Name - de", "German display name of the packaging site"
   "Name - en", "English display name of the packaging site"
   "Site", "Choose a preconfigured site as packaging site here. See the reference below to learn how to configure sites in general."
   "Package Folder", "Depricated!(Feature for SCCM Packages)"
   "Package Name rule", "Depricated!(Feature for SCCM Packages)"
   "Analyse file ext.", "Define what kind of files should be parsed when copy jobs are executed. All files that are copied and that have a type that is defined here will be parsed, meaning when there are Attributenames in curly braces ("{AttributeName}") they will be replaced with the attribut value in the form context. (Possible values:".docx",".xlsx" usw.) "

****************************************************************
Sites
****************************************************************

================================================================
Copy jobs
================================================================

================================================================
Package parameters
================================================================

****************************************************************
Programms
****************************************************************

****************************************************************
Operating System groups
****************************************************************

****************************************************************
Attributes
****************************************************************

****************************************************************
Views
****************************************************************