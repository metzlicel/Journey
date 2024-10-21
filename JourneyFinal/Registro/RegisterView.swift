//
//  RegisterView.swift
//  Journey
//
//  Created by Metzli Celeste on 12/10/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var userType: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                VStack (alignment: .leading) {
                    Text("¡Bienvenido a")
                        .font(Font.custom("Poppins-SemiBold", size: 28))
                        .foregroundColor(JBlack)
                    Text("Journey!")
                        .font(Font.custom("Poppins-SemiBold", size: 28))
                        .foregroundColor(JBlack)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(30)
                .padding(.top, 80)
                VStack (spacing: 30) {
                    Text("Regístrate como")
                        .font(Font.custom("Poppins-Medium", size: 20))
                        .foregroundColor(JBlack)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 30)
                        .padding(.leading, 30)

                    VStack (spacing: 20){
                        Button {
                            userType = "Chofer"
                        } label: {
                            NavigationLink(destination: ChoferRegisterView(), label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.white)
                                        .frame(width: 308, height: 75)
                                    HStack {
                                        Text("Chofer")
                                            .font(Font.custom("Poppins-Regular", size: 20))
                                            .foregroundColor(.black)
                                    }
                                }
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.black, lineWidth: 1))
                        })

                        }
                        Button {
                            print("Pasajero")
                            userType = "Pasajero"
                        } label: {
                            NavigationLink(destination: PasajeroRegisterView(), label: {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(JBlack)
                .frame(width: 308, height: 75)
            HStack {
                Text("Pasajero")
                    .font(Font.custom("Poppins-Regular", size: 20))
                    .foregroundColor(.white)
            }
        }
})
                        }
                                                
                    }
                    Spacer()
                }
            }
        }
       
    }
}

#Preview {
    RegisterView()
}
