KB00016 - Configuration Manager Rights
=========================================


.. contents:: `In this article:`
    :depth: 2
    :local:


ConfigMgr WMI API
--------------------------------------------------------------


Import a role via the following xml File:

See :download:`Download SCCM-Sec-Role_SilverMonkey.xml  </_static/SCCM-Sec-Role_SilverMonkey.xml>`.

  .. image:: _static/ConfigurationMgr_Rights_screenshot01.png

After this entitle a corresponding user with this role.

SQL Rights
---------------------------------------------------------------

If you have no direct access to the settings in the user interface, set the activation key in the configuration.xml:

.. warning:: Before changing the Configuration.xml please create a safety-copy!

The configuration.xml is located in the web application server in the following directory:
C:\inetpub\wwwroot\SIM_R***\App_Data

Fill in the field "<activationCode>" with the license key:

   .. image:: _static/Activation_Key_Screenshot3.png

.. warning:: The new license key not be activated until you restart the IIS Service and Restart the Silver Monkey Web Application Server  