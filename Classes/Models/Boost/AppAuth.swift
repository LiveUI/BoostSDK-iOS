//
//  AppAuth.swift
//  BoostSDK
//
//  Created by Ondrej Rafaj on 03/07/2018.
//

import Foundation


public struct AppAuth: Codable {
    
    public let file: String
    public let ios: String
    public let appId: String
    public let token: String
    public let plist: String
    
    enum CodingKeys: String, CodingKey {
        case file
        case ios
        case appId = "app_id"
        case token
        case plist
    }
    
}
