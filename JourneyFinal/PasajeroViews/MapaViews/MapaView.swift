//
//  MapaView.swift
//  JourneyFinal
//
//  Created by Metzli Celeste on 19/10/24.
//

import SwiftUI
import MapKit

struct MapaView: View {
    //Ubicacion del usuario
    @State private var cameraPosition: MapCameraPosition = .userLocation(fallback: .automatic)
    @State private var visibleRegion: MKCoordinateRegion?
    @State private var result: MKMapItem?
    
    // Search location
    @State var searchText = ""
    @State private var results = [MKMapItem]()
    
    //Mostrar resultados
    @State private var mapSelection: MKPlacemark?
    @State private var userSelected: Bool = false
    @State private var showDetails = false
    
    //Boton SOS
    @State private var selectedTag: Int?
    @State private var SOS: Bool = false
    
    //Display rutas
    @State private var getDirections = false
    @State private var routeDisplaying = false
    @State private var route: MKRoute?
    @State private var routeDestination: MKMapItem?
    @State private var terminarRuta: Bool = false
    
    var body: some View {
        Map(position: $cameraPosition, selection: $selectedTag) {
            Annotation("My location", coordinate: .userLocation) {
                ZStack {
                    Circle()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.blue.opacity(0.25))
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.blue)
                }
            }
            
            // Para los resultados de búsqueda
            ForEach(results, id: \.self) { item in
                if routeDisplaying {
                    if item == routeDestination {
                        let placemark = item.placemark
                        Annotation(placemark.name ?? "", coordinate: placemark.coordinate) {
                            ZStack {
                                Circle()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                                Image(systemName: "mappin.circle.fill")
                                    .foregroundColor(Color(SOSRed))
                                    .font(.title)
                            }
                            .tag(1)
                            .onTapGesture {
                                mapSelection = placemark  // Actualiza la selección
                                userSelected = true       // Solo el usuario activa esta variable
                            }
                        }
                    }
                } else {
                    let placemark = item.placemark
                    Annotation(placemark.name ?? "", coordinate: placemark.coordinate) {
                        ZStack {
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            Image(systemName: "mappin.circle.fill")
                                .foregroundColor(Color(SOSRed))
                                .font(.title)
                        }
                        .tag(1)
                        .onTapGesture {
                            mapSelection = placemark  // Actualiza la selección
                            userSelected = true       // Solo el usuario activa esta variable
                        }
                    }
                }
            }
            
            if let route {
                MapPolyline(route.polyline)
                    .stroke(.blue, lineWidth: 6)
            }
        }
//        .onAppear {
//            manager.requestWhenInUseAuthorization()
//        }
        .overlay(alignment: .top) {
            HStack {
                TextField("¿A dónde vamos hoy?", text: $searchText)
                    .font(.subheadline)
                    .padding(12)
                    .background(.white)
                    .padding()
                    .shadow(radius: 10)
                Button {
                    SOS.toggle()
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 74, height: 74)
                            .foregroundColor(.red.opacity(0.25))
                        Circle()
                            .frame(width: 57, height: 57)
                            .foregroundColor(.white)
                        Image(systemName: "sos.circle.fill")
                            .resizable()
                            .frame(width: 57, height: 57)
                            .foregroundStyle(.red)
                    }
                    
                }
            }
            .padding()
            .sheet(isPresented: $SOS, content: { SOSButtonView()
                    .presentationDetents([.height(420)])
                    .presentationBackgroundInteraction(.enabled(upThrough: .height(420)))
                    .presentationCornerRadius(12)
            })
            
        }
        .onSubmit(of: .text) {
            Task { await searchPlaces() }
        }
        .onChange(of: getDirections, { oldValue , newValue in
            if newValue {
                fetchRoute()
            }
        })
        .onChange(of: mapSelection) { oldValue, newValue in
            if userSelected {
                showDetails = newValue != nil
                userSelected = false  // Resetear después de la selección del usuario
            }
        }
        .sheet(isPresented: $showDetails, content: {
                LocationsDetailView(mapSelection: $mapSelection, show: $showDetails, getDirections: $getDirections)
            
            
        })
        
        .sheet(isPresented: $terminarRuta, content: {
            Button {
                endRoute()
                terminarRuta = false
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 35)
                        .fill(.black)
                        .frame(width: 266, height: 39)
                    RoundedRectangle(cornerRadius: 35)
                        .fill(Color(SOSRed))
                        .frame(width: 264, height: 37)
                    HStack {
                        Text("Terminar Ruta")
                            .foregroundStyle(.white)
                        
                    }
                    
                }
            }
    
            .presentationDetents([.height(130)])
            .presentationBackgroundInteraction(.enabled(upThrough: .height(130)))
            .presentationCornerRadius(12)
            
        })
        .mapControls {
            MapUserLocationButton()
        }
        .mapStyle(.standard(showsTraffic: true))
    }
}

extension MapaView {
    func searchPlaces() async {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText
        request.region = .userRegion

        let results = try? await MKLocalSearch(request: request).start()
        self.results = results?.mapItems ?? []
    }
    
    func fetchRoute() {
        if let mapSelection {
            let request = MKDirections.Request()
            request.source = MKMapItem(placemark: .init(coordinate: .userLocation))  // Origen: ubicación del usuario
            
            // Convertimos `mapSelection` (MKPlacemark) a un `MKMapItem`
            let destinationItem = MKMapItem(placemark: mapSelection)
            request.destination = destinationItem  // Destino: el lugar seleccionado por el usuario
            Task {
                let result = try? await MKDirections(request: request).calculate()
                route = result?.routes.first
                routeDestination = destinationItem
                
                withAnimation(.snappy) {
                    routeDisplaying = true
                    showDetails = false
                    terminarRuta = true
                    
                    if let react = route?.polyline.boundingMapRect, routeDisplaying {
                        cameraPosition = .rect(react)
                    }
                }
            }
        }
    }
    
    func endRoute() {
        routeDisplaying = false
        showDetails = true
        mapSelection = routeDestination?.placemark
        routeDestination = nil
        route = nil
        cameraPosition = .userLocation(fallback: .automatic)
    }
}

extension CLLocationCoordinate2D {
    static var userLocation: CLLocationCoordinate2D {
        return .init(latitude: 40.712784, longitude: -74.005941)
    }
}

extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        .init(center: .userLocation,
              latitudinalMeters: 10000,
              longitudinalMeters: 10000)
    }
}

#Preview {
    MapaView()
}
