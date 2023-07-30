Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #'OOP-Dice'
}

{ #category : #arithmetic }
DieHandle >> + aDieHandle [

	| handle |
	handle := self class new.
	self dice do: [ :die | handle addDie: die ].
	aDieHandle dice do: [ :die | handle addDie: die ].
	^ handle
]

{ #category : #adding }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [

	^ dice
]

{ #category : #api }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [

	dice := OrderedCollection new
]

{ #category : #api }
DieHandle >> roll [

	^ dice inject: 0 into: [ :total :die | total + die roll ]
]
