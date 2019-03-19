.. Copyright FUJITSU LIMITED 2016-2019

.. _apikeypair-object:

apiKeyPair
==========

Holds the key pair information used as an alternative way to using basic authorization for HTTP requests.

The public key is inserted as a query in the request URI. The secret key is then used to encode the entire URI to create a signature using HMAC_SHA1. This signature is then added to the end of the request URI.

These keys are created automatically by the platform. For more information, refer to :ref:`apikey-api-resources`.

Attributes
~~~~~~~~~~

The list of attributes for ``apiKeyPair`` are:

	* ``name`` (string): name or tag of the API key pair
	* ``description`` (string): description of the API key pair
	* ``publicKey`` (string): the public key string
	* ``secretKey`` (string): the private key string
	* ``uri`` (anyURI): the resource uri of the `APIKeyPair` object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


