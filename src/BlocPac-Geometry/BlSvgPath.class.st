"
I am the {{gtClass:BlElementVectorGeometry}} used to represent a SVG Path, which allows to make complex drawings.

A SVG Path is obtained through successives commands, which each symbolizes a movement of the virtual pen drawing the path.
My instance variable'pathData' stores the list of commands used to obtain my final drawing.

To instanciate myself I use the BlSvgPathConverter class, which will allow me to set my 'pathData' instance variable.
To calculate my extent I use the BlSvgPathExtentResolver class, which calculates my extent when I set my 'pathData' instance variable.

Instance creation examples:
	- BlSvgPath new svg: 'M100,200 C100,100 250,100 250,200 S400,300 400,200' viewbox: (0@0 extent: 4000@400) 

"
Class {
	#name : #BlSvgPath,
	#superclass : #BlElementVectorGeometry,
	#instVars : [
		'position',
		'segments',
		'viewbox',
		'fillRule'
	],
	#classVars : [
		'EvenOdd',
		'Winding'
	],
	#category : #'BlocPac-Geometry-SVG'
}

{ #category : #'instance creation' }
BlSvgPath class >> build: aBlock [
	^ self new build: aBlock
]

{ #category : #'class initialization' }
BlSvgPath class >> initialize [
	EvenOdd := #evenOdd.
	Winding := #winding
]

{ #category : #initialization }
BlSvgPath >> build: aBlock viewbox: aRectangle [
	| aPathbuilder |
	aPathbuilder := BlSvgPathBuilder new.
	aBlock value: aPathbuilder.
	segments := aPathbuilder segments.
	viewbox := aRectangle asBlocFloatRectangle.
	self extent: aRectangle extent.
]

{ #category : #accessing }
BlSvgPath >> buildPathOnSpartaCanvas: aCanvas [
	| pathBuilder|

	pathBuilder := fillRule = Winding
		ifTrue: [ aCanvas path: SpartaFillRule winding ]
		ifFalse: [ aCanvas path: SpartaFillRule evenOdd ].

	segments do: [ :each |
		each isAbsolute
			ifTrue: [ pathBuilder absolute ]
			ifFalse: [ pathBuilder relative ].
		each executeOn: pathBuilder ].
	^ pathBuilder finish
]

{ #category : #accessing }
BlSvgPath >> evenOdd [
	fillRule := EvenOdd
]

{ #category : #accessing }
BlSvgPath >> gtSegmentsFor: aView [
	<gtView>
	^ aView list
		title: 'Segments';
		items: [segments]
]

{ #category : #initialization }
BlSvgPath >> initialize [
	super initialize.
	
	segments := #().
	viewbox := 0.0@0.0 extent: 50.0@50.0.
	fillRule := Winding
]

{ #category : #accessing }
BlSvgPath >> matchExtent: anExtent [
	extent := anExtent
]

{ #category : #initialization }
BlSvgPath >> svg: anSvgString viewbox: aRectangle [

	self
		build: [ :builder | builder fromStream: anSvgString readStream ]
		viewbox: aRectangle
]

{ #category : #accessing }
BlSvgPath >> winding [
	fillRule := Winding
]
