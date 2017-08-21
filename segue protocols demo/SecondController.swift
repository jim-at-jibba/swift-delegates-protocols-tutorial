//
//  SecondController.swift
//  segue protocols demo
//
//  Created by James Best on 21/08/2017.
//  Copyright © 2017 Gravitywell. All rights reserved.
//

import UIKit

protocol SecondDelegateProtocol {
    func changeFirstLabel(text: String)
}

class SecondController: UIViewController {
    
    var textPassedOver: String?
    var delegate: SecondDelegateProtocol?
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        secondLabel.text = textPassedOver
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let inputText = secondInput.text!
        
        delegate?.changeFirstLabel(text: inputText)
        
        self.dismiss(animated: true, completion: nil)
    }
}
