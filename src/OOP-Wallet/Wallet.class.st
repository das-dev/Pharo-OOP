Class {
	#name : #Wallet,
	#superclass : #Object,
	#instVars : [
		'coins'
	],
	#category : #'OOP-Wallet'
}

{ #category : #api }
Wallet >> add: aNumber coinsOfValue: aValue [

	coins add: aValue withOccurrences: aNumber
]

{ #category : #api }
Wallet >> addCoin: aCoin [

	coins add: aCoin
]

{ #category : #api }
Wallet >> biggest [

	^ coins inject: 0 into: [ :a :c | a max: c ]
]

{ #category : #api }
Wallet >> biggestAndRemove [

	| b |
	b := self biggest.
	self removeCoin: b.
	^ b
]

{ #category : #api }
Wallet >> biggestBelow: aNumber [

	^ (coins select: [ :each | each < aNumber ])
		  inject: 0
		  into: [ :a :c | a max: c ]
]

{ #category : #api }
Wallet >> biggestBelowOrEqual: aNumber [

	^ (coins select: [ :each | each <= aNumber ])
		  inject: 0
		  into: [ :a :c | a max: c ]
]

{ #category : #api }
Wallet >> canPay: amountOfMoney [

	^ amountOfMoney <= self money
]

{ #category : #api }
Wallet >> coinsFor: aValue [

	| res |
	res := self class new.
	^ (self canPay: aValue)
		  ifFalse: [ res ]
		  ifTrue: [ self coinsFor: aValue into: res ]
]

{ #category : #api }
Wallet >> coinsFor: aValue into: accuWallet [

	| toRemove |
	[ accuWallet money < aValue ] whileTrue: [
		toRemove := self biggestBelowOrEqual:
			            (aValue - accuWallet money roundTo: 0.01).
		self removeCoin: toRemove.
		accuWallet addCoin: toRemove ].
	^ accuWallet
]

{ #category : #api }
Wallet >> coinsNumber [
	
	^ coins size
]

{ #category : #api }
Wallet >> coinsOfValue: aValue [
	
	^ coins occurrencesOf: aValue
]

{ #category : #initialization }
Wallet >> initialize [

	coins := Bag new
]

{ #category : #api }
Wallet >> money [

	^ (coins inject: 0 into: [ :sum :coin | sum + coin ]) round: 2
]

{ #category : #api }
Wallet >> pirntOn: aStream [

	self printOn: aStream.
	aStream
		nextPutAll: ' (';
		nextPutAll: self money asString;
		nextPutAll: ')'
]

{ #category : #removing }
Wallet >> remove: anInteger coinsOfValue: aNumber [

	anInteger timesRepeat: [ coins remove: aNumber ]
]

{ #category : #removing }
Wallet >> removeCoin: aNumber [

	self remove: 1 coinsOfValue: aNumber
]
