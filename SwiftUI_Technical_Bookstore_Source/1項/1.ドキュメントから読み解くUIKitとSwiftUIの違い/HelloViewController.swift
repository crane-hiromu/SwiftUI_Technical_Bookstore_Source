//
//  HelloViewController.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/09/10.
//  Copyright © 2019 h.crane. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabelColor()
    }

    func updateLabelColor() {
        textLabel.textColor = .red
    }
}

