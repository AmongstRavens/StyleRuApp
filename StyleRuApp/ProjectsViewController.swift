//
//  ProjectsViewController.swift
//  StyleRuApp
//
//  Created by Sergey on 3/8/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit
import SWRevealViewController

class ProjectsViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonGestureRecognizer(for: menuButton)
        setCustomNavigationBarColor()
    }
    

}
