//
//  CreateTask.swift
//  ToDoList
//
//  Created by Admin on 25.04.17.
//  Copyright © 2017 Konevskiy. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var titleEdit: UITextField!
    @IBOutlet weak var descriptionEdit: UITextField!
    
    var myTitle = " "
    var myDescription=" "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titleEdit.delegate = self
        descriptionEdit.delegate = self
    }
    
    @IBAction func DoneButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: {
            
        })
        
        
    }
    @IBAction func EndEditindTitle(_ sender: Any) {
        myTitle = titleEdit.text!
    }

    
    @IBAction func EndEditingDescription(_ sender: Any) {
        myDescription = descriptionEdit.text!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func textFieldShouldReturn(_ titleEdit: UITextField) -> Bool {
        titleEdit.resignFirstResponder()
        descriptionEdit.resignFirstResponder()
        return true
    }
    
    //public func textFieldShouldReturn(_ titleEdit: UITextField) -> Bool {
   //     titleEdit.resignFirstResponder()
    //    descriptionEdit.resignFirstResponder()
   //     return true
  //  }
    
}

