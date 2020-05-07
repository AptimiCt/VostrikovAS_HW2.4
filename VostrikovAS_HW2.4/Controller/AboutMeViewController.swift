//
//  AboutMeViewController.swift
//  VostrikovAS_HW2.4
//
//  Created by Александр Востриков on 04/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var fotoView: UIImageView!
    
    override func viewWillLayoutSubviews() {
        fotoView.layer.cornerRadius = fotoView.frame.size.width / 2
    }
}
