//
//  LogInViewController.swift
//  StyleRuApp
//
//  Created by Sergey on 3/8/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextFiled: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSettup()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createGradientLayer()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    
    private func createGradientLayer() {
        var gradientLayer : CAGradientLayer!

        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.gradientColor.cgColor, UIColor.white.cgColor]
        self.view.layer.addSublayer(gradientLayer)
    }
    
    private func initialSettup(){
        mainLabel.layer.zPosition = 2
        mainLabel.sizeToFit()
        enterButton.layer.zPosition = 2
        passwordTextField.layer.zPosition = 2
        loginTextFiled.layer.zPosition = 2
        logoImageView.layer.zPosition = 2
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

}
