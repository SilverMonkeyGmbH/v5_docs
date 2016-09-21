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
Create roles to limit the permissions of predefined users. You can either define a group as default group (every user gets this role), or define a specific link to an Active Directory group. You can set permissions to limit the users access on functions, reports, lists 
or modules.

Click the "+ New Role"-Button to create a new role: 

  .. figure:: _static/Roles.png


.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Name", "The general name of the role."
   "Description", "The role description."
   "AD Group", "Here you can define an LDAP Path to an AD Group. All Users of the AD Group will get the configured role."
   "E-Mail", "Depricated."
   "Default Group", "If you choose this option every user will get this role."
   "Show functions", "Enables the user to see the functions tab in the main menue."
   "Show Shop", "Enables the role to see the software shop."
   "Show CMDB", "Enables the role to see the CMDB module."
   "Show packaging", "Enables the role to see the packaging tab."
   "Show reports", "Enables the role to see the reports module."
   "Show management", "Enables the role to see the management module."
   "Edit settings", "Enables the role to edit the settings of the SIM instance. Only an option for administrators."
   "Shop Administrator", "Enables the role to edit requests in the software shop. "
   "Proces admin", "Enables the role to use the set status function."



.. _General-Configuration-Sites:

****************************************************************
Sites
****************************************************************

Create a new site via the "+ New site"-Button to connect the Packaging Module to your SCCM Site/SCCM database:

  .. figure:: _static/GeneralSiteConfiguration.png

================================================================
Common Settings
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Name - de", "Displayed German name of the site."
   "Name - en", "Displayed English name of the site."
   "Description - de", "German site description."
   "Description - en", "English site description."
   "Site code", "The site code of your SCCM Site. (The site code has to be unique to one site)."
   "SCCM Server", "Hostname of the SCCM Server."
   "Domain", "Domain of the SCCM service account."
   "Domain account", "Name of the sccm service account. This account is used for all functions. (specify without domain) To see which permissions this accounts needs please see the reference at the end of this subsection."
   "Domain password", "Password of the SCCM service account."
   "Impersonation", "You have to choose this option if the installation is directly on the SCCM server."


================================================================
Database settings
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Database server", "Specify the SCCM SQL database server. (IP adress or FQDN)"
   "Database name", "Name of the SCCM SQL database."
   "Authentication", "Choose the type of database authetication: SQL or Windows authentication. If you choose Windows authentication the domain account specified in the common settings will be used."
   "SQl user", "Name of the SCCM SQL database service account (if you chose SQL authentication)."
   "Name - en", "Password of the SCCM SQL database service account (if you chose SQL authentication)."


================================================================
Function Settings
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Package displayname", "Defines how SIM displays the package displayname in an SQL syntax. (e.g. Manufacturer+''+Name+''+Version+''+Language)"
   "Package filter", "Defines an SQL based fitler for the displaying of the packages in the Operations Module."
   "Computer filter", "Defines an SQL based fitler for the displaying of the computers in the Operations Module."
   "User filter", "Defindes an SQL based fitler for the displaying of the users in the Operations Module."
   "Application filter", "Defines an SQL based filter for the displaying of the applications in the Operations Module."
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
Computer Software Deployment
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,58

   "Parent folder", "Folder that acts as a container for all dynamically generated Distribution-Collections (SCCM 2012 only) for computers."
   "Limited Collection", "Collection that acts as a container for all dynamically generated Distribution-Collections (SCCM 2012 only) for computers."
   "Coll.name rule", "Naming rule for the creation of new dynamically generated advertisements for computers. You can use the follwing fields as Placeholders : ""{PackageName}"", ""{ProgramName}"",""{AdvertisementType}"",""{OfferType }"" and also all fields of the ""SMSPackage""-table in the SCCM   database. Example: ""CMP PackageName ProgramName AdvertisementType OfferType"""
   "Advert.name rule", "Specify an optional folder for the creation of dynamically generated advertisements for computers."

================================================================
User Software Deployment
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,57

   "Parent folder", "Folder that acts as a container for all dynamically generated Distribution-Collections (SCCM 2012 only) for users.
   "Limited Collection", "Collection that acts as a container for all dynamically generated Distribution-Collections (SCCM 2012 only) for users."
   "Coll.name rule", "Naming rule for the creation of new dynamically generated advertisements for users. You can use the follwing fields as Placeholders : ""{PackageName}"", ""{ProgramName}"",""{AdvertisementType}"",""{OfferType }"" and also all fields of the ""SMSPackage""-table in the SCCM database. Example: ""CMP PackageName ProgramName AdvertisementType OfferType"""
   "Advert.name rule", "Specify an optional folder for the creation of dynamically generated advertisements for users."


****************************************************************
Portals
****************************************************************

