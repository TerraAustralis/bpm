as yet unclassified
allUsers
	"Return a Dictionary of key/value dictionaries - each representing a user in LDAP.
	The key is the id field."

	| req conn search users attrs |
	attrs := Dictionary new.
	attrs at: 'surname' put: (self settings at: #surname section: #LDAPfields).
	attrs at: 'givenname' put: (self settings at: #givenname section: #LDAPfields).
	attrs at: 'email' put: (self settings at: #email section: #LDAPfields).
	attrs at: 'id' put: (self settings at: #id section: #LDAPfields).
	attrs at: 'username' put: (self settings at: #username section: #LDAPfields).
	
	conn := LDAPConnection to: (self settings at: #server section: #LDAP) port: (self settings at: #port section: #LDAP) asInteger.
	[req := conn bindAs: (self settings at: #adminUser section: #LDAP) credentials: (self settings at: #adminPassword section: #LDAP).
	req wait.
	
	search := conn newSearch: (self settings at: #userFilter section: #LDAP) 
		scope: (LDAPConnection wholeSubtree) 
		deref: (LDAPConnection derefNever) 
		filter: (LDAPFilter with: 'objectclass') 
		attrs: attrs values wantAttrsOnly: false.

	users := Dictionary new.
	search result do: [:item | | user |
		user := Dictionary new.
		attrs keysAndValuesDo: [:k :v |
			user at: k put: (item attrAt: v ifAbsent: [''])].		
		users at: (user at: 'id') put: user]]

			ensure: [conn disconnect].
	^users