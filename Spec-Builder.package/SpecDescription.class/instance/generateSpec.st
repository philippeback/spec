processing
generateSpec
	| spec |
	spec := OrderedCollection new.
	spec addAll: self beginSpec.
	adds do: [:source | spec addAll: source ].
	spec addAll: self endSpec.
	^ spec asArray