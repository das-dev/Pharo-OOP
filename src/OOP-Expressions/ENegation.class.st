Class {
	#name : #ENegation,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'OOP-Expressions'
}

{ #category : #'public access' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : #'instance creation' }
ENegation >> expression: anEConstant [

	expression := anEConstant
]

{ #category : #arithmetic }
ENegation >> negated [
	
	^ self class new expression: self
]
