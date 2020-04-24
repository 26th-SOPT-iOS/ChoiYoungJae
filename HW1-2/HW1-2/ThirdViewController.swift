//
//  ThirdViewController.swift
//  HW1-2
//
//  Created by 최영재 on 18/04/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPresentField()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var idPresentField: UITextField!
    @IBOutlet weak var passwordPresentField: UITextField!
    
    var id: String? //id 받을 변수
    var password: String? //password 받을 변수
    
    private func setPresentField(){
        guard let id = self.id else { return }
        guard let password = self.password else { return }
        
        //값 대입
        idPresentField.text = id
        passwordPresentField.text = password
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
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
