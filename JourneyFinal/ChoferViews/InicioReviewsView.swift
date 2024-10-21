//
//  InicioReviewsView.swift
//  JourneyFinal
//
//  Created by Metzli Celeste on 19/10/24.
//

import SwiftUI

struct InicioReviewsView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("¡Hola, Eduardo Rojas!")
                        .font(Font.custom("Poppins-SemiBold", size: 28))
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 106, height: 106)
                        .foregroundStyle(.black)
                    Spacer()
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 27)
                                .frame(width: 64, height: 35)
                            HStack {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                    .foregroundStyle(.white)
                                Text("4.8")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(.white)
                            }
                            
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 27)
                                .frame(width: 81, height: 35)
                            HStack {
                                Image(systemName: "clock")
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                    .foregroundStyle(.white)
                                Text("1 Año")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(.white)
                            }
                            
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 27)
                                .frame(width: 95, height: 35)
                            HStack {
                                Text("1883 viajes")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                    Spacer()
                }
                VStack {
                    Text("Reseñas")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundStyle(.black)
                    HStack (spacing: 10){
                        VStack {
                            HStack {
                                Text("5")
                                    .font(Font.custom("Poppins-Regular", size: 14))
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: 180, height: 8)
                                    .foregroundStyle(.yellow)
                            }
                            HStack {
                                Text("4")
                                    .font(Font.custom("Poppins-Regular", size: 14))
                                ZStack {
                                    RoundedRectangle(cornerRadius: 2)
                                        .frame(width: 180, height: 8)
                                        .foregroundStyle(.gray)
                                        .opacity(0.2)
                                    RoundedRectangle(cornerRadius: 2)
                                        .frame(width: 140, height: 8)
                                        .foregroundStyle(.yellow)
                                }
                            }
                            HStack {
                                Text("3")
                                    .font(Font.custom("Poppins-Regular", size: 14))
                                ZStack {
                                    RoundedRectangle(cornerRadius: 2)
                                        .frame(width: 180, height: 8)
                                        .foregroundStyle(.gray)
                                        .opacity(0.2)
                                    RoundedRectangle(cornerRadius: 2)
                                        .frame(width: 40, height: 8)
                                        .foregroundStyle(.yellow)
                                }
                            }
                            HStack {
                                Text("2")
                                    .font(Font.custom("Poppins-Regular", size: 14))
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: 180, height: 8)
                                    .foregroundStyle(.gray)
                                    .opacity(0.2)
                            }
                            HStack {
                                Text("1")
                                    .font(Font.custom("Poppins-Regular", size: 14))
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: 180, height: 8)
                                    .foregroundStyle(.gray)
                                    .opacity(0.2)
                            }
                        }
                        VStack {
                            VStack {
                                HStack {
                                    Text("4.8")
                                        .font(Font.custom("Poppins-Regular", size: 24))
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 16, height: 16)
                                        .foregroundStyle(.yellow)
                                }
                                Text("273 reseñas")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(.gray)
                            }
                            VStack {
                                HStack {
                                    Text("88%")
                                        .font(Font.custom("Poppins-Regular", size: 24))
                                }
                                Text("recomendado")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(.gray)
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
                            Text("Más Reseñas")
                                .font(Font.custom("Poppins-Regular", size: 12))
                            Image(systemName: "arrow.right")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.black)
                            
                        }
                    }
                   Spacer()
                }
                VStack {
                    Text("Comentarios")
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .opacity(0.4)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .opacity(0.1)
                            .frame(width: 347, height: 100)
                        HStack (spacing: 12){
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.black)
                            
                            VStack (alignment: .leading, spacing: 3) {
                                Text("Alma Diaz")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                      HStack {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.yellow)
                                    Text("4.2")
                                        .font(.custom("", fixedSize: 12))
                                    
                                }
                                Text("El conductor cumplió, aunque hubo algunos detalles que mejorar. En general, una experiencia aceptable")
                                    .font(Font.custom("Poppins-Italic", size: 10))
                                    .frame(width: 280, height: 30)
                                
                            }
            
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .opacity(0.1)
                            .frame(width: 347, height: 100)
                        HStack (spacing: 12){
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.black)
                            
                            VStack (alignment: .leading, spacing: 3) {
                                Text("Elizabeth Madera")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                      HStack {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.yellow)
                                    Text("4.3")
                                        .font(.custom("", fixedSize: 12))
                                    
                                }
                                Text("Conductor puntual y amable. El vehículo estaba limpio y el viaje fue seguro. Muy recomendable.")
                                    .font(Font.custom("Poppins-Italic", size: 10))
                                    .frame(width: 280, height: 30)
                                
                            }
            
                        }
                    }
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 35)
                            .fill(.black)
                            .frame(width: 266, height: 39)
                        RoundedRectangle(cornerRadius: 35)
                            .fill(.white)
                            .frame(width: 264, height: 37)
                        HStack {
                            Text("Más Comentarios")
                                .font(Font.custom("Poppins-Regular", size: 12))
                            Image(systemName: "arrow.right")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.black)
                            
                        }
                    }

                }
                
            }
            .frame(maxWidth: .infinity)
        }
        
    }
}

#Preview {
    InicioReviewsView()
}
