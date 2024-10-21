//
//  FirstView.swift
//  JourneyFinal
//
//  Created by Metzli Celeste on 19/10/24.
//

import SwiftUI
public let JBlack = Color(red: 0.13, green: 0.13, blue: 0.13)

struct FirstView: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 40) {
                Text("Journey")
                    .font(Font.custom("Poppins-Bold", size: 36))
                    .foregroundColor(JBlack)
                    .padding()
                Image("JourneyLogoWhite")
                    .resizable()
                    .frame(width: 250, height: 240)
            }
            .padding(80)
            VStack (spacing: 25) {
                NavigationLink(destination: RegisterView(), label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 35)
                            .fill(JBlack)
                            .frame(width: 260, height: 50)
                        HStack {
                            Text("Regístrate")
                                .font(Font.custom("Poppins-Regular", size: 17))
                                .foregroundColor(.white)
                        }
                    }
            })
                NavigationLink(destination: RegisterView(), label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 35)
                            .fill(.white)
                            .frame(width: 260, height: 50)
                        HStack {
                            Text("Iniciar sesión")
                                .font(Font.custom("Poppins-Regular", size: 17))
                                .foregroundColor(.black)
                        }
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 35)
                            .stroke(.black, lineWidth: 1))
            })
            }
        }
    }
}

#Preview {
    FirstView()
}
