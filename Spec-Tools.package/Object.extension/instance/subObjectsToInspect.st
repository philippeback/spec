*Spec-Tools
subObjectsToInspect

	^ (1 to: self class allInstVarNames size) collect: [:i | self instVarAt: i ]