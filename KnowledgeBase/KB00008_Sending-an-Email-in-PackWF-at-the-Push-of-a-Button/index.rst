KB00008 - Sending an Email in PackWF at the Push of a Button
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 1

*************************************
Quickly sending an Email in PackWF
*************************************

XML Format
+++++++++++++++++++++++++++++++

.. image:: _static/image001.png

.. der Code Block funktioniert so nicht... was muss da getan werden?

.. raw:: html
   <head>
   <style>
   p. solid {border: 3px solid black;}
   </style>
   </head>
   <body>
   <p class="solid"> &lsaquo; sendMail
  from="noreply@phatconsulting.de"
  to="{$MAIL>PackageResponsible}"
  subject="Software Packaging: {RequestManufacturerName} {RequestProductName} ({RequestID})"
  body="Hallo, &lt;br /&gt;bitte Paket 
			und Installationsanleitung hier ablegen: &lt;br /&gt;&quot;{RequestTransferPath}&quot;
			&lt;br /&gt;
			&lt;br /&gt;
			&lt;a href=&quot;http://phatsrv046/treon_r0005/Support/TypeView.aspx?PopUp=true&amp;TypeViewId=46&amp;Id={Id}&quot;&gt;Auftrag einsehen&lt;/a&gt;
			&lt;br /&gt;
			&lt;br /&gt;
			Mit Freundlichen Gr&#252;&#223;en
			&lt;br /&gt;
			Software Packaging Team" /&rsaquo; 
    </p>
   </body>

+ Probe