//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Phoenix Pham on 2/25/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame();
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}

