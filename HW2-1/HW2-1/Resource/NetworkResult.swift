//
//  NetworkResult.swift
//  HW2-1
//
//  Created by 최영재 on 16/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import Foundation
enum NetworkResult<T> {
    case success(T) //성공
    case requestErr(T) //요청에러
    case pathErr //경로에러
    case serverErr //서버내부에러
    case networkFail //네트워크연결실패
}
