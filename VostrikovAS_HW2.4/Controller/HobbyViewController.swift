//
//  HobbyViewController.swift
//  VostrikovAS_HW2.4
//
//  Created by Александр Востриков on 04/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class HobbyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let hobby = ["Футбол",
                 "Шахматы",
                 "Пайнтбол",
                 "Батут"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hobby.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellHobby", for: indexPath)
        
        cell.textLabel?.text = hobby[indexPath.row]
        cell.imageView?.image = UIImage(named: hobby[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 4
        cell.imageView?.clipsToBounds = true
        cell.backgroundColor = .orange
        
        return cell
    }
}
