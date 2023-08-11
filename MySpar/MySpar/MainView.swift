//
//  MainView.swift
//  MySpar
//
//  Created by Артем on 11.08.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Главная", systemImage: "tree.circle.fill")
                
                }
            ContentView()
                .tabItem {
                    Label("Каталог", systemImage: "text.justify")
                }
            ContentView()
                .tabItem {
                    Label("Корзина", systemImage: "basket")
                }
            ContentView()
                .tabItem {
                    Label("Профиль", systemImage: "person.crop.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
