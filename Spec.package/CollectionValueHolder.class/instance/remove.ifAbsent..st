protocol
remove: oldObject ifAbsent: absentBlock

	| result |
	result := contents remove: oldObject ifAbsent: absentBlock.
	self contentsChanged: oldObject.
	^ result