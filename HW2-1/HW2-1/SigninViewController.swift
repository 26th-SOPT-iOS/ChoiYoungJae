//
//  SecondViewController.swift
//  HW2-1
//
//  Created by 최영재 on 01/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet var textfieldcollection2:[UITextField]!
    @IBOutlet var signinbutton:[UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        // Do any additional setup after loading the view.
    }
    
    func setLayout(){

             for textfield in textfieldcollection2{
                 textfield.layer.cornerRadius = 0.08 * textfield.bounds.size.width
             }
        for button in signinbutton{
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
