synch
flush
	"Flush all formValues we have.
	We also need to remove forms that are missing."

	| target |
	formValues do: [:each | each flush].
	target := self target.
	target holdsForms ifTrue: [target keepForms: (formValues collect: [:fv | fv form editForm])]