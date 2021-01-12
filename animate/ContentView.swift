//
//  ContentView.swift
//  animate
//
//  Created by LeeMinkyo on 2021/01/04.
//

import SwiftUI

struct ContentView: View {
    @State private var bottomSheetShown = false
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("back_class_sun")
                    .resizable()
                    .blur(radius: 2)
                
                animationView()
                BottomSheetView(
                    isOpen: self.$bottomSheetShown,
                    maxHeight: geometry.size.height * 0.7
                ) {
                    TodoView() //To-do list view will be here.
                    //Think how to scroll TodoView when it is closed.
                }
               
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
