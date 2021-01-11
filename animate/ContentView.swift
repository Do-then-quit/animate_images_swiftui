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
          
            VStack {
                Spacer()
                
                Button(action: { self.show.toggle() }) {
                    Text("list pop")
                        .font(.headline)
                        .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.blue)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .sheet(isPresented: $show, content: {
                    ActionSheet()
            })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
