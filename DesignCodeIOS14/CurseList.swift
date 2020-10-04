//
//  CurseList.swift
//  DesignCodeIOS14
//
//  Created by Joker Liang on 2020/10/4.
//

import SwiftUI

struct CurseList: View {
    var body: some View {
        List(0 ..< 20) { item in
            CurseRow()
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct CurseList_Previews: PreviewProvider {
    static var previews: some View {
        CurseList()
    }
}
