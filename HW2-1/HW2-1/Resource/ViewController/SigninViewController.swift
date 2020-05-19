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
    @IBAction func dojoin(_ sender: Any) {
        guard let joininputID = textfieldcollection2[0].text else { return }
        guard let joininputPWD = textfieldcollection2[1].text else { return }
        guard let joininputName = textfieldcollection2[2].text else { return }
        guard let joininputEmail = textfieldcollection2[3].text else { return }
        guard let joininputPhone = textfieldcollection2[4].text else { return }
        
        SignupService.shared.signup(id: joininputID, pwd: joininputPWD, name: joininputName, email: joininputEmail, phone: joininputPhone) { networkResult in
            switch networkResult {
            case .success(let token):
                guard let token = token as? String else { return }
                UserDefaults.standard.set(token, forKey: "token")
                //토큰 받아오기
                
                
                guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
                    "customTabbarController") as? UITabBarController else { return }
                tabbarController.modalPresentationStyle = .fullScreen
                self.present(tabbarController, animated: true, completion: nil)
            case .requestErr(let message):
                guard let message = message as? String else { return }
                let alertViewController = UIAlertController(title: "로그인 실패", message: message,
                                                            preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
            case .pathErr: print("path")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFail")
            }
        }
        
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
