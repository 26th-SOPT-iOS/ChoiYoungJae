//
//  LoginService.swift
//  HW2-1
//
//  Created by 최영재 on 16/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import Foundation
import Alamofire

struct LoginService {
    static let shared = LoginService()
    private func makeParameter(_ id: String, _ pwd: String) -> Parameters {
        return ["id": id, "password": pwd]
    }//Request Body에 들어갈 parameter 생성, String으로 받은걸 list로 만들어주는 과정임;;
    
    func login(id: String, pwd: String, completion: @escaping (NetworkResult<Any>) -> Void) {
        let header: HTTPHeaders = ["Content-Type": "application/json"]
        let dataRequest = Alamofire.request(APIConstants.signinURL, method: .post, parameters: makeParameter(id, pwd), encoding:
            JSONEncoding.default, headers: header)
        
        //데이터 통신
        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else { return }
                //guard : dataResponse.response의 값이 존재하면 statusCode = dataResponse.response 선언을 하고, 아니면 그냥 리턴
                guard let value = dataResponse.result.value else { return }
                let networkResult = self.judge(by: statusCode, value)
                completion(networkResult)
            case .failure: completion(.networkFail)
            }
        }
    }
    
    private func judge(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200: return isUser(by: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    private func isUser(by data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(SigininData.self, from: data) else { return .pathErr }
        //decoder.decode의 값이 존재하면 decodeDAta에 대입하고, 아니면 pathErr 리턴

        guard let tokenData = decodedData.data else { return .requestErr(decodedData.message) }
        return .success(tokenData.jwt)
    }
}
