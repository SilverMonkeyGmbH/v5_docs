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

.. Note:: Example code:
   < sendMail
    from="noreply@phatconsulting.de"
    to="{$MAIL>PackageResponsible}"
    subject="Software Packaging: {RequestManufacturerName} {RequestProductName} ({RequestID})"
    body="Hallo, &lt;br /&gt;bitte Paket und Installationsanleitung hier ablegen: &lt;br /&gt;&quot;{RequestTransferPath}&quot;
			&lt;br /&gt;
			&lt;br /&gt;
			&lt;a href=&quot;http://phatsrv046/treon_r0005/Support/TypeView.aspx?PopUp=true&amp;TypeViewId=46&amp;Id={Id}&quot;&gt;Auftrag einsehen&lt;/a&gt;
			&lt;br /&gt;
			&lt;br /&gt;
			Mit Freundlichen Gr&#252;&#223;en
			&lt;br /&gt;
			Software Packaging Team" />

If you would like to use HTML in the main body as shown in the above example, this has to be encoded.
`This website <http://www.opinionatedgeek.com/DotNet/Tools/HTMLEncode/encode.aspx>`_ will facilitate your work.

For example:

.. image:: _static/image003.png
