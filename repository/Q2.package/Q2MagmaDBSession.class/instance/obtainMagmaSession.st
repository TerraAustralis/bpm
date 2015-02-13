magma
obtainMagmaSession
	"We lazily allocate a session from the pool and let the pool be the finalizer."
	
	magmaSession := self pool getSession.

"	magmaSession allowWriteBarrier: true."
"	magmaSession preferences refreshPersistentObjectsEvenWhenChangedOnlyByMe: true."

	"Here we refer back to our Q2Session object."
	self preferencesSignalProxyMaterializations: self session signalProxyMaterializations.

	self updateReadStrategy.

	^ magmaSession