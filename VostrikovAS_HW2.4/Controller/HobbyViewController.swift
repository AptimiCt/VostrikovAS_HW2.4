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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return hobby.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellHobby", for: indexPath)
        
        configureCell(cell)
        
        cell.textLabel?.text = hobby[indexPath.section]
        cell.imageView?.image = UIImage(named: hobby[indexPath.section])
        
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 4
        cell.imageView?.clipsToBounds = true
        cell.backgroundColor = .orange
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    func configureCell(_ cell: UITableViewCell) {
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.green.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
    }
}
