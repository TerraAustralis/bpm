initialize-release
deleteDirectories

	{(self settings attachmentsDirectory). (self settings tempAttachmentsDirectory)} do: [:name |
		self class deleteContentsOfDirectory: (self getDirectory: name)].

	self class deleteContentsOfDirectory: Q2SwishEWrapper indexDirectory.
	self class deleteContentsOfDirectory: Q2SwishEWrapper tempIndexDirectory.
	self class deleteContentsOfDirectory: Q2Model reportsDirectory