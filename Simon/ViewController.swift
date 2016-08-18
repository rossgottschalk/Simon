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
    //var grid = [[0,0], [0,0]]
    var redSquare: UIButton!
    var blueSquare: UIButton!
    var greenSquare: UIButton!
    var yellowSquare: UIButton!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        let redSquare = UIButton(frame: CGRect(x: 60, y: 100, width: 100, height: 100))
        let blueSquare = UIButton(frame: CGRect(x: 165, y: 100, width: 100, height: 100))
        let greenSquare = UIButton(frame: CGRect(x: 60, y: 205, width: 100, height: 100))
        let yellowSquare = UIButton(frame: CGRect(x: 165, y: 205, width: 100, height: 100))
        
        
        redSquare.backgroundColor = UIColor.red
        blueSquare.backgroundColor = UIColor.blue
        greenSquare.backgroundColor = UIColor.green
        yellowSquare.backgroundColor = UIColor.yellow
        
        view.addSubview(redSquare)
        view.addSubview(blueSquare)
        view.addSubview(greenSquare)
        view.addSubview(yellowSquare)
  /*
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
 */
        
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

