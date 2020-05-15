//
//  FriendTableViewController.swift
//  HW2-1
//
//  Created by 최영재 on 15/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class FriendTableViewController: UIViewController {
    
    @IBOutlet weak var friendTableView: UITableView!
    
    private var friendinformation: [FriendInformation] = []
    private var myinformation: [FriendInformation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setfriendsInformation()
        friendTableView.datasource = self
        friendTableView.delegate = self
    }
    
private func setfriendsInformation() {
let friend1 = FriendInformation(profileimage: .profile1, name: "영재", profile: "무무")
let friend2 = FriendInformation(profileimage: .profile2, name: "버디", profile: "법법")
let friend3 = FriendInformation(profileimage: .profile3, name: "명치", profile: "멍멍")
let friend4 = FriendInformation(profileimage: .profile4, name: "뽀삐", profile: "월월")
let friend5 = FriendInformation(profileimage: .profile5, name: "샤론", profile: "왈왈")
let friend6 = FriendInformation(profileimage: .profile6, name: "금동이", profile: "뿡뿡")
let friend7 = FriendInformation(profileimage: .profile7, name: "황자", profile: "빵빵")
let friend8 = FriendInformation(profileimage: .profile8, name: "혜림", profile: "으익")
let friend9 = FriendInformation(profileimage: .profile9, name: "하연", profile: "요호")
    
friendinformation = [friend2, friend3, friend4, friend5, friend6, friend7, friend8, friend9]
myinformation = [friend1]
}
    
}

extension FriendTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let FriendCell = tableView.dequeueReusableCell(withIdentifier: FriendCell.identifier, for:
        indexPath) as? FriendCell else { return UITableViewCell() }
    FriendCell.setfriendsInformation(profileimage:
        friendinformation[indexPath.row].profileimage.getImageName(),
                                   name: friendinformation[indexPath.row].name,
                                   profile: friendinformation[indexPath.row].profile)
    return FriendCell
    
    }
}
    
//    else{  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//          guard let FriendCell = tableView.dequeueReusableCell(withIdentifier: FriendCell.identifier, for:
//              indexPath) as? FriendCell else { return UITableViewCell() }
//          FriendCell.setfriendsInformation(profileimage:
//              friendinformation[indexPath.row].profileimage.getImageName(),
//                                         name: friendinformation[indexPath.row].name,
//                                         profile: friendinformation[indexPath.row].profile)
//          return FriendCell
//
//    } }
    
    
    

    
extension FriendTableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
return 60
}
}

