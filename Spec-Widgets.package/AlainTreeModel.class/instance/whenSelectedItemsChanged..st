protocol-events
whenSelectedItemsChanged: aBlock
	"Set a block to perform when a new item is selected"

	selectionHolder whenChangedDo: aBlock