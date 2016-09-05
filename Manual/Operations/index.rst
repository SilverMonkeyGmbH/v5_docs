Manual for module "Operations"
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 3


.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet! You may cause damage to your system. This article will be finished soon.


************************************************************************************
Hidden settings
************************************************************************************
Hidden settings are configurable features that are not available through the standard configuration UI. 
These settings have to be set within the ``Configuration.xml`` by a text editor.


===============
Alternate New Computer Popup
===============

You can change the behaviour of the new computer "plus" button.
Add the following XML tag to ``//sites/site``:

 .. code-block:: xml
  :linenos:

  <AlternateCreatePopup><![CDATA[javascript: functionXY();]]></AlternateCreatePopup>

**Example**

You have created a special CMDB class for computer import with the form ID ``84``. You can open a popup with the built-in javascript function ``sW``:

 .. code-block:: xml
  :linenos:

  <AlternateCreatePopup><![CDATA[javascript: sW('v_84_','../Support/TypeView.aspx?PopUp=true&TypeViewId=84',650,500,true);]]></AlternateCreatePopup>
