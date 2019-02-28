.. Copyright FUJITSU LIMITED 2016-2019

.. _comment-object:

comment
=======

Holds the information of a comment or question from an user.

Attributes
~~~~~~~~~~

The list of attributes for ``comment`` are:

	* ``abused`` (boolean): boolean flag to determine if this comment has been flagged as abusive (the message content could be inappropriate
	* ``abuseUri`` (anyURI): the uri resource to use to flag that this comment is inappropriate
	* ``likesUri`` (anyURI): the uri resource to use to like this comment
	* ``loginName`` (string): the username of the user who has posted this comment
	* ``message`` (string): the comment content
	* ``nbAbused`` (int): the number of times this comment has been flagged as inappropriate
	* ``nbDislike`` (int): the number of dislikes for this comment
	* ``nbLike`` (int): the number of likes for this comment
	* ``photo`` (:ref:`logo-object`): the avatar/photo of the user who has posted this comment
	* ``rating``: the overall rating for this comment (used when this comment is a review)
	* ``replies``: a list of replies to this comment (list of :ref:`comment-object` objects)
	* ``replyUri`` (anyURI): the uri resource to post a reply to this comment
	* ``tags`` (string): a string of tags for this comment
	* ``type``: the comment type
	* ``uri`` (anyURI): the uri resource of this comment
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


