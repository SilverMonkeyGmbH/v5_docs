Changelog
==============================


IssueID	Version	Modul	ChangelogDescription
000068	5.19.00	v5 System Operations	Computer refresh applications ("packages") is not displaying updates (and task sequences) as requested. 
000069	5.18.00	v5 System Operations	It is now possible to use a GUID to create a new Client in the system. 
000072	5.19.00	v5 Rollout Center	Fixed a bug that caused a "LoadXML Error" when trying to add an active directory user to a list view. 
000073	5.18.00	v5 Basis Modul	Fixed a bug which caused an empty window to be displayed, when the Website wasnt used for a certain time because of a timeout of the Internet Information Server. 
000074	5.20.00	v5 Software Packaging	The "Execute" Command is not displayed anymore if there is no token. 
000076	5.19.00	v5 Rollout Center	The Connections icon is now correctly displayed.
000077	5.19.00	v5 Software Packaging	Applications get created automatically within a Folder structure, as in packages. 
000080	5.18.00	v5 Software Packaging	Adjusted formular design. 
000083	5.18.00	v5 Basis Modul	Session timeout adjusted to 3 days to prevent Website from displaying a blank page. 
000090	5.18.00	v5 Software Packaging	Dynamic paths do work properly again. It is possible to support multiple wrappers via copyjob. 
000091	5.18.00	v5 Software Packaging	Changes in the Package System are now working properly again.
000094	5.18.00	v5 Software Packaging	The Create Collection command now supports nested text names for the destination folder. If the folder does not exist it will be created. 
000098	5.19.00	v5 Rollout Center	Adjusted import export dialog. 
000101	5.19.00	v5 Software Packaging	PackWF/RolloutDB formular now got differentiated CSS classes.
000121	5.20.00	v5 Software Packaging	The Email function has been upgraded, it is now possible to set Email templates and connect them to Workflows. Emails are sent when the Email Condition is positive. 
000124	5.20.00	v5 Software Packaging	SCCM gateway has been extended it now supports  AppVDeployment Types. 
000125	5.20.00	v5 Basis Modul	New variable SiteURL now exists,it can be used  to reference on an Email dynamically. 
000136	5.20.00	v5 Basis Modul	Fixed bugs that affected the saving of the Formulardata when using the execute function. 
000139	5.20.00	v5 Basis Modul	The number of connections will now be displayed in the list view. 
000145	5.30	v5 Basis Modul	Text fields are now saved as VarChar (10000) in the database. 
000148	5.30	v5 Basis Modul	Fixed a bug that caused the "link" button to disappear if the displayname reaches a certain length. 
000149	5.31	v5 Basis Modul	Enabled a "Read Only" parameter for the whole formula/workflow/role.
000150	5.31	v5 Basis Modul	ID columns can be displayed in lists, now. 
000156	5.32	v5 System Operations	Fixed issue with the addon software (XML error). 
000160	5.48	v5 System Operations	it is now possible to choose the MAC addresses by drop down in the "Refresh Computer" dialog.
000169	5.39	v5 System Operations	The refresh computer function no longer ignores the computer template. 
000171	5.39	v5 Software Packaging	Fixed a bug in the SCCM user kontext. 
000173	5.39	v5 Basis Modul	Fixed a bug that prohibited the "packet commandline Install" field to be displayed correctly.
000175	5.39	v5 Basis Modul	Defining impersonation as Shared, decimate multiple registrations. 

Stabilization of impersonation. 

Minimized database accesses to spare connection pool. 
000176	5.39	v5 Basis Modul	Enabled triggering multiple domains in the active directory fields. 

Extended filter of the formular attributes. 


000177	5.39	v5 Basis Modul	Optimized database Access: Adjusted impersonification. 
000179	5.39	v5 Basis Modul	Adjusted HW Hey algorithm. The Domain of the IIS System is now in use. 

