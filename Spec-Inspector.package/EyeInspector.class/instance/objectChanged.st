event-handling
objectChanged
	"triggered when the inspected object is changed"
	
	self updateList.
	
	text doItReceiver: self object. 
	description doItReceiver: self object.
	