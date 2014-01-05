protocol
retrieveClassSymbolFor: aSymbol

	^ self bindings
		ifNil: [ self retrieveDefaultClassSymbolFor: aSymbol ]
		ifNotNil: [:bdg | bdg classSymbolFor: aSymbol ifAbsent: [ self retrieveDefaultClassSymbolFor: aSymbol ]]