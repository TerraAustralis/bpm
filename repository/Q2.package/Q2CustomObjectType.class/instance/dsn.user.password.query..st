initialize-release
dsn: d user: u password: p query: q
	loader := (Q2CustomObjectODBCLoader dsn: d user: u password: p query: q).