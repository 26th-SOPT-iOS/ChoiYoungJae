//
//  FirstViewController.swift
//  HW1-1 2트
//
//  Created by 최영재 on 24/04/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func blacktransfer(_ sander: Any){
        self.navigationController?.pushViewController(BlackViewController, animated: true)
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
