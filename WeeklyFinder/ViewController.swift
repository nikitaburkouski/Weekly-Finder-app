//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Nikita on 10/28/20.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        let date = calendar.date(from: dateComponents)
        
        let weekday = dateFormatter.string(from: date!)
        let capitalizedWeekday = weekday.capitalized
        
        
        resultLabel.text = capitalizedWeekday
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }

}




