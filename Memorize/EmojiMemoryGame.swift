//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Phoenix Pham on 2/25/24.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🦁", "🐯","🐱","🐶", "🐻‍❄️", "🦊","🐼","🙊"]
    
    private static func createMemorygame() -> MemoryGame<String>{
        return MemoryGame(numberOfPairsOfCards: 6){ pairIndex in
            if emojis.indices.contains(pairIndex){
                return emojis[pairIndex]
            } else {
                return "😜"
            }
        }
    }
    
    @Published private var model = createMemorygame()
    
    
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
    
    // MARK: - Intents
    func shuffle(){
        model.shuffle()
    }
}
