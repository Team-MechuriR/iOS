//
//  ContentView.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/05.
//

import SwiftUI

struct ContentView: View {
    
    @State var ShowMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.ShowMenu = false
                    }
                }
            }
        
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .trailing) {
                    Main(showMenu: self.$ShowMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.ShowMenu ? geometry.size.width / 2 : 0)
                        .disabled(self.ShowMenu ? true : false)
                    if self.ShowMenu {
                        SideMenuView()
                            .frame(width: geometry.size.width / 2)
                            .transition(.move(edge: .trailing))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("Side Menu", displayMode: .inline)
            .navigationBarItems(trailing: (
                Button(action: {
                    withAnimation {
                        self.ShowMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                }
            ))
        }
    }
}

struct Main: View {
    @Binding var showMenu: Bool
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
        }) {
             Text("open side menu")
        }

    }
}

#Preview {
    ContentView()
}
