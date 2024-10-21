//
//  PasajeroRegisterView2.swift
//  Journey
//
//  Created by Metzli Celeste on 13/10/24.
//

import SwiftUI

struct PasajeroRegisterView2: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack (alignment: .leading){
                    Text("Visualiza las")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("paradas de")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("transporte")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("cercanas a ti")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.top, 40)
                Spacer()
                VStack {
                    NavigationLink(destination: PasajeroRegisterView3(), label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 35)
                                .fill(JBlack)
                                .frame(width: 260, height: 50)
                            HStack {
                                Text("Siguiente")
                                    .font(Font.custom("Poppins-Regular", size: 20))
                                    .foregroundColor(.white)
                            }
                        }
                })
                }
                .padding()
            }
        }
    }
}

#Preview {
    PasajeroRegisterView2()
}
