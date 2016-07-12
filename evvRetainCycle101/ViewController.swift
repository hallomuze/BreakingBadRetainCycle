//
//  ViewController.swift
//  evvRetainCycle101
//
//  Created by artist on 7/13/16.
//  Copyright © 2016 Ever8greener. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aPerson: Human = Human()
        aPerson.heart = Heart(person: aPerson)
    }

 
}

class Human {
    
    var heart : Heart?
    
    init( ){
         print("human created")
    }
    deinit{
        print("human released!!")
    }
}

class Heart {
    
    var person : Human?
    //weak ver person: Human?  -- 이렇게 수정 하면 메모리해지됨을 볼 수 있다
    
    init(person:Human){
        self.person = person
        
        print("heart created")
    }
    deinit{
        print("heart released")
    }
}



