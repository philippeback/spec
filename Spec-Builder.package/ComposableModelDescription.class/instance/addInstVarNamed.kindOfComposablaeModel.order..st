protocol
addInstVarNamed: aString kindOfComposablaeModel: aComposableModelClass order: order

	self addInstVarNamed: aString kindOf: aComposableModelClass.
	self addCodeToInitialize: aString, ' := self instantiate: ', aComposableModelClass name order: order