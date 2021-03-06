menu
customMenuActions
	^ [:aMenu :currentGroup |
		currentGroup addItem: [ :item |
			item
				name: 'Dive Into' translated;
				action: [ self diveIntoSelectedObject  ];
				shortcut: $d command mac | $d alt win | $d alt unix].
	
		(history hasPrevious or: [ history hasNext ])
			ifTrue: [ 
				aMenu addGroup: [ :aGroup |
					history hasPrevious ifTrue: [ 
						aGroup addItem: [ :item |
							item
								name: 'Back' translated;
								action: [ self inspectPrevious ];
								shortcut: $[ command mac | $[ alt win | $[ alt unix ] ].
							
					history hasNext ifTrue: [ 
						aGroup addItem: [ :item |
							item
								name: 'Forward' translated;
								action: [ self inspectNext ];
								shortcut: $] command mac | $] alt win |  $] alt unix  ] ] ] ] ]