initialize
initializeWidgets

	self instantiateModels: #(
		toolbar OkCancelToolbar
		categoryField TextInputFieldModel
		categoryLabel LabelModel
		classNameTextField TextInputFieldModel
		classNameLabel LabelModel ).
	
	categoryField autoAccept: true.
	classNameTextField autoAccept: true.
	
	classNameLabel text: 'Class name:'.
	categoryLabel text: 'Category:'.