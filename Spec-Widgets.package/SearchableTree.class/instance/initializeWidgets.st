initialization
initializeWidgets

	self instantiateModels: #(
		tree 		AlainTreeModel
		inputField	TextInputFieldModel
		label 		LabelModel
		button 		ButtonModel).
			
	tree rootNodeHolder: [ :item | 
		FilteringTreeNode with: item model: tree ].
			
	button 
		label: '';
		icon: (UITheme current iconNamed: #smallFindIcon);
		state: false;
		action: [ inputField accept ].
			
	label 
		text: 'Search:';
		color:Color black.
	
	inputField
		ghostText: 'search';
		entryCompletion: nil;
		acceptOnCR: true