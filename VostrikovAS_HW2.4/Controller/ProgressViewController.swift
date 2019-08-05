//
//  ProgressViewController.swift
//  VostrikovAS_HW2.4
//
//  Created by Александр Востриков on 04/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class ProgressViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let lecture = ["Среда разработки Xcode. Работа с Git",
                   "Элементы пользовательского интерфейса (UIKit)",
                   "Контроль и приведение типов. Переходы и контроллеры навигации",
                   "Пошаговый проект: Personality Quiz — персонализированный опросник",
                   "Personality Quiz — персонализированный опросник. Часть 2",
                   "Создание приложения на основе UITableView",
                   "Протоколы", "Анатомия приложения. Архитектура MVC",
                   "CocoaPods и работа с анимациями",
                   "Сетевые запросы. URLSession"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lecture.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellProgress", for: indexPath)
        
        if indexPath.row > 3 {
            cell.backgroundColor = .red
            cell.accessoryType = .none
        }
        cell.textLabel?.text = lecture[indexPath.row]
        
        return cell
    }
  }
