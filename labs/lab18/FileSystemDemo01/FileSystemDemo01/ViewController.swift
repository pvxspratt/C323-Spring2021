//
//  ViewController.swift
//  FileSystemDemo01
//
//  Created by Phoebe on 4/5/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextView: UITextView!
    var theFolderNameURLWithPath = URL(fileURLWithPath: "")
    
    func createDirectoryAction() {
        let lFM = FileManager()
        
        let lDocumentsDirectoryURL = try! lFM.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: true)
        
        self.myTextView.text += "***** in createDirectoryAction, the URL for 'Documents/' is ...\n"
        self.myTextView.text += "***** \(lDocumentsDirectoryURL)  \n"
        
        let lFolderNameURLWithPath = lDocumentsDirectoryURL.appendingPathComponent("MyFolder", isDirectory: true)
        
        // the Swift way to catch exceptions is to use a
        //    do ... try ... catch
        // statement, as follows:
        do {
            // the following 'try' attempts to call the function...
            try lFM.createDirectory(
                at: lFolderNameURLWithPath,
                withIntermediateDirectories: true,
                attributes: nil)
            // ... if all went well, we can save the function's results
            self.theFolderNameURLWithPath = lFolderNameURLWithPath
            
        } catch let err as NSError {
            // we end up here,
            //  if an exception was thrown
            //  when 'try'ing the above function call
            self.myTextView.text += "***** DANGER \(err) detected when creating directory *****\n"
        }
    }
    
    func createFileAction() {
        // we're going to write to a new file, let's create its URL:
        let lFileNameURLWithPath = self.theFolderNameURLWithPath.appendingPathComponent("theUnicodeFile.txt")
        
        do {
            try "Hello World, this 📄 is going to 📲 now.".write(
                to: lFileNameURLWithPath,
                atomically: true,
                encoding: String.Encoding.utf8)
            // ... if all went well, we have written into a file!
            
            self.myTextView.text += "***** in createFileAction, the URL for the new file is...\n"
            self.myTextView.text += "***** \(lFileNameURLWithPath)  \n"
            
        } catch let err as NSError {
            self.myTextView.text += "***** DANGER \(err) detected when creating a new file *****\n"
        }
    }
    

    override func viewDidLoad() {
        //super.viewDidLoad()
        createDirectoryAction()
        createFileAction()
        // Do any additional setup after loading the view.
    }


}

