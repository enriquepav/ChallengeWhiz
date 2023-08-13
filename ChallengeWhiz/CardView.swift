//
//  CardView.swift
//  ChallengeWhiz
//
//  Created by Enrique Alata Vences on 11/08/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct CardView: View {
    var producto: Producto
    var body: some View {
        HStack {
            WebImage(url: URL(string: producto.urlImagenes.first!))                     .resizable()
                .placeholder(Image(systemName: "globe")) // Imagen de relleno mientras se carga
                .indicator(.activity) // Indicador de actividad mientras se carga
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            VStack {
                
                Text(producto.nombre)
                    .font(.headline)
                    .padding(.top, 10)
                
                Text("Precio: \(producto.precioFinal)")
                    .font(.subheadline)
                
                Text("Categoría: \(producto.codigoCategoria.rawValue)")
                    .font(.subheadline)
                
            }
            
        }.padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .navigationBarBackButtonHidden(true)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProduct = Producto(id: "1", idLinea: 1, codigoCategoria: .c, idModalidad: 1, relevancia: 1, lineaCredito: "", pagoSemanalPrincipal: 1, plazoPrincipal: 1, disponibleCredito: false, abonosSemanales: [], sku: "123", nombre: "Producto de ejemplo", urlImagenes: ["https://elektraqa.vteximg.com.br/arquivos/ids/1141189/1009286.jpg?v=637691369840400000"], precioRegular: 100, precioFinal: 90, porcentajeDescuento: 10, descuento: true, precioCredito: 80, montoDescuento: 10)
        CardView(producto: sampleProduct)
    }
}
