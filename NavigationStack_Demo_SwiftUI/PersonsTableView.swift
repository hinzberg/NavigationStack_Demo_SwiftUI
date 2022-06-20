//  ContentView.swift
//  NavigationStack_Demo_SwiftUI
//  Created by Holger Hinzberg on 20.06.22.

import SwiftUI

struct PersonsTableView: View {
    let friends = [Person(firstName: "Max", lastName: "Müller"),
                   Person(firstName: "Sonja", lastName: "Sommer"),
                   Person(firstName: "Horst", lastName: "Hamster"),
                   Person(firstName: "Bernd", lastName: "Banane")]
    
    let employees = [Employee(firstName: "Agnes", lastName: "Ananas"),
                     Employee(firstName: "Tom", lastName: "Tomate"),
                     Employee(firstName: "Guido", lastName: "Gurke"),
                     Employee(firstName: "Mike", lastName: "Meier")]
    
    var body: some View {
        NavigationStack {
            List{
                Section("Friends") {
                    ForEach(friends) { friend in
                        NavigationLink("\(friend.firstName) \(friend.lastName)", value: friend )
                    }
                }
                Section("Employees") {
                    ForEach(employees) { employee in
                        NavigationLink("\(employee.firstName) \(employee.lastName)", value: employee )
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("My Lists")
            .navigationDestination(for: Person.self) { friend in
                FriendsDetailView(friend: friend)
            }
            .navigationDestination(for: Employee.self) { employee in
                EmployeesDetailsView(employee: employee)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsTableView()
    }
}
