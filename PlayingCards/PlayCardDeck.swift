//
//  PlayCardDeck.swift
//  PlayingCards
//
//  Created by Mac on 4/23/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation

struct PlayCardDeck {
    
    private(set) var cards = [PlayingCard]()
    
    
    init() {
        
        for suit in PlayingCard.Suit.all{
            for rank in PlayingCard.Rank.all{
                let pCard = PlayingCard(suit:suit, rank:rank)
                cards.append(pCard)
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0{
            return cards.remove(at: cards.count.arc4random)
        }else{
            return nil
        }
    }
}


extension Int{
    var arc4random:Int{
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))
        }else if self < 0{
            return -Int(arc4random_uniform(UInt32(self) ))
        }else{
            return 0
        }
    }
}
