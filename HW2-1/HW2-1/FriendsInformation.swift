//
//  FriendsInformation.swift
//  HW2-1
//
//  Created by 최영재 on 15/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import Foundation

struct FriendInformation {
var profileimage: ProfileImage
var name: String
var profile: String
init(profileimage: ProfileImage, name: String, profile: String) {
self.profileimage = profileimage
self.name = name
self.profile = profile
}
}
enum ProfileImage {
case profile1
case profile2
case profile3
case profile4
case profile5
case profile6
case profile7
case profile8
case profile9
    
    
func getImageName() -> String {
switch self {
case .profile1: return "profile1Img"
case .profile2: return "profile2Img"
case .profile3: return "profile3Img"
case .profile4: return "profile4Img"
case .profile5: return "profile5Img"
case .profile6: return "profile6Img"
case .profile7: return "profile7Img"
case .profile8: return "profile8Img"
case .profile9: return "profile9Img"
    
    
}
}
}
