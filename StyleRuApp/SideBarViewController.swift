//
//  SideBarViewController.swift
//  StyleRuApp
//
//  Created by Sergey on 3/8/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class SideBarViewController: UIViewController {

    
    @IBOutlet weak var headerStackViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var profileAvatarImageView: UIImageView!
    
    private let screenWidth = UIScreen.main.bounds.size.width
    let veilView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileAvatarImageView.backgroundColor = UIColor.gray
        profileAvatarImageView.image = #imageLiteral(resourceName: "Syl")
        profileAvatarImageView.layer.cornerRadius = profileAvatarImageView.bounds.size.width / 2
        profileAvatarImageView.clipsToBounds = true
        
        headerStackViewWidthConstraint.constant = screenWidth * 4/5 - 15
        
        veilView.frame = CGRect(x: 0, y: 0, width: self.revealViewController().rearViewController.view.bounds.size.width, height: self.revealViewController().rearViewController.view.bounds.size.height)
        veilView.layer.isOpaque = true
        veilView.backgroundColor = UIColor.black.withAlphaComponent(0)
        veilView.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        veilView.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if self.revealViewController() != nil{
            self.revealViewController().frontViewController.view.addSubview(veilView)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        veilView.removeFromSuperview()
        self.revealViewController().frontViewController.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }

}
