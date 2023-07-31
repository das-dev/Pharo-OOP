Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'OOP-Expressions'
}

{ #category : #api }
EExpression >> evaluateWith: aCollection [

	^ self subclassResponsibility
]

{ #category : #formatting }
EExpression >> formatNegation: negationSign [

	^ negationSign , ''
]

{ #category : #arithmetic }
EExpression >> negated [

	^ ENegation new expression: self
]
