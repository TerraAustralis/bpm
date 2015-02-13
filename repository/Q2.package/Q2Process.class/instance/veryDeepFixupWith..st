copying
veryDeepFixupWith: deepCopier

	super veryDeepFixupWith: deepCopier.

	"already copied through forms"
	createCaseForm := deepCopier references at: createCaseForm ifAbsent: [createCaseForm].
	modifyCaseForm := deepCopier references at: modifyCaseForm ifAbsent: [modifyCaseForm].

	"already copied through roles"
	alertedRole := deepCopier references at: alertedRole ifAbsent: [alertedRole].
	assignedRole := deepCopier references at: assignedRole ifAbsent: [assignedRole].
	interestedRole := deepCopier references at: interestedRole ifAbsent: [interestedRole].
	reporterRole := deepCopier references at: reporterRole ifAbsent: [reporterRole].
	responsibleRole := deepCopier references at: responsibleRole ifAbsent: [responsibleRole].
	sourceRole := deepCopier references at: sourceRole ifAbsent: [sourceRole].

	"already copied through linkTypes"
	sameAsLink := deepCopier references at: sameAsLink ifAbsent: [sameAsLink].
	parentOfLink := deepCopier references at: parentOfLink ifAbsent: [parentOfLink].