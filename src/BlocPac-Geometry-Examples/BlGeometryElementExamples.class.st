Class {
	#name : #BlGeometryElementExamples,
	#superclass : #BlExamplesTest,
	#category : #'BlocPac-Geometry-Examples'
}

{ #category : #'instance creation' }
BlGeometryElementExamples >> attachPoint [
	<gtExample>	

	^ BlElement new
		geometry: BlEllipseGeometry new;
		size: 30@30;
		background: (Color blue alpha: 0.3);
		border: BlBorder empty;
		addEventHandler: BlPullHandler new
]

{ #category : #'instance creation' }
BlGeometryElementExamples >> container [
	<gtExample>
	
	^ BlElement new
		background: Color white;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		yourself
]
