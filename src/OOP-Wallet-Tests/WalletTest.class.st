Class {
	#name : #WalletTest,
	#superclass : #TestCase,
	#category : #'OOP-Wallet-Tests'
}

{ #category : #tests }
WalletTest >> testAddOneCoin [

	| w |
	w := Wallet new.
	w addCoin: 0.50.
	self assert: (w coinsOfValue: 0.5) equals: 1.
	self assert: w money equals: 0.5
]

{ #category : #tests }
WalletTest >> testBiggestAndRemoveCoin [

	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 2 coinsOfValue: 0.20.
	w add: 2 coinsOfValue: 0.10.
	w biggestAndRemove.
	self assert: w money equals: 1.1
]

{ #category : #tests }
WalletTest >> testBiggestCoins [

	| w |
	w := Wallet new.
	w add: 10 coinsOfValue: 0.50.
	w add: 10 coinsOfValue: 0.20.
	w add: 10 coinsOfValue: 0.10.
	self assert: w biggest equals: 0.50
]

{ #category : #tests }
WalletTest >> testBiggestCoinsBelow [

	| w |
	w := Wallet new.
	w add: 10 coinsOfValue: 0.50.
	w add: 10 coinsOfValue: 0.20.
	w add: 10 coinsOfValue: 0.10.
	self assert: (w biggestBelow: 1) equals: 0.50.
	self assert: (w biggestBelow: 0.5) equals: 0.20.
	self assert: (w biggestBelow: 0.48) equals: 0.20.
	self assert: (w biggestBelow: 0.20) equals: 0.10.
	self assert: (w biggestBelow: 0.10) equals: 0.
]

{ #category : #tests }
WalletTest >> testCanPay [
	
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	w add: 1 coinsOfValue: 0.02.
	w add: 5 coinsOfValue: 0.05.
	self assert: (w canPay: 2) not.
	self assert: (w canPay: 0.50).
	self assert: (w canPay: 0.51).
]

{ #category : #tests }
WalletTest >> testCoins [

	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	self assert: w coinsNumber equals: 5
]

{ #category : #tests }
WalletTest >> testCoinsAddition [
	
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	self assert: (w coinsOfValue: 0.5) equals: 2
]

{ #category : #tests }
WalletTest >> testCoinsAdditionIsWorking [

	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 6 coinsOfValue: 0.50.
	self assert: (w coinsOfValue: 0.5) equals: 8
]

{ #category : #tests }
WalletTest >> testCoinsForPaying [

	| w paid |
	w := Wallet new.
	w add: 5 coinsOfValue: 0.50.
	w add: 5 coinsOfValue: 0.20.
	w add: 5 coinsOfValue: 0.10.
	paid := w coinsFor: 2.5.
	self assert: paid money equals: 2.5.
	self assert: (paid coinsOfValue: 0.5) equals: 5
]

{ #category : #tests }
WalletTest >> testCoinsForPayingWithOtherCoins [

	| w paid |
	w := Wallet new.
	w add: 5 coinsOfValue: 0.50.
	w add: 5 coinsOfValue: 0.20.
	w add: 5 coinsOfValue: 0.10.
	paid := w coinsFor: 2.4.
	self assert: paid money equals: 2.4.
	self assert: (paid coinsOfValue: 0.5) equals: 4.
	self assert: (paid coinsOfValue: 0.2) equals: 2
]

{ #category : #tests }
WalletTest >> testCoinsForPayingWithOtherThanTop [

	| w paid |
	w := Wallet new.
	w add: 1 coinsOfValue: 0.50.
	w add: 5 coinsOfValue: 0.20.
	w add: 5 coinsOfValue: 0.10.
	paid := w coinsFor: 0.6.
	self assert: paid money equals: 0.6.
	self assert: (paid coinsOfValue: 0.5) equals: 1.
	self assert: (paid coinsOfValue: 0.1) equals: 1
]

{ #category : #tests }
WalletTest >> testCoinsForPayingWithOtherThanTopMoreDifficult [

	| w paid |
	w := Wallet new.
	w add: 1 coinsOfValue: 1.
	w add: 2 coinsOfValue: 0.50.
	w add: 5 coinsOfValue: 0.20.
	w add: 5 coinsOfValue: 0.10.
	paid := w coinsFor: 0.6.
	self assert: paid money equals: 0.6.
	self assert: (paid coinsOfValue: 0.5) equals: 1.
	self assert: (paid coinsOfValue: 0.1) equals: 1
]

{ #category : #tests }
WalletTest >> testMoney [

	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	w add: 1 coinsOfValue: 0.02.
	self assert: w money equals: 1.62
]

{ #category : #tests }
WalletTest >> testRemoveCoins [

	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	w add: 1 coinsOfValue: 0.02.
	w add: 5 coinsOfValue: 0.05.
	w remove: 2 coinsOfValue: 0.5.
	self assert: w money equals: 0.87
]

{ #category : #tests }
WalletTest >> testWalletAtCreationIsZero [

	| w |
	w := Wallet new.
	self assert: w money equals: 0
]
