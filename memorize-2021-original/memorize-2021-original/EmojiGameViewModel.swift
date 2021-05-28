//
//  EmojiGameViewModel.swift
//  memorize-2021-original
//
//  Created by Leonid Nazarov on 27.05.2021.
//

import SwiftUI

class EmojiGameViewModel {
    private var model: MemoryGame<String> = MemoryGame(numberOfPairsOfCards: 3) { index in
        emojis[index]
    }
    
    static let emojis = ["🔥", "😀", "😇", "😈", "👄", "👧", "🪀", "🏀"]
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
