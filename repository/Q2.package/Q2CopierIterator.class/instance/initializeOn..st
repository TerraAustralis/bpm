private
initializeOn: anObject
	announcer := AXAnnouncer new.
	stack := OrderedCollection with: anObject.
	parentStack := OrderedCollection with: nil.
	announcementStack := OrderedCollection with: (Q2RootElement with: anObject).
	visitedObjects := IdentitySet new.