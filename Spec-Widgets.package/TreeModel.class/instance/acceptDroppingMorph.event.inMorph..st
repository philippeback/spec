drag and drop - private
acceptDroppingMorph: draggedMorph event: event inMorph: source
	| item |
	
	item := self widget
		ifNil:  [ 0 ]
		ifNotNil: [:w | w itemFromPoint: event position ].

	^ self acceptDropBlock valueWithEnoughArguments: { draggedMorph. event. source. item }