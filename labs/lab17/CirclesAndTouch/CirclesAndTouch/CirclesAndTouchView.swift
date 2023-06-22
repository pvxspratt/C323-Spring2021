//
//  CirclesAndTouchView.swift
//  CirclesAndTouch
//
//  Created by Phoebe on 3/23/21.
//

import UIKit

class CirclesAndTouchView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }

    var myDrawingColor: UIColor = UIColor.systemIndigo {
        didSet {
            self.setNeedsDisplay()
        }
    }

    override func draw(_ rect: CGRect) {
        // create a path that can be used for drawing:
        let path = UIBezierPath()
        // set the path's line width for drawing it:
        path.lineWidth = 4
        
        // find what the drawing bounds are for our current view instance:
        let drawingBounds = self.bounds
        // adding a circle to the path,
        //  properly contered and sized accordingly to the view bounds:
        var circleCenter = CGPoint()
        circleCenter.x = drawingBounds.origin.x + drawingBounds.size.width/2.0
        circleCenter.y = drawingBounds.origin.y + drawingBounds.size.height/2.0
        
        let theMinOfTheTwoSizes: CGFloat
        if(drawingBounds.size.width > drawingBounds.size.height) {
            theMinOfTheTwoSizes = drawingBounds.size.height
        } else {
            theMinOfTheTwoSizes = drawingBounds.size.width
        }
        
        path.addArc(
            withCenter: circleCenter,
            // ensure that the circle will fit the bounds,
            //   including the line "stroke" width:
            radius: (theMinOfTheTwoSizes - path.lineWidth)/2.0,
            startAngle: CGFloat(0.0),
            endAngle: CGFloat(Double.pi * 2),
            clockwise: true)
        
        // the new color is to be used for subsequent stroke() calls:
        self.myDrawingColor.setStroke()
        
        // finally, draw the path by calling its stroke() method:
        path.stroke()
    }
 

}
