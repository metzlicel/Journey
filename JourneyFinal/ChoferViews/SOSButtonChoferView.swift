//
//  SOSButtonChoferView.swift
//  JourneyFinal
//
//  Created by Metzli Celeste on 19/10/24.
//

import SwiftUI

struct SOSButtonChoferView: View {
    @State private var SOS: Bool = false

    var body: some View {
            VStack {
                HStack {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundStyle(.black)
                    Spacer()
                    Text("SOS")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.black)
                    Spacer()
                    Image(systemName: "info.circle")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.black)
                }
                Spacer()
                Button {
                    SOS.toggle()
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 266, height: 266)
                            .foregroundColor(.red.opacity(0.25))
                        Circle()
                            .frame(width: 201, height: 201)
                            .foregroundColor(.red)
                        Text("Presiona")
                            .font(Font.custom("Poppins-SemiBold", size: 24))
                            .foregroundStyle(.white)

                        
                    }
                    
                }

               Spacer()
            }
            .frame(width: 300)
            .sheet(isPresented: $SOS, content: { SOSButtonChoferView2() })
        }

}

#Preview {
    SOSButtonChoferView()
}
