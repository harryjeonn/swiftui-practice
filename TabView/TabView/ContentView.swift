//
//  ContentView.swift
//  TabView
//
//  Created by Harry on 2022/08/10.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 2
    
    init() {
        // Tab bar 배경색 변경
        UITabBar.appearance().backgroundColor = .black
    }
    
    var body: some View {
        TabView(selection: $selection) {
            FirstView()
                .badge(2)
                .tabItem {
                    Label("First", systemImage: "tray.and.arrow.down.fill")
                }
                .tag(0)
            
            SecondView()
                .tabItem {
                    Label("Second", systemImage: "tray.and.arrow.up.fill")
                }
                .tag(1)
            
            ThirdView()
                .badge("new")
                .tabItem {
                    Label("Third", systemImage: "person.crop.circle.fill")
                }
                .tag(2)
        }
        // Tab bar tint color 변경
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
