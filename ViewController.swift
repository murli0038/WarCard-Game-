//
//  ViewController.swift
//  WarCard
//
//  Created by Nikunj Prajapati on 07/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var leftCardImage: UIImageView!
    @IBOutlet weak var rightCardImage: UIImageView!
    @IBOutlet weak var systemScorelbl: UILabel!
    @IBOutlet weak var playerScorelbl: UILabel!
    
    var incrementofPlayer:Int = 0
    {
        didSet
        {
            playerScorelbl.text = "\(incrementofPlayer)"
        }
    }
    
    var incrementofSystem:Int = 0
    {
        didSet
        {
            systemScorelbl.text = "\(incrementofSystem)"
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealButtonTapped(_ sender: Any)
    {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftCardImage.image = UIImage(named: "card\(leftNumber)")
        rightCardImage.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber
        {
            incrementofPlayer += 1
        }
        else if rightNumber>leftNumber
        {
            incrementofSystem += 1
        }
    }
}

