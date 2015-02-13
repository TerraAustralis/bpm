private
moveOnDisk
	"We move our content from temp area into the case area
	if the case now has a name.
	If this is the last file moved we also delete the old directory."

	| tempDir |
	case name ifNotNil: [
		tempDir := case tempAttachmentsDirectory.
		tempDir
			rename: (tempDir fullNameFor: localFileName)
			toBe: (self directory fullNameFor: localFileName).
		tempDir entries isEmpty ifTrue: [
			tempDir containingDirectory deleteDirectory: tempDir localName]]