//
//  CourseView.swift
//  TechTask
//
//  Created by Daniel Yu on 10/22/22.
//

import SwiftUI

struct CourseView: View {
    @State var items: [String] = [
        "This is the first title!",
        "second!",
        "third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Course List 📚")
        .navigationBarItems(leading: EditButton(),
            trailing:
            NavigationLink("Add", destination: Text("Destination"))
            )
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView() {
            CourseView()
        }
    }
}

