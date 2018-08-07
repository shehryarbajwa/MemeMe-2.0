//
//  DetailMemeViewController.swift
//  MemeMe 2.0
//
//  Created by Shehryar Bajwa on 2018-09-01.
//  Copyright © 2018 Shehryar. All rights reserved.
//

import Foundation
import UIKit

class DetailMemeViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    var meme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = meme.memedImage
    }
    
    @IBAction func editAction(_ sender: Any) {
        let memeEditorVC = storyboard!.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        memeEditorVC.memeSentFromDetail = self.meme
        self.navigationController?.pushViewController(memeEditorVC, animated: true)
    }
    
}
