Class {
	#name : #StringExtensionsTest,
	#superclass : #TestCase,
	#category : #'OOP-String-Extensions-Tests'
}

{ #category : #'tests - fixture' }
StringExtensionsTest >> isograms [
	
	^ #('sea' 'pharo' 'xavier' 'pathfinder')
]

{ #category : #'tests - fixture' }
StringExtensionsTest >> notIsograms [
	
	^ #('' 'pharoao' 'seaside')
]

{ #category : #tests }
StringExtensionsTest >> testIsogramDetection [

	self isograms do: [ :word | self assert: word isIsogram ].
	self notIsograms do: [ :word | self deny: word isIsogram ]
]
