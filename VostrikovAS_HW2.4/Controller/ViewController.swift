//
//  ViewController.swift
//  VostrikovAS_HW2.4
//
//  Created by Александр Востриков on 02/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonNo() {
        alertNo()
    }
    
    private func alertNo(){
        let alert = UIAlertController(title: "", message: "Надеюсь, как закрыть приложение вы знаете!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

