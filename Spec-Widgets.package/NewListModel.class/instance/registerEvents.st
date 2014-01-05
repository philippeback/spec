initialize
registerEvents

	items whenChangedDo: [ self changed: #getItems ].
	
	headerTitle whenChangedDo: [ :title | 
		self changed: #getHeaderTitle.
		self widget ifNotNil: [ :w | w hasHeader: title notNil ] ].
	deSelectOnReclick whenChangedDo: [ :bool | self widget ifNotNil: [ :w | w deSelectOnReclick: bool ] ].
	isMultipleSelection whenChangedDo: [ :bool | self widget ifNotNil: [ :w | w isMultipleSelection: bool ] ].
	unselectOnChange whenChangedDo: [ :bool | self widget ifNotNil: [ :w | w unselectOnChange: bool ] ]