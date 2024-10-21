//
//  ChoferRegisterView3.swift
//  Journey
//
//  Created by Metzli Celeste on 12/10/24.
//

import SwiftUI

struct ChoferRegisterView3: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack (alignment: .leading){
                    Text("Se la primera")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("opción de tus")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("pasajeros")
                        .font(Font.custom("Poppins-Semibold", size: 48))
                        .foregroundColor(JBlack)
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.top, 50)
                Spacer()
                VStack {
                    NavigationLink(destination: ChoferTabsView(), label: {
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
    ChoferRegisterView3()
}
