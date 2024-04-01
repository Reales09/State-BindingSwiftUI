//
//  ContentView.swift
//  StateBinding
//
//  Created by Reales Rectoro Myles Clarence on 31/03/24.
//

import SwiftUI

struct ContentView: View {
    //Binding: es la conexión entre una propiedad que almacena datos(variable) y una vista que cambia el valor ejemplo (Textfield)
    
    
    @State var  x = "Titulo"
    var x1 = 2
    @State private var show = true
    @State private var numero = 0
    @State private var numeroMoneda = 123
    @State private var numeroMoneda2 = "0"

    
    func suma() ->Int{
        x = "Cambiando su valor" // variable viene de fuera se usa state
        var x2 = 2 // variable se crea dentro de la funcion no se usa el state
        x2 = 4
        return x2
    }
    var body: some View {
        VStack {
            Text(x).font(.largeTitle)
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
                Button(action: {
                    numeroMoneda = numeroMoneda + Int(numeroMoneda2)!
                }){
                    Image(systemName: "dollarsign.circle.fill").foregroundColor(.yellow).font(.largeTitle)
                }
                Text(String(numeroMoneda)).bold()

            }
            TextField("Titulo", text: $numeroMoneda2)
                .keyboardType(.numberPad)
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
