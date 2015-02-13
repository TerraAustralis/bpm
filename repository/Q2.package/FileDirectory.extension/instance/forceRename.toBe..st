*q2
forceRename: oldFileName toBe: newFileName

	self deleteFileNamed: newFileName ifAbsent: [].
	self rename: oldFileName toBe: newFileName