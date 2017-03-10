//
//  extensions.swift
//  StyleRuApp
//
//  Created by Sergey on 3/11/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import Foundation
import UIKit
import SWRevealViewController

extension UIViewController{
    func setCustomNavigationBarColor(){
        if self.navigationController != nil{
            self.navigationController?.navigationBar.barTintColor = UIColor(red: 198/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1)
        }
    }
    
    func setCommonNavigationBarColor(){
        if self.navigationController != nil{
            self.navigationController?.navigationBar.barTintColor = UIColor.white
        }
    }
    
    func addButtonGestureRecognizer(for item: UIBarButtonItem){
        if revealViewController() != nil {
            item.target = revealViewController()
            item.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

extension UIColor{
    public class var barColor : UIColor{
        return UIColor(red: 198/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1)
    }
    
    public class var gradientColor : UIColor{
        return UIColor(red: 26/255.0, green: 186/255.0, blue: 190/255.0, alpha: 1)
    }
}

struct staticMethods {

}
