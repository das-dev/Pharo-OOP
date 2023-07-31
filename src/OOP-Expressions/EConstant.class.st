Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #'OOP-Expressions'
}

{ #category : #sample }
EConstant class >> constant3 [

	<sampleInstance>
	^ self new value: 3
]

{ #category : #sample }
EConstant class >> constant5 [

	<sampleInstance>
	^ self new value: 5
]

{ #category : #creation }
EConstant class >> value: aNumber [
	
	^ self new value: aNumber 
]

{ #category : #api }
EConstant >> evaluate [
	
	^ value
]

{ #category : #api }
EConstant >> evaluateWith: aCollection [
	
	^ value
]

{ #category : #printing }
EConstant >> printOn: aStream [

	aStream nextPutAll: value asString
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger 
]
