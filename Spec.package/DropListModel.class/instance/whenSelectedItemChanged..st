protocol-events
whenSelectedItemChanged: aBlock
	<api: #event>
	"Set a block to perform when the selected item is changed"

	selectionHolder selection whenChangedDo: aBlock