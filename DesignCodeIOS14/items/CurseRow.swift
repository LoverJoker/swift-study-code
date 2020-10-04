//
//  CurseRow.swift
//  DesignCodeIOS14
//
//  Created by Joker Liang on 2020/10/4.
//

import SwiftUI

struct CurseRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "paperplane.circle.fill")
                .renderingMode(.template)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.medium)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 4.0) {
                Text("SwiftUi")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("Description")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.bottom, 2.0)
    }
}

struct CurseRow_Previews: PreviewProvider {
    static var previews: some View {
        CurseRow()
    }
}
