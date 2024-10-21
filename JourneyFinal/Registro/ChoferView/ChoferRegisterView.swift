//
//  ChoferRegisterView.swift
//  Journey
//
//  Created by Metzli Celeste on 12/10/24.
//

import SwiftUI

struct ChoferRegisterView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack (alignment: .leading){
                    Text("Permite a")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("los pasajeros conocer tu ubicación")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("en ruta")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.top, 40)
                Spacer()
                VStack {
                    NavigationLink(destination: ChoferRegisterView2(), label: {
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
    ChoferRegisterView()
}
