Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'OOP-Expressions'
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: leftExpression right: rightExpression [

	^ self new
		  left: leftExpression;
		  right: rightExpression
]

{ #category : #'instance creation' }
EBinaryExpression class >> right: rightExpression left: leftExpression [
	
	^ self left: leftExpression right: rightExpression 
]

{ #category : #api }
EBinaryExpression >> evaluate [

	^ self subclassResponsibility
]

{ #category : #formatting }
EBinaryExpression >> formatNegation: negationSign [

	^ negationSign , ' '
]

{ #category : #accessing }
EBinaryExpression >> left: anObject [

	left := anObject
]

{ #category : #printing }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EBinaryExpression >> right: anObject [

	right := anObject
]
