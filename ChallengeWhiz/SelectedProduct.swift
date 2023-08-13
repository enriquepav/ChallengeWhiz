//
//  SelectedProduct.swift
//  ChallengeWhiz
//
//  Created by Enrique Alata Vences on 12/08/23.
//

import Foundation

class SelectedProduct {
    static let shared = SelectedProduct()
    var producto: Producto = Producto(id: "1", idLinea: 1, codigoCategoria: .c, idModalidad: 1, relevancia: 1, lineaCredito: "", pagoSemanalPrincipal: 1, plazoPrincipal: 1, disponibleCredito: false, abonosSemanales: [], sku: "123", nombre: "Producto de ejemplo", urlImagenes: ["https://elektraqa.vteximg.com.br/arquivos/ids/1141189/1009286.jpg?v=637691369840400000"], precioRegular: 100, precioFinal: 90, porcentajeDescuento: 10, descuento: true, precioCredito: 80, montoDescuento: 10)
}
