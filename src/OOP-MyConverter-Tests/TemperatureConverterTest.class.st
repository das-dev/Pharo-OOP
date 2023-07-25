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
