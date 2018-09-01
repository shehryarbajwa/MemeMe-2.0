//
//  CollectionCell.swift
//  MemeMe 2.0
//
//  Created by Shehryar Bajwa on 2018-09-01.
//  Copyright © 2018 Shehryar. All rights reserved.
//

import Foundation
import UIKit

class CollectionVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var memes: [Meme]!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        collectionView?.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let meme = memes[indexPath.item]
        cell.memeImg.image = meme.memedImage
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let controller = self.storyboard!.instantiateViewController(withIdentifier: "DetailMemeViewController") as! DetailMemeViewController
        controller.meme = self.memes[indexPath.item]
        self.navigationController!.pushViewController(controller, animated: true)
    }
}
