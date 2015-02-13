private
moveAttachments
	"Move attachments from temp directories into the case directory.
	This is typically done only once, when the case gets its name."

	attachments do: [:each | each moveOnDisk]