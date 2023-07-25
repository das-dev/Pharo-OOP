Class {
	#name : #MFFile,
	#superclass : #Object,
	#instVars : [
		'parent',
		'name',
		'contents'
	],
	#category : #'OOP-MyFS'
}

{ #category : #accessing }
MFFile >> contents: aString [

	contents := aString
]

{ #category : #initialization }
MFFile >> initialize [ 
	
	contents := ''.
]

{ #category : #accessing }
MFFile >> name [

	^ name
]

{ #category : #accessing }
MFFile >> name: aString [

	name := aString
]

{ #category : #accessing }
MFFile >> parent [

	^ parent
]

{ #category : #accessing }
MFFile >> parent: aFile [

	parent := aFile
]

{ #category : #printing }
MFFile >> printOn: aStream [
	
	parent ifNotNil: [ parent printOn: aStream ].
	aStream << name.
]

{ #category : #api }
MFFile >> search: aString [

	^ '*' , aString , '*' match: contents
]

{ #category : #accessing }
MFFile >> size [
	
	^ name size + contents size.
]
