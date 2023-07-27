Class {
	#name : #TemperatureConverterTest,
	#superclass : #TestCase,
	#category : #'OOP-MyConverter-Tests'
}

{ #category : #tests }
TemperatureConverterTest >> testCelsiusToFahrenheit [

	| converter |
	converter := TemperatureConverter new.
	self assert: (converter convertCelsius: 30) equals: 86.0
]

{ #category : #tests }
TemperatureConverterTest >> testConvertFromFahrenheitToCelsiusScale [

	| converter |
	converter := TemperatureConverter new.
	self
		assert: (converter convertFahrenheitFrom: 50 to: 70 by: 2)
		equals: {
				(50 -> 10.0).
				(52 -> 11.1).
				(54 -> 12.2).
				(56 -> 13.3).
				(58 -> 14.4).
				(60 -> 15.6).
				(62 -> 16.7).
				(64 -> 17.8).
				(66 -> 18.9).
				(68 -> 20.0).
				(70 -> 21.1) }
]

{ #category : #tests }
TemperatureConverterTest >> testFahrenheitToCelsius [

	| converter |
	converter := TemperatureConverter new.
	self assert: (converter convertFahrenheit: 86) equals: 30.0.
	self assert: (converter convertFahrenheit: 50) equals: 10.
	self assert: (converter convertFahrenheit: 52) equals: 11.1
]

{ #category : #tests }
TemperatureConverterTest >> testLocationAndDate [

	| office |
	office := TemperatureConverter new location: 'Office'.
	office measureCelsius: 19.
	office measureCelsius: 21.

	self assert: office measureCount equals: 2.
	self assert: office dates equals: {
			Date today.
			Date today } asOrderedCollection.

	self
		assert: office temperatures
		equals: { 19. 21 } asOrderedCollection
]

{ #category : #tests }
TemperatureConverterTest >> testLocationAndDateWithConversion [

	| converter |
	converter := TemperatureConverter new location: 'Lille'.
	converter measureFahrenheit: 86.
	converter measureFahrenheit: 50.

	self assert: converter measureCount equals: 2.
	self assert: converter dates equals: {
			Date today.
			Date today } asOrderedCollection.
	self assert: converter temperatures equals: {
			(converter convertFahrenheit: 86).
			(converter convertFahrenheit: 50) } asOrderedCollection
]

{ #category : #tests }
TemperatureConverterTest >> testTwoLocations [

	| office home |
	office := TemperatureConverter new location: 'Office'.
	office measureFahrenheit: 19.
	office measureFahrenheit: 21.
	self assert: office location equals: 'Office'.
	self assert: office measureCount equals: 2.

	home := TemperatureConverter new location: 'Home'.
	home measureFahrenheit: 22.
	home measureFahrenheit: 22.
	home measureFahrenheit: 22.
	self assert: home location equals: 'Home'.
	self assert: home measureCount equals: 3
]