From this Version on ,customers need a new activation code.
000180	5.39	v5 System Operations	Adjusted the filter of the applications in packaging infos: Ist now possible to sort applications by f.e. sysStatus in the operations modul.
000181	5.39	v5 Software Packaging	Expanded CreateApp/Package by security scopes. 
000182	5.39	v5 Software Packaging	Treon recognizes if there is an app with the same title already in the Create App dialoge and uses the existing app to create a new deployment type. 
000183	5.39	v5 Software Packaging	CreateApp/Package is now availible through Windows Management Instrumentation. SQL connection is not required. 
000184	5.39	v5 Basis Modul	Defined filters for active Directory users globally. Filter supports variables from the Job table. 
000185	5.41	v5 Basis Modul	It is possible to activate the date picker in english, now. 
000187	5.41	v5 Basis Modul	Fixed a bug that caused varchars bigger than 800 not to be saved. 
000191	5.41	v5 Basis Modul	Treon variables now support referenced objects ( for example: {@OBJ.PackageLanguage.CodeISO6392}).
000194	5.41	v5 Basis Modul	Adjusted dropdown fields, enabled the option to edit the specified column. 
000196	5.41	v5 Basis Modul	Fixed Timing problem through MARS, parallel database queries function properly again. 
000199	5.52	Web Service	Extended the function of "Create Client" by"overwrite=true" that is Controlling if there is a Computer with the same Name/MAC and whether or not it should be deleted. 
000209	5.41	v5 Basis Modul	It's now possible to set a datalist attribute as valid. 
000226	5.51	v5 Rollout Center	Dynamic target collections and primary users are avalible now. 
000227	5.52	v5 System Operations	Primary users can be managed through objects, now. 
000245	5.41	v5 Self Service	Fixed a bug in the shop module that prohibits adding members and deploying. 
000253	5.41	Sonstiges	It's possible to use the FORMAT function when referencing on an @OBJ function. 
000259	5.53	Sonstiges	Count of all connected SCCM sites visible in configuration
000267	5.60	v5 Basis Modul	Automatic update of configuration.xml is possible, now
000268	5.53	v5 Basis Modul	Import durch XLSX immer gleicher SysDisplayName
010271	5.55	v5 Self Service	Es können die Shop Produkte dynamisch aus den PackagingJob Datensätzen generiert werden
010272	5.56	v5 System Operations	Keep Primary User when using Computer Exchange/Refresh
010273	5.57	v5 Self Service	Fixed issue with missing user impersonation for local SCCM connections.
010274	5.57	v5 Self Service	Fixed issue with Shop references to Applications. Now, a permanent ID is used and Applications can be edited after adding them to the shop.
010281	5.58	v5 System Operations	Primary User Support for CreateComputer
010283	5.59	v5 Basis Modul	Fixed issue: Import/Export does not support XLSX files with multiple sheets
010287	5.60	v5 Software Packaging	Created a new XML attribute called "hide" for form elements.
020287	5.60	v5 Software Packaging	Fixed issue: Error while creating Application Connot access AppVPackageFolder
020288	5.60	v5 Software Packaging	Fixed issue with using wrong credentials for CopyFiles command
020289	5.60	Sonstiges	Fixed issue cannot create application (Unhandled exception).
020293	5.61	Sonstiges	Cancel Button in "addUserToDevice" works normal.
020294	5.61	Sonstiges	Bug with the multiselector in CMDB was resolved.
020295	5.61	Sonstiges	The list at the left side will be updated right when objects are removed in CMDB
020296	5.61	v5 System Operations	More than one Computer objects can be selected to be assigned to a user.
020298	5.61	v5 Basis Modul	Changed GUI to new Silver Monkey CI
020300	5.61	v5 Software Packaging	If the collection already exists the "createCollection" command will add a deployment.
020301	5.61	v5 Software Packaging	Change information from existing applications with createApplication command.
020303	5.61	v5 System Operations	Domain will be also shown with the username in Operations
020305	5.61	v5 Basis Modul	new filter for CMDB
020306	5.61	v5 System Operations	More than one site in operations module.
020312	5.62	v5 Software Packaging	Fixed issue that CreateApplication looked not for newest application title for checking existence.
020318	5.63	v5 Software Packaging	removePlus für Verbindungen verfügbar
020324	5.63	v5 Basis Modul	-Selected Day will be highlighted
020328	5.63	v5 Software Packaging	SetDefaultOnLoad also working for Objects and Data Lists
020329	5.63	v5 System Operations	Customized View Create Computer From Old (with customized Variables)
020333	5.63	v5 Basis Modul	Object reference allows 3 Arguments. Example: @OBJ.Package.Language.ISO631
020337	5.64	v5 Software Packaging	TextBoxes allow clickable paths
020367	5.63	v5 Software Packaging	<list> elements support link to another views with dynamic variables
020368	5.63	v5 Software Packaging	hide Connections available. Only useful when having a list right after it.
020370	5.66	v5 Software Packaging	NULL
020372	5.63	v5 Software Packaging	Now possible to set Logical condition for a certain step. Use "plausibility"
020378	5.64	v5 Basis Modul	CMDB Function for the mass Import of systems
020380	5.65	v5 Self Service	Added SCCM Fast Channel Option for Shop
020381	5.65	v5 Self Service	Added DirectLink for Shop
020384	5.66	v5 Software Packaging	NULL
020385	5.66	v5 Self Service	Support for SCCM Fast Channel
020386	5.66	v5 Basis Modul	Advanced Filter Options for MultiSelect
020390	5.66	v5 Software Packaging	SetDefaultOnSave korrigiert
020393	5.66	v5 Basis Modul	Sim can execute scripts on SQL Events (oncreate, afterDelete, etc).
020397	5.66	v5 Software Packaging	Step Conditions (Plausibility) also Support roles
020400	5.66	v5 Software Packaging	SendMail ist jetzt automatisch über SIM möglich ohne SQL Trigger. OnUpdate (save oder statuswechseln)
020401	5.67	Web Service	Added Feature for dynamic resolve of Computer variables to deployment
020403	5.66	v5 Basis Modul	checkCondition für ExecuteTriggerEvent ist jetzt zusammen mit Email jetzt möglich
020405	5.69	v5 Software Packaging	createCollection loaded wrong definition from other view
020406	5.69	v5 Software Packaging	createCollection now support for directMembership (add&remove) 
020407	5.69	v5 Basis Modul	User Variable more output types:
$USERNAME
$ESCAPEDUSERNAME
020408	5.69	v5 Software Packaging	NULL
020409	5.69	v5 Software Packaging	new Entry Button with label
NewLinkLabel="Label"
020410	5.69	v5 Software Packaging	copyFiles keeps encoding of copied files
020411	5.69	v5 Software Packaging	Optimized Comment icon
020412	5.69	v5 System Operations	Application dialog shows sccm package id