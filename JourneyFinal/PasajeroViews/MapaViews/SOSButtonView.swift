//
//  SOSButtonView.swift
//  MapApp
//
//  Created by Metzli Celeste on 18/10/24.
//

import SwiftUI

public let SOSRed = Color(red: 0.91, green: 0.26, blue: 0.20)

struct SOSButtonView: View {
    @State private var pressed: Bool = false

    var body: some View {
        ZStack {
            Color(SOSRed)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundStyle(.white)
                    Spacer()
                    Text("SOS")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: "info.circle")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.white)
                    Spacer()
                }
                VStack (alignment: .leading){
                    HStack {
                        Text("Enviar ubicación a tiempo real a mis contactos")
                            .foregroundStyle(.white)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "location.viewfinder")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.white)
                    }
                    Text("--------------------")
                        .foregroundStyle(.white)
                        .opacity(0.5)
                        .font(.title)
                        .fontWeight(.semibold)
                    HStack {
                        Text("Enviar datos de mi viaje a mis contactos")
                            .foregroundStyle(.white)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")
                            .resizable()
                            .frame(width: 55, height: 60)
                            .foregroundStyle(.white)
                    }
                    Text("--------------------")
                        .foregroundStyle(.white)
                        .opacity(0.5)
                        .font(.title)
                        .fontWeight(.semibold)
                    HStack {
                        Text("Llamar contactos de emergencia")
                            .foregroundStyle(.white)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()

                        Image(systemName: "phone.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                    }
                }
                
            }
            .frame(width: 300)
        }
        
    }
}

#Preview {
    SOSButtonView()
}
