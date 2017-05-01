//
//  EditTask.swift
//  ToDoList
//
//  Created by Admin on 01.05.17.
//  Copyright © 2017 Konevskiy. All rights reserved.
//
import UIKit
import Foundation

class EditTaskController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleEdit: UITextField!
    
    @IBOutlet weak var descriptionEdit: UITextField!
    var myLabelTitle = " "
    var myLabelDescription = " "
    var myTask :Task = Task(myTitle: "", myDescription: "")
    var selectIndex = -1
    
    @IBAction func DeleteButtonClicked(_ sender: Any) {
        tasks.remove(at : selectIndex)
        self.navigationController?.popViewController(animated: true);
    }
    @IBAction func DoneButtonClicked(_ sender: Any) {
        
        let newTask = Task(myTitle: titleEdit.text!, myDescription: descriptionEdit.text!)
        
        tasks[selectIndex] = newTask
        self.navigationController?.popViewController(animated: true);

        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        titleEdit.delegate = self
        descriptionEdit.delegate = self
        titleEdit.text = myTask.title
        descriptionEdit.text = myTask.description
        
            }
    
    @IBAction func EndEditindTitle(_ sender: Any) {
        myLabelTitle = titleEdit.text!
    }
    
    
    @IBAction func EndEditingDescription(_ sender: Any) {
        myLabelDescription = descriptionEdit.text!
        
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
    
}

