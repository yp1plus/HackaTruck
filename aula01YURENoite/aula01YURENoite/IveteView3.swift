//
//  IveteView3.swift
//  aula01YURENoite
//
//  Created by Student on 01/03/23.
//

import SwiftUI

struct IveteView3: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://br.paipee.com/wp-content/uploads/2023/03/500x500.jpg"))
            { image in
                image.resizable().scaledToFit().frame(maxWidth: 240)
            } placeholder: {
                Image(systemName: "photo.fill")
            }.overlay(
                Text("Ivete Sangalo").font(.title).foregroundColor(.blue).bold(),
                alignment: .top
            )
            Spacer()
            AsyncImage(url: URL(string: "https://br.paipee.com/wp-content/uploads/2023/03/500x500.jpg"))
            { image in
                image.resizable().scaledToFit().clipShape(Circle())
                    .frame(maxWidth: 240)
            } placeholder: {
                Image(systemName: "photo.fill")
            }
            Spacer()
            Rectangle().scaledToFit().frame(maxWidth: 240)
                .overlay(
                    HStack{
                        Text("Rainha").font(.title3).foregroundColor(.red)
                        Text("do").font(.title3).foregroundColor(.blue)
                        Text("Carnaval").font(.title3).foregroundColor(.yellow)
                    }.padding(.bottom, 20),
                    alignment: .bottom
                )
            
        }.padding()
    }
}

struct IveteView3_Previews: PreviewProvider {
    static var previews: some View {
        IveteView3()
    }
}
