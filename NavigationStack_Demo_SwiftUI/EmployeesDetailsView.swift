//  EmployeesDetailsView.swift
//  NavigationStack_Demo_SwiftUI
//  Created by Holger Hinzberg on 20.06.22.

import SwiftUI

struct EmployeesDetailsView: View {
    var employee : Employee
    
    var body: some View {
        VStack{
            Text("EmployeesDetailsView")
                .font(.headline)
            Text("\(employee.firstName) \(employee.lastName)")
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct EmployeesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesDetailsView(employee: Employee(firstName: "Jack", lastName: "Appleseed"))
    }
}
