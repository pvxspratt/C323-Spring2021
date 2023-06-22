//
//  SettingsViewController.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 4/27/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  April 27, 2021
//

import UIKit

class SettingsViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// -------------------------------------------

class UnitsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var mlUnits: UIButton!
    @IBOutlet weak var ozUnits: UIButton!
    @IBOutlet weak var unitPicker: UIPickerView!
    
    var pickerData:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Connecting data:
        self.unitPicker.delegate = self
        self.unitPicker.dataSource = self
        
        pickerData = ["ml", "oz"]
        
        mlUnits.layer.cornerRadius = 20
        ozUnits.layer.cornerRadius = 20
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    @IBAction func setmlUnits(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        lAppInfoModel.setUnits(unit: "ml")
    }
    
    @IBAction func setozUnits(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        lAppInfoModel.setUnits(unit: "oz")
    }
    
    
    
}

// -------------------------------------------


class BodyInfoViewController: UIViewController {
    @IBOutlet weak var changeWeight: UIButton!
    @IBOutlet weak var changeActivity: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// -------------------------------------------

class WeightViewController: UIViewController {
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var okWeight: UIButton!
    @IBOutlet weak var currentWeight: UILabel!
    @IBOutlet weak var recAmount: UILabel!
    
    @IBAction func inputWeight(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        //lAppInfoModel.setWeight(weight: Int(self.weight.text))
        let weightInt: Int? = Int(weight.text!)
        lAppInfoModel.setWeight(weight: weightInt!)
        
        self.currentWeight.text = "\(lAppInfoModel.getWeight()) lbs"
        
        self.recAmount.text = "\(lAppInfoModel.calculateRecAmount()) \(lAppInfoModel.getUnits()) of water"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        okWeight.layer.cornerRadius = 20
    }
    
   
}

// -------------------------------------------

class BodyActivityViewController:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
