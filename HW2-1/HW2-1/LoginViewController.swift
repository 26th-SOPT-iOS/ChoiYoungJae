//
//  FirstViewController.swift
//  HW2-1
//
//  Created by 최영재 on 01/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var textfieldcollection: [UITextField]!
    @IBOutlet var loginbutton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        // Do any additional setup after loading the view.
    }
    func setLayout(){

            for textfield in textfieldcollection{
                textfield.layer.cornerRadius = 0.08 * textfield.bounds.size.width
            }
        for button in loginbutton{
                     button.layer.cornerRadius = 0.08 * button.bounds.size.width
                 }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
