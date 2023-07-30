Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'OOP-Dice'
}

{ #category : #creation }
Die class >> withFaces: anInteger [

	^ self new
		  faces: anInteger;
		  yourself
]

{ #category : #api }
Die >> faces [

	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [

	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [

	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' (';
		nextPutAll: faces asString;
		nextPutAll: ')'
]

{ #category : #api }
Die >> roll [

	^ self faces atRandom 
]
