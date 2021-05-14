//
//  TimeView.swift
//  WidgetFun
//
//  Created by 李毅 on 2021/5/14.
//

import SwiftUI

struct TimeView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).fontWeight(.bold).border(Color.clear, width: 0).rotation3DEffect(
            .degrees(45),
            axis: (x: 1.0, y: 0, z: 0.0),
            anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
            anchorZ: 1,
            perspective: 1
        )
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
