//
//  SignupData.swift
//  HW2-1
//
//  Created by 최영재 on 19/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import Foundation

struct SignupData: Codable {
    var status: Int
    var success: Bool
    var message: String
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case success = "success"
        case message = "message"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(Int.self, forKey: .status)) ?? -1
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
    }
}
