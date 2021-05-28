//
//  ContentView.swift
//  memorize-2021-original
//
//  Created by Leonid Nazarov on 25.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    private var vm = EmojiGameViewModel()
//    let emojis = ["🔥", "😀", "😇", "😈", "👄", "👧", "🪀", "🏀"]
    @State private var emojiCount = 3
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 140))]) {
                    ForEach(vm.cards) { emoji in
                        CardView(content: emoji.content)
                    }
                }
            }
            .padding()
            Spacer()
//            HStack {
//                removeButton
//                Spacer()
////                addButton
//            }
//            .font(.largeTitle)
//            .padding(.horizontal)
        }
        
    }
    
//    var removeButton: some View {
//        Button(action: {
//            if emojiCount > 0 {
//                emojiCount -= 1
//                print(emojiCount)
//            }
//        }, label: {
//            Image(systemName: "minus.circle")
//        })
//    }
//
//    var addButton: some View {
//        Button(action: {
//            if emojiCount < emojis.count {
//                emojiCount += 1
//            }
//        }, label: {
//            Image(systemName: "plus.circle")
//        })
//    }
}

struct CardView: View {
    
    @State private var isFaceUp = true
    var content: String
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill().foregroundColor(.white)
                RoundedRectangle(cornerRadius: 25.0)
                    .strokeBorder(Color.pink, lineWidth: 3)
                Text(content)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.pink)
            }
        }
        .aspectRatio(2/3, contentMode: .fit)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
