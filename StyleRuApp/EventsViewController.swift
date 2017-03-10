//
//  EventsViewController.swift
//  StyleRuApp
//
//  Created by Sergey on 3/11/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var eventsCollectionView: UICollectionView!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Main_cell", for: indexPath) as! MainCollectionViewCell
        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 15
//        cell.bounds.origin = CGPoint(x: 0, y: 0)
//        
//        cell.contentView.layer.borderWidth = 1.0
//        cell.contentView.layer.borderColor = UIColor.clear.cgColor
//        cell.contentView.layer.masksToBounds = true
//        
//        cell.layer.shadowColor = UIColor.lightGray.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        cell.layer.shadowRadius = 15.0
//        cell.layer.shadowOpacity = 1.0
//        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
//        cell.layer.cornerRadius = 15
//        cell.layer.masksToBounds = false
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonGestureRecognizer(for: menuButton)
        setCustomNavigationBarColor()
        eventsCollectionView.backgroundColor = UIColor.gray.withAlphaComponent(0.24)
        eventsCollectionView.contentInset = UIEdgeInsetsMake(-50, 10, 10, 10)

    }
}
