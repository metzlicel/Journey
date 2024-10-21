//
//  TabsView.swift
//  JourneyFinal
//
//  Created by Metzli Celeste on 19/10/24.
//

import SwiftUI

struct TabsView: View {
    @State var selectedIndex = 1
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedIndex)  {
                InicioView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Inicio")
                }
                .tag(0)

                MapaView()
                    .tabItem {
                        Image(systemName: "mappin.circle.fill")
                        Text("Rutas")
                }
                .tag(1)
                
                PerfilView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Perfil")

                }
                .tag(2)

            }
            .tint(.black)
        }
        .navigationBarBackButtonHidden(true)

        
    }
}

#Preview {
    TabsView()
}
