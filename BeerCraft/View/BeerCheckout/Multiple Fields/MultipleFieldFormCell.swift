//
//  MultipleFieldFormCell.swift
//  BeerCraft
//
//  Created by Siddhant Mishra on 01/08/19.
//  Copyright © 2019 Siddhant Mishra. All rights reserved.
//

import UIKit

class MultipleFieldFormCell: UITableViewCell {

    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!

    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
    
    var formData:[String] = []{
        didSet{
            if formData.count > 0{
                let data = formData[0].components(separatedBy: "|")
                
                if data.count>0{
                    lbl1.text = data[0]
//                    tf1.attributedPlaceholder = NSAttributedString(
//                                                    string: data[0],
//                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.init(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)])
                    tf1.addLine(color: #colorLiteral(red: 0.9176470588, green: 0.6745098039, blue: 0.1843137255, alpha: 1), width: 0.3)
                }
                
                if data.count>1{
                    lbl2.text = data[1]
//                    tf2.attributedPlaceholder = NSAttributedString(
//                                                    string: data[1],
//                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
                    tf2.addLine(color: #colorLiteral(red: 0.9176470588, green: 0.6745098039, blue: 0.1843137255, alpha: 1), width: 0.3)
                }
            }
        }
    }
}
