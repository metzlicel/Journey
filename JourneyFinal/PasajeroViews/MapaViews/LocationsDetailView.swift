//
//  LocationsDetailView.swift
//  MapApp
//
//  Created by Metzli Celeste on 17/10/24.
//

import SwiftUI
import MapKit

struct LocationsDetailView: View {
    @Binding var mapSelection: MKPlacemark?
    @Binding var show: Bool
    @State private var lookAroundScene: MKLookAroundScene?
    @Binding var getDirections: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(.orange)
                    .padding()
                VStack(alignment: .leading) {
                    Text(mapSelection?.name ?? "Name Location")
                        .font(Font.custom("Poppins-ExtraBold", size: 16))
                        .foregroundColor(JBlack)
                    Text(mapSelection?.title ?? "Address Location")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(JBlack)
                        .lineLimit(2)
                        .padding(.trailing)
                }
                Spacer()
                
                Button {
                    show.toggle()
                    mapSelection = nil
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.gray, Color(.systemGray2))
                }
                .padding()
            }
            if let scene = lookAroundScene {
                LookAroundPreview(initialScene: scene)
                    .frame(height: 200)
                    .cornerRadius(12)
                    .padding()
            } else {
                ContentUnavailableView("Sin imágenes para mostrar", systemImage: "eye.slash")
            }
            
            VStack  (alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.green)
                    Text("Ruta más segura")
                        .font(Font.custom("Poppins-ExtraBold", size: 16))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.trailing)
                }
                HStack {
                    Image(systemName: "car.rear")
                        .resizable()
                        .frame(width: 24, height: 20)
                        .foregroundStyle(.green)
                    Text("Rosarito -> 5 y 10 -> UABC TEC")
                }
                HStack {
                    Image(systemName: "car.rear")
                        .resizable()
                        .frame(width: 24, height: 20)
                        .foregroundStyle(.red)
                    Text("5 y 10 -> Parque Morelos -> Circuito CETYS -> Altiplano")
                }
                HStack {
                    Text("Siguiente transporte: ")
                        .font(Font.custom("Poppins-SemiBold", size: 12))
                        .foregroundColor(JBlack)
                        .foregroundStyle(.gray)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.yellow)
                            .frame(width: 60, height: 20)
                        HStack (spacing: 5){
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.black)
                            Text("10 MIN")
                                .font(Font.custom("Poppins-Bold", size: 10))
                        }
                    }
                    
                }
                Text("CHOFÉR")
                    .font(Font.custom("Poppins-Semibold", size: 10))
                    .font(.caption)
                    .foregroundStyle(.gray)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .opacity(0.1)
                            .frame(width: 345, height: 52)
                        HStack (spacing: 12){
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.black)
                            
                            VStack (alignment: .leading, spacing: 3) {
                                Text("Eduardo Rojas")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                      HStack {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.yellow)
                                    Text("4.8")
                                        .font(.custom("", fixedSize: 12))
                                    
                                }
                            }
                            Spacer()
                            Image(systemName: "arrow.right")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.black)
                        }
                        .frame(width: 300, height: 52)
                    }
                    
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 35)
                    .fill(.black)
                    .frame(width: 266, height: 39)
                RoundedRectangle(cornerRadius: 35)
                    .fill(.white)
                    .frame(width: 264, height: 37)
                HStack {
                    Text("Más choferes")
                    Image(systemName: "arrow.right")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundStyle(.black)
                    
                }
            }
            .frame(width: 350)
            .padding()
            
            Button {
                getDirections = true
                show = false
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 35)
                        .fill(.black)
                        .frame(width: 266, height: 39)
                    RoundedRectangle(cornerRadius: 35)
                        .fill(Color(SOSRed))
                        .frame(width: 264, height: 37)
                    HStack {
                        Text("Ver ruta")
                            .foregroundStyle(.white)
                        
                    }
                    
                }
            }
        }
        .onAppear {
            fetchLookAroundPreview()
        }
        .onChange(of: mapSelection) { oldValue, newValue in
            fetchLookAroundPreview()
        }
    }
}

extension LocationsDetailView {
    func fetchLookAroundPreview() {
        if let mapSelection {
            lookAroundScene = nil
            Task {
                let request = MKLookAroundSceneRequest(coordinate: mapSelection.coordinate)
                lookAroundScene = try? await request.scene
                
            }
        }
    }
}
#Preview {
    LocationsDetailView(mapSelection: .constant(nil), show: .constant(false), getDirections: .constant(false))
}
