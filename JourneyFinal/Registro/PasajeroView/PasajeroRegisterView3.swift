//
//  PasajeroRegisterView3.swift
//  Journey
//
//  Created by Metzli Celeste on 13/10/24.
//

import SwiftUI

struct PasajeroRegisterView3: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack (alignment: .leading){
                    Text("Viaja con")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("choferes de")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("confianza")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.top, 40)
                Spacer()
                VStack {
                    NavigationLink(destination: TabsView(), label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 35)
                                .fill(JBlack)
                                .frame(width: 260, height: 50)
                            HStack {
                                Text("Empecemos")
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
    PasajeroRegisterView3()
}
