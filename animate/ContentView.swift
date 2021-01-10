//
//  ContentView.swift
//  animate
//
//  Created by LeeMinkyo on 2021/01/04.
//

import SwiftUI

struct ContentView: View {
    @State var show = false

    var body: some View {
        ZStack {
            Image("back_class_sun")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .blur(radius: 2)
            animationView()
          
            Button(action: { self.show.toggle() }) {
                Text("asdf")
            }
            .foregroundColor(.white)
            .background(Color.blue)
            .sheet(isPresented: $show, content: {
                ActionSheet()
            })
        }
        
       

        
        
        
        
       
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
