//
//  ContentView.swift
//  HelloAppleWatch Watch App
//
//  Created by Ganesh on 05/06/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var sentence = EmojiSentence()
    
    var body: some View {
        VStack{
            Image("cookie")
                .resizable()
                .scaledToFit()
                .overlay {
                    Text(sentence.emoji)
                        .font(.title3)
                        .padding(.top,10)
                        .buttonStyle(.plain)
                }
            Text(sentence.text)
                .font(.caption)
                .padding(.top,20)
        }
        .onTapGesture {
            sentence.next()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
