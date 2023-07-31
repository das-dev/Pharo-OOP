Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #'OOP-Expressions'
}

{ #category : #api }
EVariable >> evaluateWith: aCollection [

	^ aCollection at: id
]

{ #category : #accessing }
EVariable >> id: aSymbol [

	id := aSymbol
]

{ #category : #printing }
EVariable >> printOn: aStream [

	aStream nextPutAll: id asString
]
