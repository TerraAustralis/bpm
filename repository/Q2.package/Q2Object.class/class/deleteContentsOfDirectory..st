files
deleteContentsOfDirectory: dir
	"Delete the contents of given directory."

	dir directoryNames do: [:dn | (dir directoryNamed: dn) recursiveDelete].
	dir deleteLocalFiles