Class {
	#name : #EConstant,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'OOP-Expressions'
}

{ #category : #'public access' }
EConstant >> evaluate [
	
	^ value
]

{ #category : #arithmetic }
EConstant >> negated [

	^ ENegation new expression: self
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger 
]
