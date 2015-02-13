private
escape: aString
	"Replace single quotes to avoid exploits."

	^aString copyReplaceAll: '''' with: '''\''''' asByteArray