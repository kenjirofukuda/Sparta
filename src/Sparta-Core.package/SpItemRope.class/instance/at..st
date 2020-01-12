accessing
at: anIndex
	((anIndex > self size) or: [ anIndex < 1 ])
		ifTrue: [ self error: 'An index(', anIndex asString. ') is out of range [1..', self size asString,']' ].
	^ item