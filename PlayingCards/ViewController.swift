//
//  ViewController.swift
//  PlayingCards
//
//  Created by Mac on 4/23/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayCardDeck()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print()
        for _ in 1...60{
            if let card = deck.draw(){
                print(card)
            }
        }
    }


}

