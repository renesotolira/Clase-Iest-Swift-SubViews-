//
//  MeansOfTransportView.swift
//  Refactorizar
//
//  Created by Rene SL on 18/09/23.
//

import SwiftUI

struct MeansOfTransportView: View {
   
    var name: String
    var icon: String
    @Binding var pressed : Bool
    
    var body: some View {
        
        Label(name, systemImage: icon)
            .rotationEffect(Angle(degrees: pressed ? 180 : 0))
            .modifier(CardViewModifier())
            .onTapGesture {
                withAnimation(){
                    self.pressed.toggle()
                }
            }
    }
}

struct MeansOfTransportView_Previews: PreviewProvider {
    static var previews: some View {
        MeansOfTransportView(name: "Medio de transporte", icon: "car", pressed: .constant(false))
    }
}
