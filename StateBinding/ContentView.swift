//
//  ContentView.swift
//  StateBinding
//
//  Created by Reales Rectoro Myles Clarence on 31/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var  x = ""
    var x1 = 2
    @State private var show = true
    @State private var numero = 0
    
    func suma() ->Int{
        x = "Cambiando su valor" // variable viene de fuera se usa state
        var x2 = 2 // variable se crea dentro de la funcion no se usa el state
        x2 = 4
        return x2
    }
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    show.toggle()
                    if show {
                        numero -= 1
                    }else{
                        numero += 1
                    }
                }){
                    if show {
                        Image(systemName: "heart").foregroundColor(.red).font(.largeTitle)
                    }else{
                        Image(systemName: "heart.fill").foregroundColor(.red).font(.largeTitle)
                    }
                    Text(String(numero)).bold()
                }

            }
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
