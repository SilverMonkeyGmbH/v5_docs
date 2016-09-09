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

   "Name, "The general name of the role"
   "Description", "The role description"
   "AD Group", "Here you can define an LDAP Path to an AD Group. All Users of the AD Group will get the configured role."
   "E-Mail", "Depricated!"
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

  .. figure:: _static/SiteConfiguration.png

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
   "Site code", "The site code of your sccm server"
   "SCCM Server", ""
   "Domain", ""
   "Domain account", ""
   "Domain password", ""
   "Impersonation", ""
================================================================
Database settings
================================================================

================================================================
Function settings
================================================================

================================================================
Computer software deployment
================================================================

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
