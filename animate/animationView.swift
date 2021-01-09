//
//  animation.swift
//  animate
//
//  Created by LeeMinkyo on 2021/01/05.
//

import SwiftUI
import Combine

class LoadingTimer {
    let publisher = Timer.publish(every: 1 / 30, on: .main, in: .default)
    private var timerCancellable: Cancellable?

    func start() {
        self.timerCancellable = publisher.connect()
    }

    func cancel() {
        self.timerCancellable?.cancel()
    }
}

struct animationView: View {
    @State private var index = 0
    private let images = (0...258).map { UIImage(named: String(format: "hiyori_m05/hiyori_m05_" + "%03d", $0))! }
    private var timer = LoadingTimer()
    
    var body: some View {
        Image(uiImage: images[index])
            .resizable()
            .aspectRatio(contentMode: .fit)
            .edgesIgnoringSafeArea(.top)
            .frame(minWidth: 0, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
            .onReceive(
                timer.publisher,
                perform: { _ in
                    self.index = self.index + 1
                    
                    if self.index >= 258 {
                        self.index = 0
                    }
                }
            )
            .onAppear { self.timer.start() }
            .onDisappear { self.timer.cancel() }
            .onTapGesture(perform: {
                self.index = 0
            })

    
    }
}

struct animation_Previews: PreviewProvider {
    static var previews: some View {
        animationView()
    }
}
