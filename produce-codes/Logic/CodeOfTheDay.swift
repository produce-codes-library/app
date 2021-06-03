//
//  CodeOfTheDay.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/24/21.
//

import Foundation

extension Date {
    var dayOfYear: Int {
        return Calendar.current.ordinality(of: .day, in: .year, for: self)!
    }
}

func getCodeOfTheDay(options:[ProduceObject]) -> String {
    return options[(Date().dayOfYear << 1) % options.count].plu;
}

