//
//  ViewController.swift
//  testingSegues
//
//  Created by Phyllis Hollingshead on 2/7/17.
//  Copyright © 2017 Phyllis Hollingshead. All rights reserved.
//

import UIKit

class ViewController: UIViewController, secondVCProtocol {
    
    var returnValue:String?
    
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblMessage.text = "Start"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SecondViewController
        destination.delegate = self
        destination.title = "Arrived from One"
        destination.sentValue = "Sent from One"
        
    }
    func setReturnValue(valueSent: String) {
        returnValue = valueSent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        lblMessage.text = returnValue
    }
    
}

