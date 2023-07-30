Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #'OOP-Expressions-Tests'
}

{ #category : #tests }
ENegationTest >> testEvaluate [

	self
		assert:
		(ENegation new expression: (EConstant new value: 5)) evaluate
		equals: -5
]

{ #category : #tests }
ENegationTest >> testNegated [
	
	self assert: (EConstant new value: 5) negated negated evaluate equals: 5
]
