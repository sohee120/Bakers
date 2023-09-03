//
//  ContentView.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/07.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection: Int = 0
    @State private var isSearchViewShown: Bool = false
    var body: some View {
        NavigationStack{
            VStack {
                TabView(selection: $tabSelection) {
                    HomeView().tabItem{
                        Image(systemName: "house")
                    }.tag(0)
                    RecipeView().tabItem{
                        Image(systemName: "list.bullet.clipboard")
                    }.tag(1)
                    RecommendView().tabItem{
                        Image(systemName: "play.laptopcomputer")
                    }.tag(2)
                    MyPageView().tabItem{
                        Image(systemName: "person")
                    }.tag(3)
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Bakers'")
                        .font(.title)
                        .bold()
                        .kerning(0)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.isSearchViewShown = true
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                    }
                    
                }
            }
            .padding(1)
        }
        // .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

