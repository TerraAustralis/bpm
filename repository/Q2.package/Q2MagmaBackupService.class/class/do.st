as yet unclassified
do
	"self do"

	| dir |
	dir := self getDirectory: (self settings backupDirectory).
	self deleteContentsOfDirectory: dir. " we delete the directory before calling backupDatabaseTo: to avoid a warning. "
	self session backupDatabaseTo: dir