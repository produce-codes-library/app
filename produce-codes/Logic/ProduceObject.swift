//
//  ProduceObject.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/31/21.
//

import Foundation
import SwiftUI


struct ProduceObject: Codable, Identifiable, Comparable, Equatable, Hashable {
    static func < (lhs: ProduceObject, rhs: ProduceObject) -> Bool {
        return lhs.name < rhs.name
    }
    
    let id = UUID();
    var name:String;
    var plu:String;
    var image:String;
}

struct CollectionObject: Codable, Identifiable, Comparable, Equatable, Hashable {
    static func < (lhs: CollectionObject, rhs: CollectionObject) -> Bool {
        return lhs.name < rhs.name
    }
    
    let id = UUID();
    var name:String;
    var description:String;
    var image:String;
    var codes:[String];
}


class Backend {
    
    func getJSONObjects<Type>(url:String, completion: @escaping ([Type]) -> () ) where Type:Decodable {
        guard let urlObject = URL(string: url) else { return }
        URLSession.shared.dataTask(with: urlObject) { (data, response, error) in

            let results = try! JSONDecoder().decode([Type].self, from: data!)
            DispatchQueue.main.async {
                completion(results)
            }
        }
        .resume()
    }
    
    
    
}
