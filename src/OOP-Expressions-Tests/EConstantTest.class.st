Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #'OOP-Expressions-Tests'
}

{ #category : #tests }
EConstantTest >> testCreationWithClassCreationMessage [

	self assert: (EConstant value: 5) evaluate equals: 5
]

{ #category : #tests }
EConstantTest >> testEvaluate [

	self assert: (EConstant new value: 5) evaluate equals: 5
]

{ #category : #tests }
EConstantTest >> testNegated [

	self assert: (EConstant new value: 5) negated evaluate equals: -5
]

{ #category : #tests }
EConstantTest >> testPrinting [

	self assert: (EConstant new value: 5) printString equals: '5'
]
