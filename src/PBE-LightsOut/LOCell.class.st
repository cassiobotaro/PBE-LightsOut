"
Class comment

with multiple lines

test

"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff
]

{ #category : #acccessing }
LOCell >> mouseAction: aBlock [
	^ mouseAction := aBlock 
]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
	mouseAction value
]
