General Configuration
=============================================================

.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet!
             You may cause damage to your system. This article will be finished soon.

.. contents:: *In this article:*
  :local:
  :depth: 3


****************************************************************
Roles
****************************************************************
Create roles to limit then permissions of defined users. You can either define a group as default group (every user gets this role), or define a specific link to an Active Directory group. You can set persmissions to limit the users access on functions, reports, lists 
or Modules.

Click the "+ New Role"-Button to create a new role: 

  .. figure:: _static/Roles.png


.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Name", "The general name of the role"
   "Description", "The role description"
   "AD Group", "Here you can define an LDAP Path to an AD Group. All Users of the AD Group will get the configured role."
   "E-Mail", "Depricated"
   "Default Group", "If you choose this option every user will get this role."
   "Show functions", "Enables the user to see the functions tab in the main menue."
   "Show Shop", "Enables the role to see the software shop"
   "Show CMDB", "Enables the role to see the CMDB module"
   "Show packaging", "Enables the role to see the packaging tab"
   "Show reports", "Enables the role to see the reports module"
   "Show management", "Enables the role to see the management module"
   "Edit settings", "Enables the role to edit the settings of the SIM instance. Only an option for administrators."
   "Shop Administrator", "Enables the role to edit requests in the software shop "
   "Proces admin", "Enables the role to use the set status function"



.. _General-Configuration-Sites:

****************************************************************
Sites
****************************************************************

Create a new site via the "+ New site"-Button to connect the Packaging Module to your SCCM Site/SCCM DB:

  .. figure:: _static/GeneralSiteConfiguration.png

================================================================
Common settings
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Name - de", "German display name of the site"
   "Name - en", "English display name of the site"
   "Description - de", "German site description"
   "Description - en", "English site description"
   "Site code", "The site code of your sccm Site. (The site code has to be unique to one site)"
   "SCCM Server", "Hostname of the sccm Server."
   "Domain", "Domain of the sccm service account"
   "Domain account", "Name of the sccm service account, this account is used for all functions. ( specify without domain) To see which permissions this accounts need please see the reference at the end of this subsection."
   "Domain password", "Password of the sccm service account"
   "Impersonation", "You have to choose this option if the installation is directly on the sccm server."


================================================================
Database settings
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Database server", "Specify the sccm sql database server. (IP adress or FQDN)"
   "Database name", "Name of the sccm sql database."
   "Authentication", "Choose the type of database authetication: SQL or Windows authentication. If you choose Windows authentication the Domain account that you specified in the Common settings will be used."
   "SQl user", "Name of the sccm sql db service account (If you chose the SQL authentication)"
   "Name - en", "Password of the sccm sql db service account (If you chose the SQL authentication)"


================================================================
Function settings
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Package displayname", "Defines how sim displays the package displayname in an sql syntax. (e.g. Manufacturer+''+Name+''+Version+''+Language)"
   "Package filter", "Defindes an SQL based fitler for the displaying of the packages in the Operations Module"
   "Computer filter", "Defindes an SQL based fitler for the displaying of the computers in the Operations Module"
   "User filter", "Defindes an SQL based fitler for the displaying of the users in the Operations Module"
   "Application filter", "Defindes an SQL based fitler for the displaying of the applications in the Operations Module"
   "Comp.software.query", "SQl Query that is used to detemine the software that is installed on a computer."
   "Comp.app.query", "SQl Query that is used to detemine the applications that are installed on a computer."
   "Coll. group tag", "Documentation pending!"
   "Depl. role tag", "Documentation pending!"
   "Package archive tag", "Documentation pending!"
   "Default program", "Documentation pending!"
   "Pkg.var. name", "Documentation pending!"
   "Pkg.var. value", "Documentation pending!"
   "Pkg.var. locale", "Documentation pending!"
   "App.var. name", "Documentation pending!"
   "App.var. value", "Documentation pending!"
   "App.var locale", "Documentation pending!"
   "No OS check on deployments", "Documentation pending!"
   "Software from variables in prozesses", "Documentation pending!"

================================================================
Computer software deployment
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Parent folder", "Folder that acts as container for all dynamically generated Distribution-Collections (sccm 2012 only) for computers"
   "Limited Collection", "Collection that acts as container for all dynamically generated Distribution-Collections (sccm 2012 only) for computers"
   "Coll.name rule", "Naming rule for the creation of new dynamically generated Advertisements  for computers. You can use the follwing fields as Placeholders : ""{PackageName}"", ""{ProgramName}"",""{AdvertisementType}"",""{OfferType }"" and also all Fields of the ""SMSPackage""-Table in the SCCM   Database. Example: ""CMP PackageName ProgramName AdvertisementType OfferType"""
   "Advert.name rule", "Specify an optional folder for the creation of dynamically generated advertisements  for computers."

================================================================
User software deployment
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Parent folder", "Folder that acts as container for all dynamically generated Distribution-Collections (sccm 2012 only) for users"
   "Limited Collection", "Collection that acts as container for all dynamically generated Distribution-Collections (sccm 2012 only)  for users"
   "Coll.name rule", "Naming rule for the creation of new dynamically generated Advertisements  for users. You can use the follwing fields as Placeholders : ""{PackageName}"", ""{ProgramName}"",""{AdvertisementType}"",""{OfferType }"" and also all Fields of the ""SMSPackage""-Table in the SCCM Database. Example: ""CMP PackageName ProgramName AdvertisementType OfferType"""
   "Advert.name rule", "Specify an optional folder for the creation of dynamically generated advertisements  for users."


****************************************************************
Portals
****************************************************************

****************************************************************
Reports
****************************************************************

****************************************************************
E-Mails
****************************************************************

****************************************************************
Workflows
****************************************************************

****************************************************************
Interfaces
****************************************************************
