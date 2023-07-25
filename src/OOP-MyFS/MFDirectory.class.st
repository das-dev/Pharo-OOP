Class {
	#name : #MFDirectory,
	#superclass : #Object,
	#instVars : [
		'parent',
		'name',
		'files'
	],
	#category : #'OOP-MyFS'
}

{ #category : #api }
MFDirectory >> addElement: aFile [
	
	aFile parent: self.
	files add: aFile.
]

{ #category : #accessing }
MFDirectory >> children [
	
	^ files
]

{ #category : #initialization }
MFDirectory >> initialize [

	files := OrderedCollection new.
]

{ #category : #accessing }
MFDirectory >> name [

	^ name
]

{ #category : #accessing }
MFDirectory >> name: aString [

	name := aString
]

{ #category : #accessing }
MFDirectory >> parent [

	^ parent
]

{ #category : #accessing }
MFDirectory >> parent: aFile [

	parent := aFile
]

{ #category : #printing }
MFDirectory >> printOn: aStream [

	parent ifNotNil: [ parent printOn: aStream ].
	aStream << name.
	aStream << '/'
]

{ #category : #api }
MFDirectory >> serch: aString [

	^ files select: [ :file | file search: aString ]
]

{ #category : #accessing }
MFDirectory >> size [

	^ name size
	  + (files inject: 0 into: [ :total :file | total + file size ]) + 2
]
