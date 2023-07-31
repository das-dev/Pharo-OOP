Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #'OOP-Expressions'
}

{ #category : #creation }
ENegation class >> expression: anExpression [
	
	^ self new expression: anExpression 
]

{ #category : #'public access' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : #api }
ENegation >> evaluateWith: aCollection [

	^ (expression evaluateWith: aCollection) negated
]

{ #category : #'instance creation' }
ENegation >> expression: anEConstant [

	expression := anEConstant
]

{ #category : #arithmetic }
ENegation >> negated [

	^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [

	aStream nextPutAll: (expression formatNegation: '-').
	expression printOn: aStream
]
