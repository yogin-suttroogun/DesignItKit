//
//  ViewController.swift
//  DesignItKit-Demo
//
//  Created by Yogin Kumar Suttroogun on 2025-10-02.
//

import UIKit
import DesignItKit

class ViewController: UIViewController {
    
    var label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.font = UIFont.fontWithStyle(.heading3)
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }


}

