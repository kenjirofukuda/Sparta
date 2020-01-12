I represent a backend specific draw options.

I hold parameters that are used during drawing operations such as fill, stroke, filter, mask and few more.

Public API and Key Messages

- alpha - value by which the mask generated by this  operation is multiplied.
- compositionOperator - The operator that indicates how the source and  destination patterns are blended.
- antialiasMode - the antialias mode used for this drawing operation

   MozDrawOptions new
	alpha: 0.5;
	antialiasGray;
	composeColorBurn
 
Internal Representation and Key Implementation Points.

	MozAntialiasMode and MozCompositionOp define concrete packend values of antialias modes and composition operators