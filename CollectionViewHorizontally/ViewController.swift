//
//  ViewController.swift
//  CollectionViewHorizontally
//
//  Created by Sundir Talari on 12/04/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
var emoticons = [UIImage(named: "Cat"), UIImage(named: "Horse"),UIImage(named: "Penguin"),UIImage(named: "Wolf"),UIImage(named: "Monkey"),UIImage(named: "Rabbit"),UIImage(named: "Sheep")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return emoticons.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = emoticons[indexPath.row]
//        cell.layer.cornerRadius = 50
//        cell.layer.borderColor = UIColor.lightGray.cgColor
//        cell.layer.borderWidth = 3
        
        cell.view.layer.cornerRadius = 50
        cell.view.layer.borderColor = UIColor.lightGray.cgColor
        cell.view.layer.borderWidth = 3
        cell.view.clipsToBounds = true
        
    
        
        return cell
        
    }


}

