instance creation
debugContext: aContext fromProcess: aProcess

	^ self debugSession: (self spanNewSessionForContext: aContext fromProcess: aProcess)
