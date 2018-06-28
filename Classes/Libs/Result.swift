//
//  Result.swift
//  BoostSDK
//
//  Created by Ondrej Rafaj on 15/12/2017.
//  Copyright © 2017 LiveUI. All rights reserved.
//

import Foundation


public enum Result<Expectation> {
    case error(Error?)
    case success(Expectation)
}


extension Result where Expectation == Networking.DataResponseTuple {
    
    public func unwrap() throws -> Expectation {
        switch self {
        case .success(let expectation):
            return expectation
        case .error(let error):
            guard let error = error else {
                throw Problem.unknownProblem
            }
            throw error
        }
    }
    
    public func unwrap<T>(to: T.Type) throws -> T where T: Decodable {
        let object = try unwrap().data.as(to)
        return object
    }
    
}
