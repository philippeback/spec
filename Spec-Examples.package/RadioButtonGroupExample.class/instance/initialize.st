initialization
initialize

	super initialize.

	container := PanelMorph new.
	container
		changeTableLayout;
		listDirection: #bottomToLeft.
	
	self instantiateMorphs.