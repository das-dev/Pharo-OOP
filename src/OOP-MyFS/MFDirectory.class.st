Class {
	#name : #MFDirectory,
	#superclass : #MFElement,
	#instVars : [
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

	super initialize.
	files := OrderedCollection new
]

{ #category : #accessing }
MFDirectory >> kind [
	
	^ 'directory'
]

{ #category : #printing }
MFDirectory >> printOn: aStream [

	super printOn: aStream.
	aStream << '/'
]

{ #category : #api }
MFDirectory >> search: aString [

	^ files select: [ :file | file search: aString ]
]

{ #category : #accessing }
MFDirectory >> size [

	^ super size
	  + (files inject: 0 into: [ :total :file | total + file size ]) + 2
]
