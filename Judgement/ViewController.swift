//
//  ViewController.swift
//  Judgement
//
//  Created by pradnyanand milind pohare on 22/08/17.
//  Copyright © 2017 pradnyanand milind pohare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
      var randomCardIndex1 : Int = 0
    
     let cardArray = ["one", "two", "three", "four"]

    @IBOutlet weak var cardImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateCardImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        updateCardImage()
        
        
    }
    
    
    func updateCardImage(){
        
        randomCardIndex1 =  Int(arc4random_uniform(4))
        
        cardImage.image = UIImage(named: cardArray[randomCardIndex1])
       
    }

}

