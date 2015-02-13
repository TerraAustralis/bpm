value and cache
cacheValueFrom: aValue component: fieldComponent
	"We make sure we send release to any new attachments
	that we now are dropping. It could also be done with
	finalization."

	| newCache oldCache |
	newCache := aValue copy.
	oldCache := fieldComponent getCache. 
	oldCache ifNotNil: [(oldCache difference: newCache) do: [:att | att releaseExternal]].
	^newCache