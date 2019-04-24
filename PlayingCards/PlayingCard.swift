//
//  PlayingCard.swift
//  PlayingCards
//
//  Created by Mac on 4/23/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation

struct PlayingCard : CustomStringConvertible{
    var description: String {return "\(rank) \(suit)"}
    
    
    var suit: Suit
    var rank:Rank
    
    enum Suit:String,CustomStringConvertible{
        var description: String{return rawValue}
        
        case spades = "♠️"
        case hearts = "♥️"
        case clubs = "♣️"
        case diamonds = "♦️"
        
        static var all = [Suit.spades, .hearts, .clubs, .diamonds]
    }
    
    enum Rank : CustomStringConvertible{
        var description: String{
            switch self{
            case .ace: return "A"
            case .numeric(let pip): return String(pip)
            case .face(let kind) : return kind
            }
        }
        
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order:Int{
            switch self {
            case .ace: return 1
            case .numeric(let p): return p
            case .face(let kind) where kind == "J" : return 11
            case .face(let kind) where kind == "Q" : return 12
            case .face(let kind) where kind == "K" : return 13
            default:
                return 0
            }
        }
        
        static var all:[Rank]{
            var allRanks:[Rank] = [.ace]
            
            for pip in 2...10{
                allRanks.append(.numeric(pip))
            }
            
            allRanks += [.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
        
    }
}
