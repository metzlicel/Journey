//
//  SOSButtonChoferView.swift
//  JourneyFinal
//
//  Created by Metzli Celeste on 19/10/24.
//

import SwiftUI

struct SOSButtonChoferView2: View {
    @State private var pressed: Bool = false

    var body: some View {
        ZStack {
            Color(SOSRed)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
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
                }
                Spacer()
                VStack (alignment: .leading){
                    HStack {
                        Text("Estaciona el vehículo")
                            .font(Font.custom("Poppins-SemiBold", size: 28))
                            .foregroundStyle(.white)
                        Spacer()
                        Image(systemName: "car")
                            .resizable()
                            .frame(width: 50, height: 40)
                            .foregroundStyle(.white)
                    }
                    Text("--------------------")
                        .foregroundStyle(.white)
                        .opacity(0.5)
                        .font(.title)
                        .fontWeight(.semibold)
                    HStack {
                        Text("Busca la salida más cercana")
                            .foregroundStyle(.white)
                            .font(Font.custom("Poppins-SemiBold", size: 28))
                        Spacer()
                        Image(systemName: "car.rear.road.lane")
                            .resizable()
                            .frame(width: 55, height: 30)
                            .foregroundStyle(.white)
                    }
                    Text("--------------------")
                        .foregroundStyle(.white)
                        .opacity(0.5)
                        .font(.title)
                        .fontWeight(.semibold)
                    HStack {
                        Text("Llamar a las autoridades")
                            .foregroundStyle(.white)
                            .font(Font.custom("Poppins-SemiBold", size: 28))
                        Spacer()

                        Image(systemName: "phone.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                    }
                }
                Spacer()
                Text("Los pasajeros y sus contactos recibirán una alerta de emergencia.")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                Spacer()

            }
            .frame(width: 300)
        }
        
    }

}

#Preview {
    SOSButtonChoferView2()
}
