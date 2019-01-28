.. Copyright FUJITSU LIMITED 2016-2019

.. _uforgeerror-object:

uforgeError
===========

Holds information on a platform error.

Attributes
~~~~~~~~~~

The list of attributes for ``uforgeError`` are:

	* ``localizedErrorMsg`` (:ref:`LocalizedMessage-object`): the error message (supports i18n)
	* ``requestMethod`` (string): the HTTP request method used in the request
	* ``requestUri`` (string): the HTTP uri resource used in the request
	* ``statusCode`` (int): the HTTP status code
	* ``timestamp`` (dateTime): the timestamp the request was received by the platform


