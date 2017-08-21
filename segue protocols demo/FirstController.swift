//
//  FirstController.swift
//  segue protocols demo
//
//  Created by James Best on 21/08/2017.
//  Copyright © 2017 Gravitywell. All rights reserved.
//

import UIKit

class FirstController: UIViewController, SecondDelegateProtocol {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("Pressed")
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            
            // telling the compiler what type of VC the sugue.destination is
            let destinationVC = segue.destination as! SecondController
            destinationVC.textPassedOver = firstInput.text
            
            // setting this class as a delegate
            destinationVC.delegate = self
        }
    }
    
    func changeFirstLabel(text: String) {
        print(text)
        firstLabel.text = text
    }
}
