//
//  Challenge2View.swift
//  aula02YURENoite
//
//  Created by Student on 02/03/23.
//

import SwiftUI

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

struct Challenge2View: View {
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var imc: Double = 0.0
    @State private var result: String = "Normal"
    @State private var red: Double = 0.0
    @State private var green: Double = 0.0
    @State private var blue: Double = 0.0
    @State private var color: String = "#c0d90b"
    var body: some View {
        Color(hexStringToUIColor(hex: color))
            .ignoresSafeArea()
            .overlay(
            VStack{
                Text("Calculadora de IMC").font(.title)
                Spacer()
                TextField(
                    "Peso",
                    text: $weight
                ).border(.primary).font(.title).keyboardType(.numberPad).padding()
                TextField(
                    "Altura",
                    text: $height
                ).border(.primary).font(.title).padding([.top, .bottom], 15).keyboardType(.numberPad).padding()
                Button("Calcular") {
                    let weightDouble = (weight as NSString).doubleValue;
                    let heightDouble = (height as NSString).doubleValue;
                    
                    imc = weightDouble / (heightDouble * heightDouble)
                    
                    if (imc < 18.5){
                        result = "Baixo peso"
                        color = "#83c635"
                    } else if (imc >= 18.5 && imc <= 24.99) {
                        result = "Normal"
                        color = "#c0d90b"
                    } else if (imc >= 25 && imc <= 29.99){
                        result = "Sobrepeso"
                        color = "#fca500"
                    } else if (imc >= 30) {
                        result = "Obesidade"
                        color = "#f67600"
                    }
                }.buttonStyle(.borderedProminent)
                Spacer()
                Text("\(result)").foregroundColor(.white).font(.title2)
                Spacer()
                Image("tabela-IMC").resizable().scaledToFit()
                
            }
        )
        
    }
}

struct Challenge2View_Previews: PreviewProvider {
    static var previews: some View {
        Challenge2View()
    }
}
