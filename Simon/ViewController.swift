//
//  ViewController.swift
//  Simon
//
//  Created by Ross Gottschalk on 8/18/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var grid = [[0,0], [0,0]]
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        let screenHeight = Int(view.bounds.height)
        let screenWidth = Int(view.bounds.width)
        
        let buttonHW = 100
        let buttonSpacing = 6
        
        let gridHW = (buttonHW * 2) + (buttonSpacing * 2)
        
        let leftSpacing = (screenWidth - gridHW) / 2
        let topSpacing = (screenHeight - gridHW) / 2
        
        for (r, row) in grid.enumerated()
        {
            for (c, _) in row.enumerated()
            {
                let x = c * (buttonHW + buttonSpacing) + leftSpacing
                let y = r * (buttonHW + buttonSpacing) + topSpacing
                
                let button = simonButton(frame: CGRect(x: x, y: y, width: buttonHW, height: buttonHW))
                button.backgroundColor = UIColor.red
                button.row = r
                button.col = c
                
                //button.addTarget(self, action: #selector(ViewController.spacePressed(_:)), for: .touchUpInside)
                view.addSubview(button)
            }
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
class simonButton: UIButton
{
    var row = 0
    var col = 0

}

