//
//  RectanglesView.swift
//  Rectangles
//
//  Created by Phoebe on 3/18/21.
//

import UIKit

class RectanglesView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        // create path that can be used for drawing:
        let myFirstPath = UIBezierPath()
        let mySecondPath = UIBezierPath()
        let path3 = UIBezierPath()
        let path4 = UIBezierPath()
        let path5 = UIBezierPath()
        let path6 = UIBezierPath()
        let path7 = UIBezierPath()
        let path8 = UIBezierPath()
        let path9 = UIBezierPath()
        
        // prepare path with some content, e.g. a circle:
        myFirstPath.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 30, startAngle: 0, endAngle: 6.28, clockwise: true)
        
        mySecondPath.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 35, startAngle: 0, endAngle: 6.28, clockwise: true)
        
        path3.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 40, startAngle: 0, endAngle: 6.28, clockwise: true)
        path4.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 45, startAngle: 0, endAngle: 6.28, clockwise: true)
        path5.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 50, startAngle: 0, endAngle: 6.28, clockwise: true)
        path6.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 55, startAngle: 0, endAngle: 6.28, clockwise: true)
        path7.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 60, startAngle: 0, endAngle: 6.28, clockwise: true)
        path8.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 65, startAngle: 0, endAngle: 6.28, clockwise: true)
        path9.addArc(withCenter: CGPoint(x: 50, y: 70), radius: 70, startAngle: 0, endAngle: 6.28, clockwise: true)
        
        
        
        // ask the path to draw itself
        // (in "painter" terminology, as if it has a brush to paint on a canvas)
        myFirstPath.stroke()
        mySecondPath.stroke()
        path3.stroke()
        path4.stroke()
        path5.stroke()
        path6.stroke()
        path7.stroke()
        path8.stroke()
        path9.stroke()
    }

}
