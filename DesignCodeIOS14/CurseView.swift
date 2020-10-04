//
//  CurseView.swift
//  DesignCodeIOS14
//
//  Created by Joker Liang on 2020/10/4.
//

import SwiftUI

struct CurseView: View {
    @State var show = false
    @Namespace var namespace
    @State var selectItem: Course? = nil
    @State var isDisable = false
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))], spacing: 16) {
                    ForEach(courses) { item in
                        VStack {
                            CurseItem(course: item)
                                .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                                .frame(height: 250.0)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.55, dampingFraction: 0.7, blendDuration: 0)) {
                                        self.show.toggle()
                                        self.selectItem = item
                                        self.isDisable = true
                                    }
                                }
                                .disabled(isDisable)
                        }
                        .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                        
                    }
                    
                }
                .padding(.all, 16.0)
                .frame(maxWidth: .infinity)
                
            }
            .zIndex(1)
            
            
            if selectItem != nil {
                ZStack(alignment: .topTrailing) {
                    ScrollView {
                        CurseItem(course: selectItem!)
                            .frame(height: 300)
                            .matchedGeometryEffect(id: selectItem!.id, in: namespace)
                        
                        VStack {
                            ForEach(0 ..< 20) { item in
                                CurseRow()
                            }
                        }
                        .padding()
                        
                    }
                    .background(Color("Background 1"))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .matchedGeometryEffect(id: "container\(selectItem!.id)", in: namespace)
                    .edgesIgnoringSafeArea(.all)
                    
                    CloseButton()
                        .padding([.trailing], 16.0)
                        .onTapGesture {
                            withAnimation {
                                self.show.toggle()
                                self.selectItem = nil
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    self.isDisable = false
                                }
                            }
                        }
                }
                
                .zIndex(2)
            }
            
        }
        
    }
}

struct CurseView_Previews: PreviewProvider {
    static var previews: some View {
        CurseView()
    }
}
