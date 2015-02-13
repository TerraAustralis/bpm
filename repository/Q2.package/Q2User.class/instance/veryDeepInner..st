mirror
veryDeepInner: copier

	id := id copy.
"	transactions _ transactions veryDeepCopyWith: copier."
	name := name copy.
	description := description copy.
	wikiPage := wikiPage copy.
	password := password copy.
	processes := processes collect: [:p | p id ].
	"isAdmin"
	person := person veryDeepCopyWith: copier.
"	defaultProcess _ 
	signature _ signature veryDeepCopyWith: copier.
	dateFormat _ dateFormat veryDeepCopyWith: copier.
	timeZone
	timeFormat
	filters
	subscriptions
	userLists
	caseLists"
	settings := settings veryDeepCopyWith: copier.