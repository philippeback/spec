protocol
openDialogWithSpecLayout: aSpec
	"Build the widget using the spec name provided as argument and display it into a window"

	(window notNil and: [ self needRebuild not ])
		ifTrue: [
			self needRebuild: true.
			window rebuildWithSpec: aSpec ]
		ifFalse: [
			window := DialogWindowModel new model: self.
			window openWithSpecLayout: aSpec.
			self initializeDialogWindow: window.
			window updateTitle.
			self takeKeyboardFocus ].
		
	^ window