//
//  SecondViewController.swift
//  testingSegues
//
//  Created by Phyllis Hollingshead on 2/7/17.
//  Copyright © 2017 Phyllis Hollingshead. All rights reserved.
//

import UIKit

protocol secondVCProtocol {
    func setReturnValue(valueSent: String)
}

class SecondViewController: UIViewController {
    
    var delegate:secondVCProtocol?
    
    var sentValue = ""
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var secontText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = sentValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        let valueToReturn = secontText.text
        delegate?.setReturnValue(valueSent: valueToReturn!)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
