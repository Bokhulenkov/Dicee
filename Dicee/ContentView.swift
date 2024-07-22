//
//  ContentView.swift
//  Dicee
//
//  Created by Alexander Bokhulenkov on 22.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                
//                Раздвигаем
                Spacer()

                
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 2)
                }
                .padding(.horizontal)
                
                Spacer()

                Button("Roll") {
                    print("button")
                }
                .foregroundStyle(Color.white)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .padding(.horizontal)
                .background(Color.red)
                
                Divider()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}
