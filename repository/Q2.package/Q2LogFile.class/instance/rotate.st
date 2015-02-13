logProtocol
rotate
	"Close the current one. Maybe delete old log files, keeping last n.
	Rename the current with highest number + 1. Open a new file."

	| dir nextName number |
	file close.
	dir := file directory.
	nextName := dir nextNameFor: self class baseName extension: self class extension.
	number := (dir splitNameVersionExtensionFor: nextName) at: 2.
	self deleteOldLogFilesFromNumber: number - (Q2Object settings at: #logFilesKept).
	dir rename: file name toBe: nextName.
	self open: self class filename