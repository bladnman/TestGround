//
//  States.swift
//  TestGround
//
//  Created by Matt Maher on 6/21/23.
//

import SwiftUI

struct States: View {
    @State var name = "Bob"
    var age = 25
    var body: some View {
        VStack {
            Text("Name: \(name) (\(age))")
                .font(.headline)
            Parent(name: name, age: age)
        }
    }
}

struct Parent: View {
    @State var name: String
    var age = 15
    var body: some View {
        VStack {
            Text("Name: \(name) (\(age))")
                .font(.headline)

            HStack {
                ForEach(PersonName.allCases, id: \.self) { tName in
                    Button(action: {
                        name = tName.rawValue
                    }) {
                        Text(tName.rawValue)
                    }
                }
            }

            Child(name: $name)
        }
        .padding(30)
        .background(.green)
    }
}

struct Child: View {
    @Binding var name: String
    var body: some View {
        VStack {
            Text("Name: \(name)")
                .font(.headline)
                .padding(.bottom)
            HStack {
                Button("Bob") {
                    name = "Bob"
                }
                Button("Jim") {
                    name = "Jim"
                }
                Button("Sally") {
                    name = "Sally"
                }
            }
        }
        .padding(30)
        .background(.yellow)
    }
}

enum PersonName: String, CaseIterable {
    case bob = "Bob"
    case jim = "Jim"
    case sally = "Sally"
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States()
    }
}
