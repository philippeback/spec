protocol
removeAt: index

	| result |
	result := contents removeAt: index.
	self contentsChanged: result.
	^ result