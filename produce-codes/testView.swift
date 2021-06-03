//
//  testView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/24/21.
//

import SwiftUI


struct testView: View {
    
    @State var produceObjects:[CollectionObject] = [];

    var body: some View {
        
        ZStack {
        
            if produceObjects.count == 0 {
                Rectangle()
                Text("Loading")
            }
            
//            List(produceObjects) { object in
//                Text(object.name)
//            }
            
            if produceObjects.filter( { $0.name == "Greens" } ).count > 0 {
                Text(produceObjects.filter( { $0.name == "Greens" } )[0].name)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            //
            
            
        }
        .onAppear {
            Backend().getJSONObjects(url : "https://ryan-schreiber.github.io/produce-codes-library/collections_data.json") { (objects) in
                self.produceObjects = objects;
            }
        }
//        Text(UIDevice.current.model)
    }
    
}

struct testiew_Previews: PreviewProvider {
    
    static var previews: some View {
        testView()
    }
}
