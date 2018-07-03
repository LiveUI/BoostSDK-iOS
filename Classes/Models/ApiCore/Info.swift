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
        
        /// Available icon sizes
        public enum Size: Int, Codable {
            
            /// 64x64 px
            case size64 = 64
            
            /// 128x128 px
            case size128 = 128
            
            /// 192x192 px
            case size192 = 192
            
            /// 256x256 px
            case size256 = 256
            
            /// 512x512 px
            case size512 = 512
            
        }
        
        /// Size
        let size: Size
        
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


extension Array where Element == Info.ServerIcon {
    
    /// Icon URL for specific size
    public func url(size: Info.ServerIcon.Size) -> String? {
        for s in self {
            if s.size == size {
                return s.url
            }
        }
        return last?.url
    }
    
}
