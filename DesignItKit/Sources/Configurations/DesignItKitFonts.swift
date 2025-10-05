//
//  DesignItKitFonts.swift
//  DesignItKit
//
//  Created by Yogin Kumar Suttroogun on 2025-10-04.
//

import UIKit

public enum FontStyle {
    case heading1
    case heading2
    case heading3
    case body16(bold: Bool = false)
    case body14(bold: Bool = false)
    case body12(bold: Bool = false)
    case body11(bold: Bool = false)
    case body10(bold: Bool = false)
    
    var name: String {
        switch self {
        case .heading1, .heading2, .heading3,
                .body16(bold: true), .body14(bold: true),.body12(bold: true),.body11(bold: true), .body10(bold: true):
            return "Lato-Bold"
        case .body16(bold: false), .body14(bold: false), .body12(bold: false),.body11(bold: false), .body10(bold: false):
            return "Lato-Regular"
        }
    }
    
    var size: CGFloat {
        switch self {
        case .heading1:
            return 32
        case .heading2:
            return 24
        case .heading3:
            return 20
        case .body16:
            return 16
        case .body14:
            return 14
        case .body12:
            return 12
        case .body11:
            return 11
        case .body10:
            return 10
        }
    }
}

// MARK: - Additional function to UIFont
extension UIFont {
    public static func fontWithStyle(_ style: FontStyle) -> UIFont {
        return UIFont(name: style.name, size: style.size) ?? UIFont()
    }
}

private var fontsRegistered = false

/// This is called in appDelegate didFinishLaunching and registers the fonts to allow usage
public func registerFonts() {
    guard !fontsRegistered,
          let fonts = Bundle(for: BundleReference.self).urls(
              forResourcesWithExtension: "ttf", subdirectory: nil
          )
    else {
        return
    }
    if #available(iOS 13.0, *) {
        CTFontManagerRegisterFontURLs(fonts as CFArray, .process, true, nil)
    } else {
        CTFontManagerRegisterFontsForURLs(fonts as CFArray, .process, nil)
    }
    fontsRegistered = true
}
