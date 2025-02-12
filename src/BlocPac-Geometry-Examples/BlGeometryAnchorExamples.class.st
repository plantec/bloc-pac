Class {
	#name : #BlGeometryAnchorExamples,
	#superclass : #BlExamplesTest,
	#category : #'BlocPac-Geometry-Examples'
}

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> bottomCenterAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementBottomCenterAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 140@120.

	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> bottomLeftAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementBottomLeftAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 40@120.

	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> bottomRightAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementBottomRightAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 240@120.

	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> centerAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementCenterAnchor new.
	
	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 140@70.
	
	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> centerLeftAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementCenterLeftAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 40@70.

	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> centerRightAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementCenterRightAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 240@70.

	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> topCenterAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementTopCenterAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 140@20.

	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> topLeftAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementTopLeftAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 40@20.

	^ anAnchor
]

{ #category : #'anchor - accessing' }
BlGeometryAnchorExamples >> topRightAnchor [
	<gtExample>
	| anAnchor |

	anAnchor := BlElementTopRightAnchor new.

	self
		assert: (anAnchor positionWithinBounds: (BlBounds origin: 40.0@20.0 extent: 200.0@100.0))
		equals: 240@20.

	^ anAnchor
]
