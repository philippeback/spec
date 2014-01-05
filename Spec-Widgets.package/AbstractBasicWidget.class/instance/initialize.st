initialization
initialize
	"Initialization code for AbstractBasicWidget"

	super initialize.

	helpHolder := nil asValueHolder.
	borderWidth := 0 asValueHolder.
	borderColor := Color transparent asValueHolder.
	enabledHolder := true asValueHolder.
	dragEnabled := false asValueHolder.
	dropEnabled := false asValueHolder.
	dragTransformationBlock := [ :item :source | item ] asValueHolder.
	wantDropBlock := [ :draggedItem :event :source | self dropEnabled ] asValueHolder.
	acceptDropBlock := [ :draggedItem :event :source | ] asValueHolder.
	
	helpHolder whenChangedDo: [:string | 
		self widget ifNotNil: [:w | w setBalloonText: string ]].
	
	borderWidth whenChangedDo: [:int | 
		self widget ifNotNil: [:w | w borderWidth: int ]].
	
	borderColor whenChangedDo: [:color | 
		self widget ifNotNil: [:w | w borderColor: color ]].
	
	enabledHolder whenChangedDo: [:b |
		self widget ifNotNil: [:w | w enabled: b ]].
	
	dragEnabled whenChangedDo: [:b |
		self widget ifNotNil: [:w | w dragEnabled: b ]].
	
	dropEnabled whenChangedDo: [:b |
		self widget ifNotNil: [:w | w dropEnabled: b ]].