Extension { #name : #String }

{ #category : #'*OOP-String-Extensions' }
String class >> alphabet [
	
	^ 'abcdefghijklmnopqrstuvwxyz'
]

{ #category : #'*OOP-String-Extensions' }
String >> detectAllMissingLettersFor: anAlphabet [
	"Return all missing letter to make a pangram of the receiver 
	in the context of a given alphabet. 
	Return empty array otherwise"

	^ (anAlphabet reject: [ :letter | self includes: letter ]) asSet
]

{ #category : #'*OOP-String-Extensions' }
String >> detectFirstMissingLetter: anAlphabet [
	"Return the first missing letter to make a pangram of the receiver 
	in the context of a given alphabet. 
	Return <space> otherwise"

	^ anAlphabet
		  detect: [ :letter | (self includes: letter) not ]
		  ifNone: [ Character space ]
]

{ #category : #'*OOP-String-Extensions' }
String >> isEnglishPangram [
	"Returns true is the receiver is a pangram i.e., that it uses all
	the characters of a given alphabet."

	^ self isPangramIn: self class alphabet
]

{ #category : #'*OOP-String-Extensions' }
String >> isIsogram [
	"Returns true if the receiver is an isogram, i.e., a word using no
	repetitive character."

	^ self size isZero not and: [ self asSet size = self size ]
]

{ #category : #'*OOP-String-Extensions' }
String >> isPangramIn: anAlphabet [
	"Returns true is the receiver is a pangram i.e., that it uses all
	the characters of a given alphabet."

	^ anAlphabet allSatisfy: [ :letter | self includes: letter ]
]
