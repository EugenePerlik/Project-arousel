//
//  ViewController.swift
//  Project
//
//  Created by  Apple24 on 20/02/2019.
//  Copyright © 2019  Apple24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var deliveryLabel: UILabel!
    
    private var galleryCollectionView = GalleryCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        
        galleryCollectionView.set(cells: SushiModel.fetchSushi())
    }
    
    
    
}
