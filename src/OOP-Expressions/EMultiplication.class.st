Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #'OOP-Expressions'
}

{ #category : #sample }
EMultiplication class >> fiveTimesThree [

	<sampleInstance>
	^ self new
		  left: (EConstant new value: 5);
		  right: (EConstant new value: 3)
]

{ #category : #api }
EMultiplication >> evaluate [
	
	^ left evaluate * right evaluate
]

{ #category : #api }
EMultiplication >> evaluateWith: aCollection [

	^ (left evaluateWith: aCollection)
	  * (right evaluateWith: aCollection)
]

{ #category : #printing }
EMultiplication >> operatorString [

	^ ' * '
]
