//
//  FirstViewController.swift
//  HW1-2
//
//  Created by 최영재 on 18/04/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginDataTransfer(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController
            else {return}
        
        receiveViewController.id = idTextField.text
        receiveViewController.password = passwordTextField.text
        
//        self.navigationController?.pushViewController(receiveViewController, animated: true)
        receiveViewController.modalPresentationStyle = .fullScreen
        self.present(receiveViewController, animated: true, completion: nil)
//        
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
