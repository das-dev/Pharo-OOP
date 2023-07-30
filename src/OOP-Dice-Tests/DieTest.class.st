Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #'OOP-Dice-Tests'
}

{ #category : #tests }
DieTest >> testCreationIsOk [

	self assert: (Die withFaces: 20) faces equals: 20
]

{ #category : #tests }
DieTest >> testInitializeIsOk [
	
	self assert: Die new faces equals: 6
]

{ #category : #tests }
DieTest >> testRolling [

	| d4 d6 |
	d4 := Die withFaces: 4.
	10 timesRepeat: [ self assert: (d4 roll between: 1 and: 4) ].

	d6 := Die new.
	10 timesRepeat: [ self assert: (d6 roll between: 1 and: 6) ].

]
