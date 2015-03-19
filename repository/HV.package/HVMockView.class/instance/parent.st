as yet unclassified
parent
	| req |
	req := request copy.
	req url: 'http://localhost.localdomain/'.
	^ (self species new)
		request: req;
		yourself