as yet unclassified
renderOnViewCase: html component: comp
| viewCase canWriteCase recentCases tooltip |
	viewCase := comp parent.
	canWriteCase := viewCase case writeCheck notNil.
	tooltip := canWriteCase ifTrue: [ 'Link current case with other' ] ifFalse: [ 'You do not have write permission on the case to use this function.' ].
	html text: 'Add link of type'; space.
	html select
		size: 1;
		list: viewCase case linksOutValues;
			labels: [:tr | tr name ];
		callback: [:value | comp valueAt: #linktype put: value ] .
	html space; text: 'to case'; space.
	html textInput size: 12; value: nil; callback: [:value | comp valueAt: #number put: value].
	recentCases := viewCase parent recentlyViewedCasesExcept: [:case | case ~= viewCase case].
	recentCases ifEmpty: [
		html space; text: 'or'; space.
		recentCases addFirst: nil.
		html select
			size: 1;
			list: recentCases;
			labels: [:case | case isNil ifTrue: [ '<pick from recent>' ] ifFalse: [case processAndName ] ];
			callback: [:value | comp valueAt: #recentCase put: value]].
	html submitButton text: 'Link'; disabled: canWriteCase not; tooltip: tooltip;
		callback: [| link toCase |
			toCase := (comp valueAt: #recentCase) ifNil: [ self model findCaseNamed: (comp valueAt: #number) ].
			(toCase notNil and: [ (comp valueAt:#linktype) notNil ] ) ifTrue: [
				viewCase updateViewAfter: [
					link := Q2Link from: viewCase case to: toCase type: (comp valueAt: #linktype).
					self model addLink: link ]]]