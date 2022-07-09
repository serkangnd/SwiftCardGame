//
//  ContentView.swift
//  card-war-challenge
//
//  Created by serkan gündoğan on 6.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    
                    //Generate random cards 2 to 14
                    let playerRnd = Int.random(in: 2...14)
                    let cpuRnd = Int.random(in: 2...14)
                    //update cards
                    playerCard = "card" + String( playerRnd)
                    cpuCard = "card" + String( cpuRnd)
                    //update scores
                    
                    if playerRnd > cpuRnd {
                        playerScore += 1
                    }
                    else if cpuRnd > playerRnd {
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    
                    VStack {
                        Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
  }
}
