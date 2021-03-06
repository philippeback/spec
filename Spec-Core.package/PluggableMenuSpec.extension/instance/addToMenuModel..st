*Spec-Core
addToMenuModel: aMenuModel
	| groups tmp |
	
	groups := OrderedCollection new.
	aMenuModel title: self label.
	
	tmp := OrderedCollection new.
	self items do: [ :each | 
		tmp add: each.
		each separator
			ifTrue: [ 
				groups add: tmp copy.
				tmp removeAll ] ].
	tmp ifNotEmpty: [ groups add: tmp copy ].
	
	groups do: [ :each | aMenuModel 
		addGroup: [ :group | each do: [ :spec | 
			group addItem: [ :item | item fromSpec: spec ] ] ] ]