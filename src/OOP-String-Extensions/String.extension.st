Extension { #name : #String }

{ #category : #'*OOP-String-Extensions' }
String class >> alphabet [
	
	^ 'abcdefghijklmnopqrstuvwxyz'
]

{ #category : #'*OOP-String-Extensions' }
String >> isEnglishPangram [

	^ self isPangramIn: self class alphabet
]

{ #category : #'*OOP-String-Extensions' }
String >> isIsogram [

	^ self size isZero not and: [ self asSet size = self size ]
]

{ #category : #'*OOP-String-Extensions' }
String >> isPangramIn: anAlphabet [

	^ anAlphabet allSatisfy: [ :letter | self includes: letter ]
]
