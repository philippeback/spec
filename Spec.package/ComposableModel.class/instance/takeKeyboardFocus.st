private-focus
takeKeyboardFocus

	self focusOrder ifNotEmpty:[:focus | ^ focus first takeKeyboardFocus ].
	^ self widget ifNotNil: [:m | m takeKeyboardFocus ]