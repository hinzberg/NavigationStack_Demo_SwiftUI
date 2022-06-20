//  Person.swift
//  NavigationStack_Demo_SwiftUI
//  Created by Holger Hinzberg on 20.06.22.

import Foundation

public class Person : Identifiable, Hashable {
   
    public let id : UUID = UUID()
    public let firstName : String
    public let lastName : String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.id == rhs.id
    }
}
