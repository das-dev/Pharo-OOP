Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #'OOP-Expressions-Tests'
}

{ #category : #tests }
ENegationTest >> testCreationWithClassCreationMessage [

	self
		assert: (ENegation expression: (EConstant new value: 5)) evaluate
		equals: -5
]

{ #category : #tests }
ENegationTest >> testEvaluate [

	self
		assert:
		(ENegation new expression: (EConstant new value: 5)) evaluate
		equals: -5
]

{ #category : #tests }
ENegationTest >> testNegated [

	self
		assert: (EConstant new value: 5) negated negated evaluate
		equals: 5
]

{ #category : #tests }
ENegationTest >> testNegatedStructureIsCorrect [

	| exp |
	exp := EConstant new value: 11.
	self assert: exp negated class equals: ENegation.
	self assert: exp negated negated equals: exp
]

{ #category : #tests }
ENegationTest >> testPrinting [

	self
		assert: (EConstant new value: 5) negated printString
		equals: '-5'.
	self
		assert: (EConstant new value: 5) negated negated printString
		equals: '5'
]
