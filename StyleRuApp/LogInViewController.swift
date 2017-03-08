//
//  LogInViewController.swift
//  StyleRuApp
//
//  Created by Sergey on 3/8/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.layer.zPosition = 2
        enterButton.layer.zPosition = 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createGradientLayer()
    }

    
    private func createGradientLayer() {
        var gradientLayer : CAGradientLayer!
//        let startColor : CGColor = UIColor(red: 26, green: 186, blue: 190, alpha: 1).cgColor
//        let endColor : CGColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1).cgColor
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.cyan.cgColor, UIColor.white.cgColor]
        self.view.layer.addSublayer(gradientLayer)
    }

}
