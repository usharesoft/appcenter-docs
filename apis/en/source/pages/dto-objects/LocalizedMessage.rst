.. Copyright 2017 FUJITSU LIMITED

.. _localizedmessage-object:

LocalizedMessage
================

Localized message returned by the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``LocalizedMessage`` are:

	* ``message`` (string): the message in the request language
	* ``messageId`` (string): the message id. This is a unique id regardless the language. The id will always be the same for the same kind of error.
	* ``parameters``: the parameters that help a client to rebuild the complete message.


