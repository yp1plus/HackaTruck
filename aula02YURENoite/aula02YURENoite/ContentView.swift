//
//  ContentView.swift
//  aula02YURENoite
//
//  Created by Student on 02/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var showAlert = false
    var body: some View {
        ZStack {
            Image("bg").resizable().scaledToFill().opacity(0.1).ignoresSafeArea()
            VStack{
                Text("Bem vindo, \(username)")
                TextField(
                        "Seu nome",
                        text: $username
                ).aspectRatio(contentMode: .fit).frame(width: 240).multilineTextAlignment(.center)
                Spacer()
                Image("logo").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 240)
                Image("truck").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 240)
                Spacer()
                Button("Entrar") {
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("ALERTA!"),
                            message: Text("You can't enter.")
                        )
                    }.foregroundColor(.blue)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
