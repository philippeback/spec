protocol
addInLayout: aColumn

	aColumn 
		add: self text getText asSymbol
		origin: (self x0Field getText squeezeOutNumber @ self y0Field getText squeezeOutNumber)
		corner: (self x1Field getText squeezeOutNumber @ self y1Field getText squeezeOutNumber)