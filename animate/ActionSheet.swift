//
//  ActionSheet.swift
//  animate
//
//  Created by LeeMinkyo on 2021/01/10.
//

import SwiftUI

struct ActionSheet: View {
    var body: some View {
      
        GeometryReader { geometry in
            VStack() {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.secondary)
                    .frame(width: 100, height: 10, alignment: .top)
                
                List {
                    Text("asdf")
                    Text("qjewfoij")
                }
            }
            .cornerRadius(25)
            .padding(.top, 10.0)
            .background(Color(.secondarySystemBackground))
        }

    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet()
    }
}
