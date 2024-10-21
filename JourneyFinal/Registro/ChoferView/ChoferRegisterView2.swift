//
//  ChoferRegisterView2.swift
//  Journey
//
//  Created by Metzli Celeste on 12/10/24.
//

import SwiftUI
import MapKit

struct ChoferRegisterView2: View {
    let manager = CLLocationManager()
    var body: some View {
        NavigationStack {
            VStack {
                VStack (alignment: .leading){
                    Text("Consigue tu")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("insignia")
                        .font(Font.custom("Poppins-SemiBold", size: 48))
                        .foregroundColor(JBlack)
                    Text("Chofer de condianza")
                        .font(Font.custom("Poppins-Extrabold", size: 48))
                        .foregroundColor(JBlack)
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.top, 50)
                Spacer()
                VStack {
                    NavigationLink(destination: ChoferRegisterView3(), label: {
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
                        .onAppear {
                            manager.requestWhenInUseAuthorization()
                        }
                })
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    ChoferRegisterView2()
}
