shortcuts
registerMethodShortcuts: aWidget

	aWidget bindKeyCombination: $b command toAction: [ self selectedSelector ifNotNil:[ self browseMethodFull ]].
	aWidget bindKeyCombination: $d command toAction: [ self selectedSelector ifNotNil:[ self forgetMessage ]].
	aWidget bindKeyCombination: $m command toAction: [ self selectedSelector ifNotNil:[ self browseImplementorsOfMessages ]].
	aWidget bindKeyCombination: $n command toAction: [ self selectedSelector ifNotNil:[ self browseSendersOfMessages ]].
	aWidget bindKeyCombination: $v command toAction: [ self selectedSelector ifNotNil:[ self browseVersions ]].
	aWidget bindKeyCombination: $x command toAction: [ self selectedSelector ifNotNil:[ self removeMessage ]].