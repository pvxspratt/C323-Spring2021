//
//  SettingsViewController.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 4/27/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import CoreData
import UIKit

class SettingsViewController: UIViewController, UINavigationControllerDelegate {
    @IBOutlet weak var bodyInfoButton: UIButton!
    @IBOutlet weak var unitsButton: UIButton!
    @IBOutlet weak var drinkingRem: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// -------------------------------------------

class UnitsViewController: UIViewController  {
    @IBOutlet weak var mlUnits: UIButton!
    @IBOutlet weak var ozUnits: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        mlUnits.layer.cornerRadius = 20
        ozUnits.layer.cornerRadius = 20
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

class WeightViewController: UIViewController, NSFetchedResultsControllerDelegate {
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var okWeight: UIButton!
    @IBOutlet weak var currentWeight: UILabel!
    @IBOutlet weak var recAmount: UILabel!
    @IBOutlet weak var yourWeight: UILabel!
    
    var userItems : [NSManagedObject] = []
    let del = UIApplication.shared.delegate as! AppDelegate
    var moc : NSManagedObjectContext!
    
    @IBAction func inputWeight(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        let userItem = User(context: moc)

        let weightInt: Int? = Int(weight.text!)
        // fatal error here
        lAppInfoModel.setWeight(weight: weightInt!)
        lAppInfoModel.setWaterRec()
        
        userItem.weight = Int16(weightInt!)
        del.saveContext()

        self.currentWeight.text = "\(lAppInfoModel.getWeight()) lbs"
        
        self.recAmount.text = "\(lAppInfoModel.calculateRecAmount()) \(lAppInfoModel.getUnits()) of water"
    }
    
    lazy var frc: NSFetchedResultsController<User> = {
        let userRequest: NSFetchRequest<User> = User.fetchRequest()
        
        let sortDescriptor = NSSortDescriptor(key: "added", ascending: true)
        userRequest.sortDescriptors = [sortDescriptor]
     
        let del = UIApplication.shared.delegate as! AppDelegate
        let moc = del.persistentContainer.viewContext
        let frc = NSFetchedResultsController(
            fetchRequest:userRequest,
            managedObjectContext:moc,
            sectionNameKeyPath:nil, cacheName:nil)
        frc.delegate = self
        do {
            try frc.performFetch()
        } catch {
            print("Unresolved error \(error)")
            fatalError("Aborting with unresolved error")
        }
        return frc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        okWeight.layer.cornerRadius = 20
        moc = del.persistentContainer.viewContext
        
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        self.yourWeight.text = "\(lAppInfoModel.getWeight())"
        self.recAmount.text = "\(lAppInfoModel.calculateRecAmount()) \(lAppInfoModel.getUnits()) of water"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let managedContext = lAppDelegate.persistentContainer.viewContext
        
        let fetchReq = NSFetchRequest<NSManagedObject>(entityName: "User")
        
        do {
            userItems = try managedContext.fetch(fetchReq)
        } catch let err as NSError {
            print("Couldn't fetch. \(err), \(err.userInfo)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}

// -------------------------------------------

class BodyActivityViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    // TODO if there's time
        // Update: there was not time
    @IBOutlet weak var activityPicker: UIPickerView!
    @IBOutlet weak var okButton: UIButton!
    
    let activityLevels = ["not that active", "active", "pretty active"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.activityPicker.delegate = self
        self.activityPicker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.activityLevels.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activityLevels[row]
    }
    
    func selectedRow(inComponent component: Int) -> Int {
        // TODO figure this out same as the units
        return 1
    }
    
    @IBAction func setBodyActivity(_ sender: Any) {
        // would have chosen between the three levels of activity and based
        //  on the level chosen it would add a certain amount to the recAmount
    }
}
