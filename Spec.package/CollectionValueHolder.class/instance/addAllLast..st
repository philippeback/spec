protocol
addAllLast: aCollection 
	
	| result |
	result := contents addAllLast: aCollection.
	self contentsChanged: aCollection.
	^ result