prepare image
setRepositories
	"Set the repositories we use in the dev image."

	| rg |
	MCRepositoryGroup default initialize addRepository: (MCHttpRepository
		location: 'http://squeak.krampe.se'
		user: ''
		password: '');
	addRepository: (MCHttpRepository
		location: 'http://www.squeaksource.com/MagmaTester'
		user: ''
		password: '');
	addRepository: (MCHttpRepository
		location: 'http://squeak.saltypickle.com/GraphViz/'
		user: ''
		password: '');
	addRepository: (MCHttpRepository
		location: 'http://www.squeaksource.com/Seaside'
		user: ''
		password: '');
	addRepository: (MCHttpRepository
		location: 'http://www.squeaksource.com/Monticello'
		user: ''
		password: '');
	addRepository: (MCHttpRepository
		location: 'http://mc.gjallar.se'
		user: ''
		password: '').
	MCWorkingCopy allInstances do: [:wc |
		rg := wc repositoryGroup.
		(rg repositories select: [:repo | (repo isKindOf: MCFtpRepository) and: [ repo description beginsWith: 'ftp://gjallar@']]) do: [:toRemove | rg removeRepository: toRemove]]