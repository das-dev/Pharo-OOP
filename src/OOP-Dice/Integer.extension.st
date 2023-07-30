Extension { #name : #Integer }

{ #category : #'*OOP-Dice' }
Integer >> d10 [

	^ self d: 10
]

{ #category : #'*OOP-Dice' }
Integer >> d20 [

	^ self d: 20
]

{ #category : #'*OOP-Dice' }
Integer >> d4 [

	^ self d: 4
]

{ #category : #'*OOP-Dice' }
Integer >> d6 [

	^ self d: 6
]

{ #category : #'*OOP-Dice' }
Integer >> d: anInteger [

	| handle |
	handle := DieHandle new.
	self timesRepeat: [ handle addDie: (Die withFaces: anInteger) ].
	^ handle
]
