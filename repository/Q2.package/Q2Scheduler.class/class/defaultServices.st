services
defaultServices
	"All services except those that:
		- depend on external systems being configured, like POP3, SMTP, ODBC etc
		- are not 'normal' like for example migration services."

	^self allServices
		removeAll: Q2MigrationService allSubclasses;
		remove: Q2CustomObjectSyncService;
		remove: Q2NotificationSenderService;
		remove: Q2NotificationRunService;
		remove: Q2LdapUserUpdateService;
		remove: Q2NotificationDigestService;
		remove: Q2PopService;
		yourself