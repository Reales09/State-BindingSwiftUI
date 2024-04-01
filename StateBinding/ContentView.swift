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
    
    func suma() ->Int{
        x = "Cambiando su valor" // variable viene de fuera se usa state
        var x2 = 2 // variable se crea dentro de la funcion no se usa el state
        x2 = 4
        return x2
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
