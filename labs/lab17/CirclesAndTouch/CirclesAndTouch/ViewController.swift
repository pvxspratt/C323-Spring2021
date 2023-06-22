//
//  ViewController.swift
//  CirclesAndTouch
//
//  Created by Phoebe on 3/23/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //let firstTouch = touches.first(where: {$0 is UITouch})
        //let startingPoint = (firstTouch as! UITouch).location(in: self)
        
        for touch in touches {
            let circleCenter = touch.location(in: view)

            let circleView = CirclesAndTouchView(frame: CGRect(x: circleCenter.x, y: circleCenter.y, width: 25, height: 25))
            view.addSubview(circleView)
            
        }
    }

}

