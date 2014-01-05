protocol
ensureExtentFor: old
	self extent
		ifNotNil: [ :ex | 
			(old respondsTo: #extent:)
				ifTrue: [ old extent: ex ] ].
	self initialExtent
		ifNotNil: [ :ex | 
			(old respondsTo: #extent:)
				ifTrue: [ old extent: ex ] ]