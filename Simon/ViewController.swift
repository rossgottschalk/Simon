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
    enum ColorAsInt: Int
    {
        case red = 1
        case blue
        case green
        case yellow
    }
    
    var simonSequence = [String]()
    var playerSequence = [String]()
    
    
    
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func simonsTurn()
    {
        let randomChoice = arc4random_uniform(4) + 1
        var simonChose: ColorAsInt
        switch randomChoice {
        case 1:
            simonChose = .red
            simonSequence.append("\(simonChose)")
            buttonAnimation(redButton)
        case 2:
            simonChose = .blue
            simonSequence.append("\(simonChose)")
            buttonAnimation(blueButton)
        case 3:
            simonChose = .green
            simonSequence.append("\(simonChose)")
            buttonAnimation(greenButton)
        case 4:
            simonChose = .yellow
            simonSequence.append("\(simonChose)")
            buttonAnimation(yellowButton)
        default:
            print("no choice")
        }
        print(simonSequence)
    }
    
    
    func didPlayerLose ()
    {
        if playerSequence == simonSequence
        {
            simonsTurn()
        }
        
        //simonArray == playerArray
        //lose?
        //if no, simon goes()

    }

    
    func playerGoes()
    {
        //playerArray [0]
        //do playerArray.apped
        //while playerArray.count < simonArray.count
        //didPlayerLose()
    }

    
    
    
    
// MARK: Button Actions
    @IBAction func startTapped(_ sender: UIButton)
    {
        simonsTurn()
    }

    @IBAction func redTapped(_ sender: UIButton)
    {
        buttonAnimation(sender)
        playerSequence.append("red")
        print(playerSequence)
        if playerSequence.count == simonSequence.count
        {
            didPlayerLose()
        }
    }
    @IBAction func blueTapped(_ sender: UIButton)
    {
        buttonAnimation(sender)
        playerSequence.append("blue")
        print(playerSequence)
        if playerSequence.count == simonSequence.count
        {
            didPlayerLose()
        }
    }
    @IBAction func greenTapped(_ sender: UIButton)
    {
        buttonAnimation(sender)
        playerSequence.append("green")
        print(playerSequence)
        if playerSequence.count == simonSequence.count
        {
            didPlayerLose()
        }
    }
    @IBAction func yellowTapped(_ sender: UIButton)
    {
        buttonAnimation(sender)
        playerSequence.append("yellow")
        print(playerSequence)
        if playerSequence.count == simonSequence.count
        {
            didPlayerLose()
        }
    }

    
    
    
    func buttonAnimation(_ sender: UIButton)
    {
        let flashedButton = sender.backgroundColor
        sender.backgroundColor = UIColor.clear
        UIView.animate(withDuration: 0.3)
        {
            sender.backgroundColor = flashedButton!
        }
    }
}
