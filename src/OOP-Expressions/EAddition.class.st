Class {
	#name : #EAddition,
	#superclass : #Object,
	#instVars : [
		'left',
		'right'
	],
	#category : #'OOP-Expressions'
}

{ #category : #'public access' }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : #accessing }
EAddition >> left: anObject [

	left := anObject
]

{ #category : #arithmetic }
EAddition >> negated [

	^ EConstant new value: self evaluate negated
]

{ #category : #accessing }
EAddition >> right: anObject [

	right := anObject
]
