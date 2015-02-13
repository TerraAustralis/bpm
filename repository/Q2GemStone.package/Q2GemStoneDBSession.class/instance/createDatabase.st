gemstone
createDatabase

	Q2Platform beginTransaction.
	UserGlobals at: #Q2Root put: Q2RepositoryRoot new.
	Q2Platform commitTransaction.