as yet unclassified
user: userName password: pwd
	"Look for this user/pwd combination and return user info or nil"
	| req conn sea result searchResult loginName |

	"The users could be on the form 123apa@domain.com"
	loginName := userName, ((self settings at: #userNameSuffix section: #LDAP) ifNil: ['']).

	conn := LDAPConnection to: (self settings at: #server section: #LDAP) port: (self settings at: #port section: #LDAP) asInteger.
	[req := conn bindAs: loginName credentials: pwd.
	[result := req result] on: LDAPException do:[:ex |(ex asSymbol ~= #LDAPInvalidCredentials) ifTrue: [ex pass]].
	result ifNotNil: [
		sea := conn newSearch: (self settings at: #base section: #LDAP) 
			scope: (LDAPConnection wholeSubtree) 
			deref: (LDAPConnection derefNever) 
			filter: (LDAPFilter with: 'userPrincipalName' equalTo: loginName) 
			attrs: nil wantAttrsOnly: false.
	
		searchResult := sea result
	]]
		ensure: [conn disconnect].

	((result notNil) and: 
		[(searchResult size = 1) and: 
		[(searchResult first attrAt: 'userPrincipalName') = loginName]])
			ifTrue: [Q2Log notice: 'User: ', userName, ' authenticated through LDAP as (', loginName, ')'. 
					^searchResult first]
			ifFalse: [Q2Log notice: 'User: ', userName, ' NOT authenticated through LDAP as (', loginName, ')'.
					 ^nil]