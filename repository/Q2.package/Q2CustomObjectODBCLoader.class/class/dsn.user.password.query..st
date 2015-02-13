as yet unclassified
dsn: d user: u password: p query: q
	"Create new instance"
	| inst |
	inst := Q2CustomObjectODBCLoader new.
	inst dsn: d; user: u; password: p; query: q.
	^ inst