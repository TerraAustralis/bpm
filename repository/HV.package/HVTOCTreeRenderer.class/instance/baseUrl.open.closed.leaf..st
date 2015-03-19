initialize-release
baseUrl: base open: openDoc closed: closedDoc leaf: leafDoc
	openDoc ifNotNil: [openImageUrl := base, openDoc fileName].
	closedDoc ifNotNil: [closedImageUrl := base, closedDoc fileName].
	leafDoc ifNotNil: [leafImageUrl := base, leafDoc fileName]