//
//  ActionSheet.swift
//  animate
//
//  Created by LeeMinkyo on 2021/01/10.
//

import SwiftUI

struct ActionSheet: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 15.0) {
                List {
                    Text("asdf")
                    Text("qjewfoij")
                }
            }
            .padding(.horizontal)
            .padding(.top, 20)
            .background(Color.blue)
            .cornerRadius(25)
        }
    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet()
    }
}
