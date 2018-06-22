//
//  Info.swift
//  BoostSDK
//
//  Created by Ondrej Rafaj on 01/04/2018.
//  Copyright © 2018 LiveUI. All rights reserved.
//

import Foundation


/// Basic server info model
public struct Info: Model {
    
    /// Server icon object
    public struct ServerIcon: Codable {
        
        /// Size
        let size: Double
        
        /// Icon URL
        let url: String
        
    }
    
    /// Server name
    public let name: String
    
    /// Server public URL
    public let url: String
    
    /// Available icons
    public let icons: [ServerIcon]
    
    enum CodingKeys: String, CodingKey {
        case name
        case url
        case icons
    }
    
}
