//
//  DesignItKitConfiguration.swift
//  DesignItKit
//
//  Created by Yogin Kumar Suttroogun on 2025-10-02.
//

import UIKit

public struct DesignItKitConfiguration {
    
    public static var shared: DesignItKitConfiguration = DesignItKitConfiguration()
    
    
    public init() {
        DesignItKitConfiguration.initFonts()
    }
    
    public static func initialize() {
        _ = DesignItKitConfiguration.shared
    }
    
    public static func initFonts() {
        registerFonts()
    }
}
