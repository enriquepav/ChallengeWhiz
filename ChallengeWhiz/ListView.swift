//
//  ListView.swift
//  ChallengeWhiz
//
//  Created by Enrique Alata Vences on 11/08/23.
//

import SwiftUI

struct ListView: View {
    
    @State private var productos: [Producto] = []
    
    var body: some View {
        List(productos, id: \.id) { producto in
            NavigationLink(destination: ContentView()) {
                CardView(producto: producto)
                    .onTapGesture {
                    SelectedProduct.shared.producto = producto
                }
            }
            
        }.navigationBarBackButtonHidden(true)
        .onAppear {
            fetchProductos()
        }

    }
    
    func fetchProductos() {
        APIManager.shared.fetchProductos { respuesta in
            DispatchQueue.main.async {
                if let productos = respuesta?.resultado.productos {
                    self.productos = productos
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
