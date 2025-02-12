"
I contain a set of SVG-backed icons.

See class side
"
Class {
	#name : #BlSvgIcons,
	#superclass : #Object,
	#category : #'BlocPac-SVG-Examples'
}

{ #category : #arrow }
BlSvgIcons class >> arrowExpandAllIcon [

	^ self arrowExpandAllSvg asElement
]

{ #category : #arrow }
BlSvgIcons class >> arrowExpandAllSrc [

	^ 'M 9.49263,13.0931L 10.9068,14.5073L 6.41421,19L 10,19L 10,21L 3,21L 3,14L 5,14L 5,17.5858L 9.49263,13.0931 Z M 10.9069,9.49266L 9.49265,10.9069L 5,6.41422L 5,10L 3,10L 3,3.00001L 10,3L 10,5L 6.41421,5L 10.9069,9.49266 Z M 14.5074,13.0931L 19,17.5858L 19,14L 21,14L 21,21L 14,21L 14,19L 17.5858,19L 13.0932,14.5073L 14.5074,13.0931 Z M 13.0931,9.49265L 17.5858,5L 14,5L 14,3L 21,3L 21,10L 19,10L 19,6.41421L 14.5073,10.9069L 13.0931,9.49265 Z '
]

{ #category : #arrow }
BlSvgIcons class >> arrowExpandAllSvg [

	^ BlSvgPath new
		  svg: self arrowExpandAllSrc viewbox: self viewbox;
		  yourself
]

{ #category : #close }
BlSvgIcons class >> closeCircleIcon [

	^ self closeCircleSvg asElement
]

{ #category : #close }
BlSvgIcons class >> closeCircleSrc [
^'M 12,2C 17.53,2 22,6.47 22,12C 22,17.53 17.53,22 12,22C 6.47,22 2,17.53 2,12C 2,6.47 6.47,2 12,2 Z M 15.59,7.00002L 12,10.59L 8.40999,7.00002L 6.99999,8.41002L 10.59,12L 6.99999,15.59L 8.40999,17L 12,13.41L 15.59,17L 17,15.59L 13.41,12L 17,8.41002L 15.59,7.00002 Z '
]

{ #category : #close }
BlSvgIcons class >> closeCircleSvg [

	^ BlSvgPath new
		  svg: self closeCircleSrc viewbox: self viewbox;
		  yourself
]

{ #category : #accessing }
BlSvgIcons class >> iconSelectors [
	
	^ #(arrowExpandAllIcon closeCircleIcon rotateLeftIcon settingsIcon)
]

{ #category : #accessing }
BlSvgIcons class >> icons [
	"
	self icons
	"

	^ self iconSelectors collect: [ :each | self perform: each ]
]

{ #category : #rotate }
BlSvgIcons class >> rotateLeftIcon [

	^ self rotateLeftSvg asElement
]

{ #category : #rotate }
BlSvgIcons class >> rotateLeftSrc [

	^ 'M 13,4.07L 13,1L 8.45,5.55L 13,10L 13,6.09C 15.84,6.57 18,9.03 18,12C 18,14.97 15.84,17.43 13,17.91L 13,19.93C 16.95,19.44 20,16.08 20,12C 20,7.92 16.95,4.56 13,4.07 Z M 7.1,18.32C 8.26,19.22 9.61,19.76 11,19.93L 11,17.9C 10.13,17.75 9.29,17.41 8.54,16.87L 7.1,18.32 Z M 6.09,13L 4.07,13C 4.24,14.39 4.79,15.73 5.69,16.89L 7.1,15.47C 6.58,14.72 6.23,13.88 6.09,13 Z M 7.11,8.53L 5.7,7.11C 4.8,8.27 4.24,9.61 4.07,11L 6.09,11C 6.23,10.13 6.58,9.28 7.11,8.53 Z '
]

{ #category : #rotate }
BlSvgIcons class >> rotateLeftSvg [

	^ BlSvgPath new
		  svg: self rotateLeftSrc viewbox: self viewbox;
		  yourself
]

{ #category : #settings }
BlSvgIcons class >> settingsIcon [

	^ self settingsSvg asElement
]

{ #category : #settings }
BlSvgIcons class >> settingsSrc [

	^ 'M 11.9994,15.498C 10.0664,15.498 8.49939,13.931 8.49939,11.998C 8.49939,10.0651 10.0664,8.49805 11.9994,8.49805C 13.9324,8.49805 15.4994,10.0651 15.4994,11.998C 15.4994,13.931 13.9324,15.498 11.9994,15.498 Z M 19.4284,12.9741C 19.4704,12.6531 19.4984,12.329 19.4984,11.998C 19.4984,11.6671 19.4704,11.343 19.4284,11.022L 21.5414,9.36804C 21.7294,9.21606 21.7844,8.94604 21.6594,8.73004L 19.6594,5.26605C 19.5354,5.05005 19.2734,4.96204 19.0474,5.04907L 16.5584,6.05206C 16.0424,5.65607 15.4774,5.32104 14.8684,5.06903L 14.4934,2.41907C 14.4554,2.18103 14.2484,1.99805 13.9994,1.99805L 9.99939,1.99805C 9.74939,1.99805 9.5434,2.18103 9.5054,2.41907L 9.1304,5.06805C 8.52039,5.32104 7.95538,5.65607 7.43939,6.05206L 4.95139,5.04907C 4.7254,4.96204 4.46338,5.05005 4.33939,5.26605L 2.33939,8.73004C 2.21439,8.94604 2.26938,9.21606 2.4574,9.36804L 4.5694,11.022C 4.5274,11.342 4.49939,11.6671 4.49939,11.998C 4.49939,12.329 4.5274,12.6541 4.5694,12.9741L 2.4574,14.6271C 2.26938,14.78 2.21439,15.05 2.33939,15.2661L 4.33939,18.73C 4.46338,18.946 4.7254,19.0341 4.95139,18.947L 7.4404,17.944C 7.95639,18.34 8.52139,18.675 9.1304,18.9271L 9.5054,21.577C 9.5434,21.8151 9.74939,21.998 9.99939,21.998L 13.9994,21.998C 14.2484,21.998 14.4554,21.8151 14.4934,21.577L 14.8684,18.9271C 15.4764,18.6741 16.0414,18.34 16.5574,17.9431L 19.0474,18.947C 19.2734,19.0341 19.5354,18.946 19.6594,18.73L 21.6594,15.2661C 21.7844,15.05 21.7294,14.78 21.5414,14.6271L 19.4284,12.9741 Z '
]

{ #category : #settings }
BlSvgIcons class >> settingsSvg [

	^ BlSvgPath new
		  svg: self settingsSrc viewbox: self viewbox;
		  yourself
]

{ #category : #private }
BlSvgIcons class >> viewbox [

	self flag: #todo. "This value is ignored by BlSvgPath"

	^ 0 asPoint extent: 32 asPoint
]
