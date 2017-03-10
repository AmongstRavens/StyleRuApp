//
//  DirectionsViewController.swift
//  StyleRuApp
//
//  Created by Sergey on 3/11/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class DirectionsViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonGestureRecognizer(for: menuButton)
        setCustomNavigationBarColor()
    }

}
