//
//  ContentView.swift
//  Refactorizar
//
//  Created by Rene SL on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var pressed : Bool = false
    @State var place : String = ""
    
    var body: some View {
        
        VStack{
            
            
            TextField("¿A donde deseas viajar?", text: $place).padding()
            Text("Viajaremos a \(place)")
            
            ScrollView(.horizontal){
                HStack(){
                    MeansOfTransportView(name: "Tren", icon: "tram", pressed: $pressed)
                    
                    MeansOfTransportView(name: "Bus", icon: "bus", pressed: $pressed)
                   
                    MeansOfTransportView(name: "Avión", icon: "airplane", pressed: $pressed)
                  
                    MeansOfTransportView(name: "Ferry", icon: "ferry.fill", pressed: $pressed)
                }
            }
            
            ScrollView(){
                TrainCardView(name: "Tren Bala Kodama", iconColor: Color.yellow)
                TrainCardView(name: "Tren Bala Nozomi", iconColor: Color.green)
                TrainCardView(name: "Tren Bala Sakura", iconColor: Color.pink)
                TrainCardView(name: "Tren Bala Hikari", iconColor: Color.blue)
                TrainCardView(name: "Tren Bala Hayabusa", iconColor: Color.red)
                TrainCardView(name: "JR Yamanote", iconColor: Color.purple)
                TrainCardView(name: "JR Chuou", iconColor: Color.orange)
                TrainCardView(name: "Sanyou Line", iconColor: Color.cyan)
                TrainCardView(name: "Super Line Takamatsu", iconColor: Color.teal)
                TrainCardView(name: "FujiSubaru Line", iconColor: Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
