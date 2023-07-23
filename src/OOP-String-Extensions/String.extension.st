Extension { #name : #String }

{ #category : #'*OOP-String-Extensions' }
String >> isIsogram [

	^ self size isZero not and: [ self asSet size = self size ]
]
