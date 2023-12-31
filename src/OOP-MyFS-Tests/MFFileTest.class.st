Class {
	#name : #MFFileTest,
	#superclass : #TestCase,
	#category : #'OOP-MyFS-Tests'
}

{ #category : #tests }
MFFileTest >> testPrinting [ 
	| el1 dOldComics |
	el1 := MFFile new name: 'astroboy'; contents: 'The story of a boy turned into a robot that solved the world'.
	dOldComics := MFDirectory new name: 'oldcomics'.
	dOldComics addElement: el1. 
	self assert: el1 printString equals:
'oldcomics/astroboy'
]

{ #category : #tests }
MFFileTest >> testPrintingNewVway [
	| el1 dOldComics droots |
	el1 := MFFile new name: 'astroboy'; contents: 'The story of a boy turned into a robot that solved the world'.
	dOldComics := MFDirectory new name: 'oldcomics'.
	dOldComics addElement: el1. 
	droots := MFDirectory new name: 'root'.
	dOldComics parent: droots. 
	self assert: el1 printString equals:
'root/oldcomics/astroboy'
]

{ #category : #tests }
MFFileTest >> testSize [

	| el |
	el := MFFile new name: 'babar'; contents: 'Babar et Celeste'.
	self assert: el size equals: 'babar' size + 'Babar et Celeste' size

]
