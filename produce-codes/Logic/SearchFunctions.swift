//
//  SearchFunctions.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import Foundation
import SwiftUI

func filterResults(query:String, dataset:[ProduceObject]) -> [ProduceObject] {
    
    if query == "" {
        return dataset.sorted();
    }
    
    // This runs if the first char is a digit, this means we are searching by
    // code rather than by produce name
    if NSCharacterSet.decimalDigits.contains(query.unicodeScalars[query.startIndex]) {
        var output:[ProduceObject] = [];
        
        for object in dataset {
            if object.plu.starts(with: query) {
                output.append(object);
            }
        }
        
        return output.sorted();
    }
    
    // Otherwise we are searching by the produce name
    else {
        var output:[ProduceObject] = [];
        
        for object in dataset {
            let left:String = object.name.lowercased();
            let right:String = query.lowercased();
            if left.contains(right) {
                output.append(object);
            }
        }
        return output.sorted();
    }
    
}
