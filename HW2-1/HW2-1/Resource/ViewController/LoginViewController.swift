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
    @IBAction func dologin(_ sender: Any) {
        guard let inputID = textfieldcollection[0].text else { return }
        guard let inputPWD = textfieldcollection[1].text else { return }
        LoginService.shared.login(id: inputID, pwd: inputPWD) { networkResult in
            switch networkResult {
            case .success(let token):
                guard let token = token as? String else { return }
                UserDefaults.standard.set(token, forKey: "token")
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
