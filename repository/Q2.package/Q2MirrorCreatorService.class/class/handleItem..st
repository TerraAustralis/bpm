as yet unclassified
handleItem: aMirrorDefinition
	
	| directory magmaSession |
	directory := self getDirectory: 
		(self settings mirrorsDirectory), FileDirectory slash, 'temp', aMirrorDefinition prefix.
	[ self backupDatabaseTo: directory.
	magmaSession := (MagmaLocalLocation path: directory pathName) newSession.
	magmaSession connectAs: 'mirror creator'.
	(Q2MirrorCreator with: aMirrorDefinition from: (magmaSession root at: 'Q2Model')) build. ]
		ensure: [
			magmaSession ifNotNil: [ magmaSession disconnectAndClose ].
			self deleteContentsOfDirectory: directory ]