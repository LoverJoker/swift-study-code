//
//  CurseItem.swift
//  DesignCodeIOS14
//
//  Created by Joker Liang on 2020/10/4.
//

import SwiftUI

struct CurseItem: View {
    var course: Course = courses[0]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image("Illustration 1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Text(course.title).fontWeight(.bold).foregroundColor(Color.white)
            Text(course.subtitle).font(.footnote).foregroundColor(Color.white)
        }
        .padding(.all)
        .background(course.color)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct CurseItem_Previews: PreviewProvider {
    static var previews: some View {
        CurseItem()
    }
}
