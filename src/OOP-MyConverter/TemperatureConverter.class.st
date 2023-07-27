Class {
	#name : #TemperatureConverter,
	#superclass : #Object,
	#instVars : [
		'measures',
		'location'
	],
	#category : #'OOP-MyConverter'
}

{ #category : #api }
TemperatureConverter >> convertCelsius: anInteger [
	"Convert anInteger from Celsius to Fahrenheit"

	^ anInteger * 1.8 + 32
]

{ #category : #api }
TemperatureConverter >> convertFahrenheit: anInteger [

	^ anInteger - 32 / 1.8 round: 1
]

{ #category : #api }
TemperatureConverter >> convertFahrenheitFrom: low to: high by: step [

	^ (low to: high by: step) collect: [ :f |
		  f -> (self convertFahrenheit: f) ]
]

{ #category : #accessing }
TemperatureConverter >> dates [

	^ measures collect: #key
]

{ #category : #initialization }
TemperatureConverter >> initialize [

	measures := OrderedCollection new
]

{ #category : #accessing }
TemperatureConverter >> location [

	^ location
]

{ #category : #accessing }
TemperatureConverter >> location: anObject [

	location := anObject
]

{ #category : #api }
TemperatureConverter >> measureCelsius: aTemp [

	measures add: Date today -> aTemp
]

{ #category : #api }
TemperatureConverter >> measureCount [

	^ measures size
]

{ #category : #api }
TemperatureConverter >> measureFahrenheit: aTemp [

	measures add: Date today -> (self convertFahrenheit: aTemp)
]

{ #category : #api }
TemperatureConverter >> temperatures [

	^ measures collect: #value
]
