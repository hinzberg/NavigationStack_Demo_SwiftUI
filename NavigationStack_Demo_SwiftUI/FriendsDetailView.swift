//  FriendsDetailView.swift
//  NavigationStack_Demo_SwiftUI
//  Created by Holger Hinzberg on 20.06.22.

import SwiftUI

struct FriendsDetailView: View {
    
    var friend : Person
    
    var body: some View {
        VStack{
            Text("FriendsDetailView")
                .font(.headline)
            Text("\(friend.firstName) \(friend.lastName)")
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct FriendsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsDetailView(friend: Person(firstName: "Bruno", lastName: "Beispiel"))
    }
}
