Class {
	#name : #EMultiplication,
	#superclass : #Object,
	#instVars : [
		'left',
		'right'
	],
	#category : #'OOP-Expressions'
}

{ #category : #'public access' }
EMultiplication >> evaluate [
	
	^ left evaluate * right evaluate
]

{ #category : #accessing }
EMultiplication >> left: anObject [

	left := anObject
]

{ #category : #arithmetic }
EMultiplication >> negated [

	^ EConstant new value: self evaluate negated
]

{ #category : #accessing }
EMultiplication >> right: anObject [

	right := anObject
]
