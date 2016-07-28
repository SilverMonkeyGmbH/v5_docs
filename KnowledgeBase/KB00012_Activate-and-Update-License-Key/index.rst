KB00012 - Activate and Update License Key
=========================================


.. contents:: `In this article:`
    :depth: 2
    :local:


Activate or update the activation key via the user interface
--------------------------------------------------------------


Silver Monkey Administrator rights are required to activate or update the license key via the user interface. If the "Settings"-Tab is visible, you got the required rights:



  .. image:: _static/Activation_Key_Screenshot1.png

In the settings, fill in the 'Activation code'-field with the license key that is part of the License Certificate.

   .. image:: _static/Activation_Key_Screenshot2.png

After that click the 'Save'-button.

.. warning:: The new license key not be activated until you restart the IIS Service and Restart the Silver Monkey Web Application Server  

Activate or update the activation key in the configuration.xml
---------------------------------------------------------------

If you have no direct access to the settings in the user interface, set the activation key in the configuration.xml:

.. warning:: Before changing the Configuration.xml please create a safety-copy!

The configuration.xml is located in the web application server in the following directory:
C:\inetpub\wwwroot\SIM_R***\App_Data

Fill in the field "<activationCode>" with the license key:

   .. image:: _static/Activation_Key_Screenshot3.png

.. warning:: The new license key not be activated until you restart the IIS Service and Restart the Silver Monkey Web Application Server  