Class {
	#name : #MFFile,
	#superclass : #MFElement,
	#instVars : [
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

	super initialize.
	contents := ''
]

{ #category : #accessing }
MFFile >> kind [
	
	^ 'file'
]

{ #category : #api }
MFFile >> search: aString [

	^ '*' , aString , '*' match: contents
]

{ #category : #accessing }
MFFile >> size [

	^ super size + contents size
]
