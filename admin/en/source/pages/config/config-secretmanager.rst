.. Copyright 2018 FUJITSU LIMITED

.. _config-secretmanager:

Configuring Secret Manager
--------------------------

By default the secret manager is already configured and installed on the database node. UForge accesses Vault by using a token stored in a file and given in **uforge.conf**. This token should be able to read, write and create tokens on Vault.

Settings regarding the secret manager are stored in ``/etc/UShareSoft/uforge/uforge.conf``:

	* VAULT_PROTO=<The protocol to access Vault server eg: http or https>
	* VAULT_HOST=<The URL to access Vault server eg: http://vault-instance.com>
	* VAULT_PORT=<The port number used to communicate with Vault eg: 8200>
	* VAULT_TOKEN_FILE_PATH=<The file containing the token that the UForge Server should use eg: /etc/UShareSoft/vault/root_token>
	* VAULT_PREFIX=<The prefix used for UForge Server secrets. This will allow multiple UForge servers to use the same Vault server. Should be alpha-numeric without special characters eg: uforge1521559085>

	.. note:: During installation the keys to unseal Vault and the root token are stored in separate files in ``/etc/UShareSoft/vault/``.  Currently, UForge uses the root token in order to facilitate the token management and it is strongly recommended that this Vault instance should not be used to manage other secrets than UForge.

The Vault server must be unsealed and accessible in order to be used by UForge Server.

Vault is by default installed with UForge and the platform supports only this one.
