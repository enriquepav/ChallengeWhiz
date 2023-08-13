//
//  ContentView.swift
//  ChallengeWhiz
//
//  Created by Enrique Alata Vences on 11/08/23.
//

import SwiftUI
import SDWebImageSwiftUI


struct ContentView: View {
    
    var body: some View {
    
        @State var producto: Producto? =  nil
        
        NavigationView {
            VStack {
                NavigationLink(destination: ListView()) {
                    Text("Ir a ListView")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                .padding()
                if SelectedProduct.shared.producto.id != "1" {
                    VStack {
                        WebImage(url: URL(string: SelectedProduct.shared.producto.urlImagenes.first!))                     .resizable()
                            .indicator(.activity) // Indicador de actividad mientras se carga
                            .aspectRatio(contentMode: .fit)
                            .padding(10)
                            .clipped()
                        
                        Text(SelectedProduct.shared.producto.nombre)
                            .font(.headline)
                            .padding(10)
                        
                        Text("Precio: \(SelectedProduct.shared.producto.precioFinal)")
                            .font(.subheadline)
                        
                        Text("Categoría: \(SelectedProduct.shared.producto.codigoCategoria.rawValue)")
                            .font(.subheadline)
                    }
                } else {
                    Text("No se ha seleccionado ningún producto")
                }
                
            }.navigationBarTitle("Home", displayMode: .inline)
        }.navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
