//
//  SentMemesCollectionViewCell.swift
//  MemeMe 2.0
//
//  Created by Shehryar Bajwa on 22/09/18.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import UIKit

class SentMemesCollectionViewCell: UICollectionViewCell {
    
    //MARK: Outlets
    
    @IBOutlet weak var memedImage: UIImageView!
    
    //MARK: Custom Cell's Functions
    
    func updateCell(_ meme: Meme) {
        
        //update cell's view
        memedImage.image = meme.memedImage
    }
}
