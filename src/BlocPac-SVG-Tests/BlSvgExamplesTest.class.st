"
A BlSvgExamplesTest is a test class for testing the behavior of BlSvgExamples
"
Class {
	#name : #BlSvgExamplesTest,
	#superclass : #TestCase,
	#category : #'BlocPac-SVG-Tests-Examples'
}

{ #category : #tests }
BlSvgExamplesTest >> exampleSelectors [

	^ (BlSvgExamples selectorsInProtocol: 'svg - converter') 
		  copyWithoutAll: self exampleSelectorsWithErrors
]

{ #category : #tests }
BlSvgExamplesTest >> exampleSelectorsWithErrors [

	^ #( curveQuadraticBezier ellipticalArc
	     pathBatman pathTiger pathTree symbolAndUse transformations)
]

{ #category : #tests }
BlSvgExamplesTest >> testAllExamples [

	| selectors exampleFactory |
	selectors := self exampleSelectors.
	exampleFactory := BlSvgExamples new.

	selectors do: [ :each |
		| result |
		result := exampleFactory perform: each.
		self assert: (result isKindOf: BlElement) ].
	
	self deny: selectors isEmpty.
	
"	
	selectors collect: [ :each | each -> (BlSvgExamples new perform: each) ]
"
]

{ #category : #tests }
BlSvgExamplesTest >> testExcludedExamplesRaiseError [

	| selectors exampleFactory |
	selectors := self exampleSelectorsWithErrors.
	exampleFactory := BlSvgExamples new.

	selectors do: [ :each |
		self
			should:[ exampleFactory perform: each ]
			raise: Error ].
	
	self deny: selectors isEmpty. "If this happens, we must remove this test"

]
