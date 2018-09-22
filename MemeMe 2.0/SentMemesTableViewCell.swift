//
//  SentMemesTableViewCell.swift
//  MemeMe 2.0
//
//  Created by Shehryar Bajwa on 22/09/18.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import UIKit

class SentMemesTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var memedImage: UIImageView!
    @IBOutlet weak var topText: UILabel!
    @IBOutlet weak var bottomText: UILabel!
    
    //MARK: Custom Cell's Functions
    
    func updateCell(_ meme: Meme) {
        
        //update cell's view
        memedImage.image = meme.memedImage
        topText.text = meme.topText as String?
        bottomText.text = meme.bottomText as String?
    }
}
