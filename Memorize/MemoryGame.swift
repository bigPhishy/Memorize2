//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Phoenix Pham on 2/25/24.
//

import Foundation

struct MemoryGame<CardContent> {
    
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0..<max(numberOfPairsOfCards, 2) {
            let content: CardContent = cardContentFactory(pairIndex);
            cards.append(Card( content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card){
        
    }
    
    mutating func shuffle(){
        cards.shuffle();
    }
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
    
}
