accessing
model
	 
	^model ifNil: [model := Q2Model currentInSession: self dbSession]