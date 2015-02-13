cases
casesForResponsible: aUser
	"Return a reader for the cases that this user is responsible for."
 
	^cases where: [:r | r read: #responsible at: aUser]
			orSelect: [:each | each responsible = aUser]