Portals are used to define start or overview pages. A portal can have multiple columns with multiple widgets. Every portal can be restricted to a role. You can use different widgets here: SQL Querys, Links and Reports.


================================================================
Column
================================================================

.. csv-table:: 
   :header: "Property","Description","Example"
   :widths: 25,57,15

   "Border top", "Property that defines the vertical top-margin of the column.", "25"
   "Border right", "Property that defines the horizontal right-margin of the column.", "25"
   "Border bottom", "Property that defines the vertical bottom-margin of the column.", "25"
   "Border left", "Property that defines the horizontal left-margin of the column.", "25"


.. note:: Do not let your widget XML-definition start with a blank space! This is a common error - the widget will not function properly. 

==============================================================   
Widgets
==============================================================

------------------
SQL Query
------------------

  .. code-block:: xml
    :linenos:

    <sqlQuery
      database=""
      query="SELECT TOP 10 SysDisplayName, Name, Id AS _Id  
      FROM Computer"
      link="Support/TypeView.aspx?TypeView=Computer               
      Details&Id={_Id}"
      size="400;250"
      refresh="true"
     />

------------------
Links
------------------

  .. code-block:: xml
    :linenos:

    <links>
     <link de="Google de" en="Google en" url="http://www.google.de" />
     <link de="Google de" en="Google en" url="http://www.google.de" />
    </links>

------------------
localreport
------------------


  .. code-block:: xml
    :linenos:

    <localReport    
    id=""
    name="Issues" 
    />


================================================================
Portal Rights 
================================================================

To set a portal right, click the "+ portal right"-button and choose the desired role, finally click save.  


****************************************************************
Reports
****************************************************************

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



****************************************************************
E-Mails
****************************************************************

Configure mails for workflows or forms here.


================================================================
Email-Group
================================================================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,57

   "Name - de", "German name for the email-group"
   "Name - en", "English name for the email-group"

================================================================
Email
================================================================


  .. figure:: _static/Email_general.png


------------------
Condition
------------------

Define a condition that decides wheather or not the email should be sent. If you leave this empty the email will always be sent. Concatenate rules by using "AND". The following operators are avalible in the condition field:

.. csv-table:: 
   :header: "Operator","Description"
   :widths: 40,57

   "=", "equals"
   "<", "less than"
   ">", "more than"
   "!", "doesnt equal"

Furthermore, you can use palceholders that reference attributes of the associated Workflow as seen in the following example: 

  .. code-block:: xml
    :linenos:

    {Manufacturer}=Adobe AND {Product}!Reader

In this case the email will be sent if: The Workflow parameter "Manufacturer" is filled with the value "Adobe" and the parameter "Product" does not equal "Reader".

------------------
Recipient
------------------

Defines the recipient of the email. You can specify a concrete adresse such as "support@silvermonkey.net" or use diffrent placeholders:

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,57

   "{TicketResponsible}", "Takes the value of the specified attribute in the workflow context."
   "{$MAIL>IssueEditor}", "Takes the email adress of the specified Active Directory field in the workflow context."
   "{@OBJ.PartnerResponsiblePerson.Email}", "Takes an entry out of another table/class that is connected to the main class and Workflow context. Syntax: {@OBJ.Table.Column} "

Example:

  .. code-block:: xml
    :linenos:

    {@OBJ.PartnerResponsiblePerson.Email}

Seperate multiple recipients with a semicolon.

------------------
Subject
------------------

The subject in the email. You can use the same placeholders as you do in the recipient.

Example: 

  .. code-block:: xml
    :linenos:

    Your request was canceled {RequestManufacturerName}_{RequestProductName}_{RequestProductVersion}_{@OBJ.PackageLanguage.CodeISO6391}_{Architecture}_{@OBJ.PackageType.Character}{PackageID}

------------------
Message
------------------

The message of the email. You can use the same placeholders as you do in the recipient.

Example: 

  .. code-block:: xml
    :linenos:

    <font face="Arial" size="2">
    The software package: {RequestManufacturerName}_{RequestProductName}_{RequestProductVersion}_{@OBJ.PackageLanguage.CodeISO6391}_{Architecture}_{@OBJ.PackageType.Character}{PackageID} was canceled.
    <br>
    <br> 
    <br>Rejection Reason: {Rejectionreason}
    <br>
    <br> If you are missing any information please look up the history of the request or get in 
    <br> contact with the Software Change Manager.
    <br>
    <br> For more details about the package see packaging factory:  click <a href="{@OBJ.PackagingClient.TreonURL}/Support/TypeView.aspx?PopUp=true&TypeViewId=46&Id={Id}">this link</a>
    </font>


****************************************************************
Workflows
****************************************************************

Configure workflows for the CMDB and the packaging process.


