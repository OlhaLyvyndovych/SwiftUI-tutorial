//
//  ContentView.swift
//  Cards_challenge
//
//  Created by Olha Lyvyndovych on 11/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(/*@START_MENU_TOKEN@*/.container/*@END_MENU_TOKEN@*/, edges: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                        .padding(.trailing)
                    Spacer()
                    Image(cpuCard)
                        .padding(.leading)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    
                    
                    //Generate a random number between 2 and 14
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update the score
                    if(playerRand > cpuRand) {
                        playerScore += 1
                    } else if (cpuRand > playerRand) {
                        cpuScore += 1
                    }
                    
                }, label: {
                    HStack{
                        Image("dealbutton")
                    }
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title2)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title2)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 14.0/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
