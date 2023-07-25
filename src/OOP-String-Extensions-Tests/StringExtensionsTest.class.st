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

{ #category : #'tests - fixture' }
StringExtensionsTest >> notPangrams [

	^ #( 'The quick brown fox jumps over the dog' )
]

{ #category : #'tests - fixture' }
StringExtensionsTest >> pangrams [

	^ #( 'The quick brown fox jumps over the lazy dog' )
]

{ #category : #tests }
StringExtensionsTest >> testDetectAllMissingLetter [

	self
		assert:
			('the uick brown fox jumps over the lzy dog'
				 detectAllMissingLettersFor: String alphabet)
		equals: 'aq' asSet.
	self
		assert: ('the quick brown fox jumps over the lzy do'
				 detectAllMissingLettersFor: 'abcdefghijklmnopqrstuvwxyz')
		equals: 'ag' asSet.
	self
		assert:
			('the uick brwn fx jumps ver the lazy dg'
				 detectAllMissingLettersFor: 'abcdefghijklmnopqrstuvwxyz')
		equals: 'oq' asSet.
	self
		assert: ('the quick brown fox jumps over the lazy dog'
				 detectAllMissingLettersFor: String alphabet)
		equals: '' asSet
]

{ #category : #tests }
StringExtensionsTest >> testDetectFirstMissingLetter [

	self
		assert: ('the quick brown fox jumps over the lzy dog'
				 detectFirstMissingLetter: String alphabet)
		equals: $a.
	self
		assert: ('the uick brown fox jumps over the lazy dog'
				 detectFirstMissingLetter: String alphabet)
		equals: $q.
	self
		assert: ('the quick brown fox jumps over the lazy dog'
				 detectFirstMissingLetter: String alphabet)
		equals: Character space.
]

{ #category : #tests }
StringExtensionsTest >> testEnglishPangramDetection [

	self pangrams do: [ :phrase | self assert: phrase isEnglishPangram ].
	self notIsograms do: [ :phrase | self deny: phrase isEnglishPangram ]
]

{ #category : #tests }
StringExtensionsTest >> testEnglishPangramInAlphabetDetection [

	self assert:
		('les poux papas et les poux pas papas' isPangramIn: 'apouxetl').
	self deny:
		('les poux papas et les poux pas papas' isPangramIn: String alphabet)
]

{ #category : #tests }
StringExtensionsTest >> testIsPalindrome [

	self assert: 'ete' isPalindrome.
	self assert: 'kayak' isPalindrome.
	self deny: 'etat' isPalindrome.
	self assert: 'Elu par cette crapule' isPalindrome
]

{ #category : #tests }
StringExtensionsTest >> testIsogramDetection [

	self isograms do: [ :word | self assert: word isIsogram ].
	self notIsograms do: [ :word | self deny: word isIsogram ]
]
