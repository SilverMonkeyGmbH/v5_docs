KB00013 - Activating and Updating License Key
============================================

.. contents:: *In this article:*
    :depth: 2
    :local:

-------

Activating or Updating the Activation Key via the User Interface
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. Note:: Silver Monkey Administrator rights are required to activate or update the license key via the user interface. If the "Settings"-Tab is visible, you have the required rights.

          .. image:: _static/Activation_Key_Screenshot1.png

In the settings, fill in the field named 'Activation code' with the license key that is part of the License Certificate.

   .. image:: _static/Activation_Key_Screenshot2.png

Afterwards click the 'Save'-button.

.. Note:: The new license key cannot be activated until you restart the IIS Service and  the Silver Monkey Web Application Server!  


Activating or Updating the Activation Key in the configuration.xml
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
If you do not have direct access to the settings in the user interface, set the activation key in the configuration.xml:

.. Warning:: Before changing the Configuration.xml please create a safety-copy!

The configuration.xml is located in the web application server in the following directory:
"C:\inetpub\wwwroot\SIM_R***\App_Data" .

Fill in the field "<activationCode>" with the license key:

   .. image:: _static/Activation_Key_Screenshot3.png

.. Note:: The new license key not be activated until you restart the IIS Service and Restart the Silver Monkey Web Application Server  