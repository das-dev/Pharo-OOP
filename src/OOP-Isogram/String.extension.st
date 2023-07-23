Extension { #name : #String }

{ #category : #'*OOP-Isogram' }
String >> isIsogram [

	^ self size isZero not and: [ self asSet size = self size ]
]
