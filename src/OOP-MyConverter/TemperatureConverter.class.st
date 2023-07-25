Class {
	#name : #TemperatureConverter,
	#superclass : #Object,
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
