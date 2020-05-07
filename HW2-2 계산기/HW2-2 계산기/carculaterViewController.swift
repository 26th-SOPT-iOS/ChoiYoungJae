//
//  carculaterViewController.swift
//  HW2-2 계산기
//
//  Created by 최영재 on 01/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class carculaterViewController: UIViewController {

    @IBOutlet var buttoncollection: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()

        // Do any additional setup after loading the view.
    }
func setLayout(){
            
            for button in buttoncollection{
                button.layer.cornerRadius = 0.5 * button.bounds.size.width
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