.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,57

   "Name - de", "German name of the workflow."
   "Name - en", "English name of the workflow."



================================================================
Status
================================================================

.. note:: Change the position of a status with the green arrows in the status definition. 


.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,57

   "Name - de", "German name of the Status."
   "Name - en", "English name of the Status."
   "Token", "Define the roles that have the permission to edit Forms in this Status. You can define multiple roles seperated with a semicolon."
   "Plausibility", "Define a condition that decides wheather or not the buttons to proceed to this status will be displayed. See the Condition Section in the previous chapter for more details."
   "Only visible when status is active", "Enable this option to hide the status in the form until the form has reached this status. (Usefull for rejected status)"

------------------
Follower
------------------

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,57

   "Follower", "Choose another workflow status as follower."
   "Function text - de", "German label text of the button to change the status to the one specified in the follower field. If you enter nothing the label of the targetet workflow status will be displayed."
   "Function text - en", "English Label Text of the button to change the status to the one specified in the follower field. If you enter nothing the label of the targetet workflow status will be displayed."
   "Message - de", "Define the german text of the message box that will be displayed when the status is changed to the follower."
   "Message - en", "Define the english text of the message box that will be displayed when the status is changed to the follower."
   "E-mail group", "Choose an email group that will be triggerd when the status is changed to the follower. This has the advantage that conditions from the email group are enabled (See the previos chapter for details regarding emails)."
   "E-Mail recipient", "Manually choose an email recipient. (See the previos chapter for details). "
   "E-Mail subject", "Manually choose an email subject. (See the previos chapter for details). "
   "E-Mail message", "Manually choose an email message. (See the previos chapter for details). "
   "Reject", "Choosing this option changes the appearance of the follower-button and creates a popup that will appear when the button is clicked."


****************************************************************
Interfaces
****************************************************************

The interfaces provide a simple and efficient way to fill or to equalize the SIM  database with data from SCCM or other databases. This is best done through the SQL Merge command. Unless the databases are not on the same Microsoft SQL Server, the source server has to be made familiar to the SIM database server via a linkserver:


  .. figure:: _static/linkserver1.png

  
  .. figure:: _static/linkserver2.png

  Example of the adjustment of computer objects from SCCM into SIM database. New computers are automatically created, existing ones are updated and obsolete ones are deleted in SIM:

  .. code-block:: xml
    :linenos:

    MERGE treonV5.dbo.Computer AS t
    USING (
          SELECT ResourceID, Name0
          FROM   [SCCM_Servername].SMS_P01.dbo.v_R_System
          WHERE  ISNULL(Obsolete0,0) = 0
    ) AS s
    ON s.ResourceId = t.ItemKey

    WHEN MATCHED THEN
          UPDATE SET t.ItemKey = s.ResourceId,
                     t.Name = s.Name0,
                     t.SysDisplayName = s.Name0

    WHEN NOT MATCHED THEN
          INSERT ( ItemKey,
                   Name,
                   SysDisplayName )
          VALUES ( s.ResourceId,
                   s.Name0,
                   s.Name0 )

    WHEN NOT MATCHED BY SOURCE THEN
            DELETE;


  Example of the adjustment of software objects from SCCM into SIM database. New packages are automatically created, existing ones are updated and obsolete ones are deleted in SIM:


  .. code-block:: xml
    :linenos:

    MERGE treonV5.dbo.Software AS t
    USING (
          SELECT PkgId, Name, Version, Language, Manufacturer
          FROM   [SCCM_Servername].SMS_P01.dbo.SMSPackages
          WHERE  PackageType=0
    ) AS s
    ON s.PkgId = t.PkgId COLLATE Latin1_General_CI_AS

    WHEN MATCHED THEN
          UPDATE SET t.Manufacturer = s.Manufacturer,
                     t.Product = s.Name,
                     t.Version = s.Version,
                     t.Language = s.Language,
                     t.PkgId = s.PkgId,
                     t.SysDisplayName = s.Manufacturer + ' ' + s.Name + ' ' + s.Version

    WHEN NOT MATCHED THEN
          INSERT ( Manufacturer,
                   Product,
                   Version,
                   Language,
                   PkgId,
                   SysDisplayName )
          VALUES ( s.Manufacturer,
                   s.Name,
                   s.Version,
                   s.Language,
                   s.PkgId,
                   s.Manufacturer + ' ' + s.Name + ' ' + s.Version )

    WHEN NOT MATCHED BY SOURCE THEN
            DELETE;


The interfaces is accessed via the CMDB function menu or called directly via the page "Support / ExecuteInterface.aspx. A specified interface can be started right away, with the URL parameter" Interface ". Several interfaces can be successively launched by lining up several interface names seperated with semicolons. This process is suitable to be called in a Windows scheduled task.