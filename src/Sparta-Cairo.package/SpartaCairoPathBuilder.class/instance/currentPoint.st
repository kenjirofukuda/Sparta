path commands
currentPoint
	"Point the current subpath is at - or where the next subpath will start
	if there is no active subpath."
	
	| aX aY aPoint |
	
	"since we use pointers to doubles we must create a copy of original values to not scratch them"
	aX := ExternalAddress allocate: (FFIExternalType resolveType: 'double') externalTypeSize.
	aY := ExternalAddress allocate: (FFIExternalType resolveType: 'double') externalTypeSize.

	self primCurrentPointX: aX Y: aY.
	aPoint := (aX doubleAt: 1)@ (aY doubleAt: 1).
	
	aX free.
	aY free.
	
	^ aPoint