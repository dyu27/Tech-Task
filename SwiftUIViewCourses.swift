//
//  SwiftUIViewCourses.swift
//  TechTask
//
//  Created by Daniel Yu on 10/22/22.
//

//import SwiftUI
//
//struct Option: Hashable {
//    let title: String
//    let imageName: String
//}
//
//struct SwiftUIViewCourses: View {
//    let options: [Option] = [
//            .init(title: "Course Overview", imageName: "house"),
//            .init(title: "Add Course", imageName: "info.circle"),
//            .init(title: "Remove Course", imageName: "gear"),
//    ]
//    
//    
//    var body: some View {
//        NavigationView {
//            ListView(options: options)
//            
//            MainView()
//        }
//        .frame(minWidth: 600, minHeight: 400)
//    }
//}
//
//struct ListView : View {
//    let options: [Option]
//    
//    var body: some View {
//        VStack {
//            ForEach(options, id: \.self) { option in
//                HStack {
//                    Image(systemName: option.imageName)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 20)
//                    
//                    Text(option.title)
//                    
//                    Spacer()
//                }
//                .padding()
//            }
//        }
//    }
//}
//
//struct MainView : View {
//    
//    @State var items: [String] = [
//        "This is the first item",
//        "This is the second item",
//        "Third!"
//    ]
//    
//    var body: some View {
//        List {
//            ForEach(items, id: \.self) { item in
//                ListRowView(title: item)
//            }
//        }
//        
//    }
//}
// 
//struct SwiftUIViewCourses_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            SwiftUIViewCourses()
//        }
//    }
//}
//    
//
