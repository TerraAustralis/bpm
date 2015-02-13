database
obtainDBSession

	dbSession := Q2Platform current obtainDBSession.
	dbSession session: self.
	^ dbSession.