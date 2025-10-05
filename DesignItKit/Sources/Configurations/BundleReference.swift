//
//  BundleReference.swift
//  DesignItKit
//
//  Created by Yogin Kumar Suttroogun on 2025-10-03.
//

import Foundation

public extension Bundle {
    /// Design system bundle.
    static var designItKit: Bundle? {
        let podBundle = Bundle(for: BundleReference.self)
        
        guard
            let resourceUrl = podBundle.url(forResource: "DesignItKit", withExtension: "bundle"),
            let resourceBundle = Bundle(url: resourceUrl)
        else { return podBundle }
        
        #warning("To remove afterwards")
//        guard
//            let resourceUrl = podBundle.url(forResource: "DesignItKit", withExtension: "bundle")
//        else { return podBundle }
//        guard
//            let resourceBundle = Bundle(url: resourceUrl)
//        else { return podBundle }
        
        
        return resourceBundle
    }
}

final class BundleReference { }

extension Bundle {
    static var token: Bundle? {
        return Bundle(for: BundleReference.self)
    }
}
