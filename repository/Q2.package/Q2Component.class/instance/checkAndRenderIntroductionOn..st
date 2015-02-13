rendering
checkAndRenderIntroductionOn: html 

	self currentUserSettings showIntroTexts ifTrue: [
		html div class: 'intro'; with: [
			self renderIntroductionOn: html]]