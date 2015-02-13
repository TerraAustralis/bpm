database
noDb
	"Non-local repositories can't answer #isRepository."

	^ Q2Platform platformIsGemStone not and: [
		dbSession isNil and: [ self location isLocal and: [ self location isRepository not ]]]