//
//  Task.swift
//  ToDoList
//
//  Created by Admin on 01.05.17.
//  Copyright © 2017 Konevskiy. All rights reserved.
//

import Foundation

class Task
{
    public var title:String
    public var description:String
    
    init(myTitle:String, myDescription:String)
    {
        self.title = myTitle
        self.description = myDescription
    }
}


var tasks = [
    Task(myTitle: "title 1",myDescription: "task 1"),
    Task(myTitle: "title 2",myDescription: "task 2"),
    Task(myTitle: "title 3",myDescription: "task 3"),
    Task(myTitle: "title 4",myDescription: "task 4"),
    Task(myTitle: "title 5",myDescription: "task 5"),
    Task(myTitle: "title 6",myDescription: "task 6")
]
