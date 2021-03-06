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
    
    var myLabelTitle = " "
    var myLabelDescription = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleEdit.delegate = self
        descriptionEdit.delegate = self
    }
    
    
    @IBAction func DoneButtonClicked(_ sender: Any) {
        let newTask = Task(myTitle: titleEdit.text!, myDescription: descriptionEdit.text!)
        tasks.append(newTask)
        self.navigationController?.popViewController(animated: true);

    }
    
    @IBAction func EndEditindTitle(_ sender: Any) {
        myLabelTitle = titleEdit.text!
    }

    
    @IBAction func EndEditingDescription(_ sender: Any) {
        myLabelDescription = descriptionEdit.text!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func textFieldShouldReturn(_ titleEdit: UITextField) -> Bool {
        titleEdit.resignFirstResponder()
        descriptionEdit.resignFirstResponder()
        return true
    }
    
}

