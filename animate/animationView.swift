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
    private let images = (0...142).map { UIImage(named: String(format: "hiyori_m01/hiyori_m01_" + "%03d", $0))! }
    private var timer = LoadingTimer()
    
    var body: some View {
        Image(uiImage: images[index])
            .resizable()
            .onReceive(
                timer.publisher,
                perform: { _ in
                    self.index = self.index + 1
                    
                    if self.index >= 142 {
                        self.index = 141
                    }
                }
            )
            .onAppear { self.timer.start() }
            .onDisappear { self.timer.cancel() }
            .onTapGesture(perform: {
                self.index = 0
            })
            .opacity(1 / Double(self.index))
            
    }
}

struct animation_Previews: PreviewProvider {
    static var previews: some View {
        animationView()
    }
}
