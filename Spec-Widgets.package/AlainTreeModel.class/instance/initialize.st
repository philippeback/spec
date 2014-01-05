initialize
initialize
	"Initialization code for AlainTreeModel"

	super initialize.

	treeModel := SpecTreeModel model: self.

	childrenBlockHolder := [ {} ] asValueHolder.
	rootsHolder := {} asValueHolder.
	selectionHolder := {} asValueHolder.
	menuBlockHolder := [] asValueHolder.
	displayBlock := [:item | item printString ] asValueHolder.
	
	autoMultiSelection := false asValueHolder.
	columnInset := 5 asValueHolder.
	doubleClick := [] asValueHolder.
	evenRowColor := Color veryLightGray muchLighter asValueHolder.
	isCheckList := false asValueHolder.
	keyStroke := [ :key | ] asValueHolder.
	multiSelection := false asValueHolder.
	oddRowColor := Color white asValueHolder.
	preferedPaneColor := Color white asValueHolder.
	resizerWidth := 2 asValueHolder.
	rowInset := 2 asValueHolder.
	rootNodeHolder := [:item | DefaultSpecTreeNode with: item model: treeModel ] asValueHolder.
	columns := { MorphTreeColumn new
		rowMorphGetSelector: [:node | (self wrapItem: node item) asMorph ] } asValueHolder.

	isCheckList whenChangedDo: [ :boolean | self widget ifNotNil: [ :w | w isCheckList: boolean ] ].

	treeUpdated := nil asValueHolder.

	self registerEvents