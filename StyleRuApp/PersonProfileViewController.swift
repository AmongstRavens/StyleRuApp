//
//  PersonProfileViewController.swift
//  StyleRuApp
//
//  Created by Sergey on 3/8/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit
import SWRevealViewController

class PersonProfileViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }

}
