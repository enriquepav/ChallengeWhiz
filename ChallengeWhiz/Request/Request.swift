//
//  Request.swift
//  ChallengeWhiz
//
//  Created by Enrique Alata Vences on 11/08/23.
//

import Foundation

class APIManager {
    static let shared = APIManager() // Singleton para acceder a la instancia

    func fetchProductos(completion: @escaping (Respuesta?) -> Void) {
        guard let url = URL(string: "http://alb-dev-ekt-875108740.us-east-1.elb.amazonaws.com/sapp/productos/plp/1/ad2fdd4bbaec4d15aa610a884f02c91a") else {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else {
                completion(nil)
                return
            }

            do {
                let decodedResponse = try JSONDecoder().decode(Respuesta.self, from: data)
                completion(decodedResponse)
            } catch {
                print("Error decoding JSON: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
