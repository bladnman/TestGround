//
//  States.swift
//  TestGround
//
//  Created by Matt Maher on 6/21/23.
//

import SwiftUI

struct States: View {
    var body: some View {
        
            Parent()
        
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States()
    }
}

struct Parent: View {
    
    var body: some View {
        VStack {
            Text("Parent")
                .font(.headline)
            Child()
        }
        .background(.green)
        .padding(30)
    }
}
struct Child: View {

    var body: some View {
        
        VStack {
            Text("Child")
                .font(.headline)
        }
        .background(.yellow)
        .padding(30)
    }
}
