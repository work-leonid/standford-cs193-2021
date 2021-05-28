//
//  Model.swift
//  memorize-2021-original
//
//  Created by Leonid Nazarov on 27.05.2021.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(id: pairIndex, content: content))
            cards.append(Card(id: pairIndex + 1, content: content))
        }
    }
    
    struct Card {
        let id: Int
        let isFaceUp = false
        let isMatched = false
        let content: CardContent
    }
}
