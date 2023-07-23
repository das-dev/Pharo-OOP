Class {
	#name : #IsogramTest,
	#superclass : #TestCase,
	#category : #'OOP-Isogram-Tests'
}

{ #category : #'tests - fixture' }
IsogramTest >> isograms [
	
	^ #('sea' 'pharo' 'xavier' 'pathfinder')
]

{ #category : #'tests - fixture' }
IsogramTest >> notIsograms [
	
	^ #('' 'pharoao' 'seaside')
]

{ #category : #tests }
IsogramTest >> testIsogramDetection [

	self isograms do: [ :word | self assert: word isIsogram ].
	self notIsograms do: [ :word | self deny: word isIsogram ]
]
