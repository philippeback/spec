transformation
newLayout

	^ SpecLayout composed 
		newColumn: [:c |
			c
				newRow: [:r | 
					r 
						add: #text;
						newColumn: [:c1 | c1 add: #remove ] 
						width: 30 ]
				height: 25;
				newRow: [:r | 
					r 
						newColumn: [:c1 | c1 add: #x0 ] 
						width: 30;
						add: #x0Field;
						newColumn: [:c1 | c1 add: #y0 ] 
						width: 30;
						add: #y0Field;
						newColumn: [:c1 | c1 add: #x1 ] 
						width: 30;
						add: #x1Field;
						newColumn: [:c1 | c1 add: #y1 ] 
						width: 30;
						add: #y1Field ]
				height: 25 ];
		yourself