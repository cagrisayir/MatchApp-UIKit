//
//  CardModel.swift
//  MatchApp-UIKit
//
//  Created by Omer Cagri Sayir on 13.02.2024.
//

import Foundation

class CardModel {
    func getCards() -> [Card] {
        // Declare an empty array
        var generatedCards = [Card]()
        
        // Randomly generate 8 pairs of cards
        for _ in 1...8 {
            let randomNumber = Int.random(in: 1...13)
            let cardOne = Card()
            let cardTwo = Card()
            
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCards += [cardOne, cardTwo]
        }
        
        // randomize the cards within the array
        generatedCards.shuffle()
        // return the array
        return generatedCards
    }
}
