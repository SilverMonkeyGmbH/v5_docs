Manual for Module "Portals"
=============================================================

.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet! You may cause damage to your system. This article will be finished soon.

.. contents:: *In this article:*
  :local:
  :depth: 3

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





   
