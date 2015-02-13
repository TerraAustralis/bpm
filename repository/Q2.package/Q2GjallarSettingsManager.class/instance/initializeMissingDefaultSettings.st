defaults
initializeMissingDefaultSettings
  "Add missing settings in the current in-image ini-file.
	Do not change the file on disk. All values are Strings
	but you can also use true and false."

  | section |
  {('globals'
    ->
      {(#'systemName' -> 'NextRound').
      (#'logo' -> 'nextRound.png').
      (#'serverHost' -> 'localhost').
      (#'serverPort' -> '8081').	"This is the server's web UI listener port."
      (#'serverMirrorHost' -> 'localhost').
      (#'serverMirrorPort' -> '8090').	"This is the server's listener port for downloads of mirror databases."
      (#'serverSoapHost' -> 'localhost').
      (#'serverSoapPort' -> '8823').	"This is the server's listener port for soap requests."
      (#'attachmentsDirectory' -> 'attachments').
      (#'tempAttachmentsDirectory' -> 'tempattachments').
      (#'resourcesDirectory' -> 'resources').
      (#'reportsDirectory' -> 'reports').
      (#'mirrorsDirectory' -> 'mirrors').
      (#'indexDirectory' -> 'index').
      (#'tempIndexDirectory' -> 'tempindex').
      (#'useIndexing' -> true).
      (#'inifileSeconds' -> '300').
      (#'calendarImage' -> 'calendar.gif').
      (#'passwordReminder' -> false).
      (#'logFilesKept' -> '5').
      (#'logFileSize' -> '10000000').
      (#'useKeepAliveUpdater' -> true).
      (#'graphFormat' -> 'png').
      (#'useExternalResources' -> false)}).
  ('scheduler'
    ->
      {(#'customObjectSyncSeconds' -> (2 * 3600) asString).
      (#'customObjectLoadInterval' -> 600 asString).
      (#'rescheduleSeconds' -> '60')}).
  ('email'
    ->
      {(#'watchdogEmail' -> '').
      (#'rootEmail' -> 'root@nextround.co').
      (#'systemEmail' -> 'system@nextround.co').
      (#'systemEmailAccount' -> '').
      (#'systemEmailPassword' -> '').
      (#'smtpServer' -> 'localhost')}).
  ('magma'
    ->
      {(#'backupSeconds' -> 3600 asString).
      (#'databaseDirectory' -> 'magma').
      (#'backupDirectory' -> 'magmabackup').
      (#'casesCached' -> 1000 asString).
      (#'magmaHost' -> 'localhost').
      (#'magmaListenPort' -> '13010')}).
  ('LDAP'
    ->
      {(#'updateSeconds' -> (24 * 3600) asString).
      (#'server' -> 'activedirectory.yourowndomain.org').
      (#'port' -> '3268').
      (#'base' -> 'OU=Users,OU=City,OU=SE,OU=Acme,DC=acme,DC=net').
      (#'userFilter' -> 'OU=Users,OU=City,OU=SE,OU=Acme,DC=acme,DC=net').
      (#'adminUser' -> 'usernameInLDAP').
      (#'adminPassword' -> 'password').
      (#'autoCreateUser' -> false).
      (#'useForAuthentication' -> false).
      (#'userNameSuffix' -> '')}).
  ('LDAPfields'
    ->
      {(#'surname' -> 'sn').
      (#'givenname' -> 'givenName').
      (#'email' -> 'mail').
      (#'id' -> 'objectGUID').
      (#'username' -> 'sAMAccountName')}).
  ('PlugIns' -> {(#'externalIssueSoapServer' -> 'localhost')}).
  ('Localization' -> {(#'defaultLanguage' -> 'en')})}
    do: [ :sectionAss | 
      section := iniFile section: sectionAss key.
      sectionAss value
        do: [ :assoc | section at: assoc key ifAbsent: [ section at: assoc key put: assoc value ] ] ]