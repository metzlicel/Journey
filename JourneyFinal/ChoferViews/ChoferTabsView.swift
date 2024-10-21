//
//  ChoferTabsView.swift
//  JourneyFinal
//
//  Created by Metzli Celeste on 19/10/24.
//

import SwiftUI

struct ChoferTabsView: View {
    @State var selectedIndex = 0
    var body: some View {
        NavigationStack {
            TabView {
                InicioReviewsView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Inicio")
                }
                    .tag(0)

                SOSButtonChoferView()
                    .tabItem {
                        Image(systemName: "sos.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.red)
                }
                    .tag(1)

                AjustesView()
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Ajustes")

                }
                    .tag(2)

            }
            .tint(.black)
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    ChoferTabsView()
}
