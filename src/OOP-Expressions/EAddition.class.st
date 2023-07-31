Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #'OOP-Expressions'
}

{ #category : #sample }
EAddition class >> fivePlusThree [

	<sampleInstance>
	^ self new
		  left: (EConstant new value: 5);
		  right: (EConstant new value: 3)
]

{ #category : #api }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : #api }
EAddition >> evaluateWith: aCollection [

	^ (left evaluateWith: aCollection)
	  + (right evaluateWith: aCollection)
]

{ #category : #printing }
EAddition >> operatorString [

	^ ' + '
]
