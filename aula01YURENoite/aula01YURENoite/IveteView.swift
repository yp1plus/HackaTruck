//
//  ContentView.swift
//  aula01YURENoite
//
//  Created by Student on 01/03/23.
//

import SwiftUI

struct IveteView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://br.paipee.com/wp-content/uploads/2023/03/500x500.jpg"))
            Text("Ivete Sangalo").font(.title).foregroundColor(.blue).bold()
            HStack{
                Text("Rainha").font(.title3).foregroundColor(.red)
                Text("do").font(.title3).foregroundColor(.blue)
                Text("Carnaval").font(.title3).foregroundColor(.yellow)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IveteView()
    }
}
