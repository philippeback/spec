specs
defaultSpec
	<spec>
	^ {#Panel. #changeProportionalLayout. #'add:'. {#(#model 'classNameLabel' ). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@0) corner: (0@25)}}. #'add:'. {#(#model 'classNameTextField' ). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@30) corner: (0@65)}}. #'add:'. {#(#model 'categoryLabel' ). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@70) corner: (0@95)}}. #'add:'. {#(#model 'categoryField' ). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@100) corner: (0@135)}}. #add:. {#(#model #toolbar ). #layout:. {#LayoutFrame. #fractions:offsets:. (0@1) corner: (1@1). (0@ -25) corner: (0@0)}}. #vResizing:. #spaceFill. #hResizing:. #spaceFill}