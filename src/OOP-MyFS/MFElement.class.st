Class {
	#name : #MFElement,
	#superclass : #Object,
	#instVars : [
		'name',
		'parent'
	],
	#category : #'OOP-MyFS'
}

{ #category : #api }
MFElement >> describe [

	^ 'I''m a ' , self kind , ' named ' , self name
]

{ #category : #accessing }
MFElement >> kind [
	
	^ 'element'
]

{ #category : #accessing }
MFElement >> name [

	^ name
]

{ #category : #accessing }
MFElement >> name: aString [

	name := aString
]

{ #category : #accessing }
MFElement >> parent [

	^ parent
]

{ #category : #accessing }
MFElement >> parent: anElement [

	parent := anElement
]

{ #category : #printing }
MFElement >> printOn: aStream [

	parent ifNotNil: [ parent printOn: aStream ].
	aStream << name
]

{ #category : #api }
MFElement >> search: aString [

	^ self subclassResponsibility
]

{ #category : #accessing }
MFElement >> size [

	^ name size
]
