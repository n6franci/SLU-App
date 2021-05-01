//
//  ContentView.swift
//  nathan first app
//
//  Created by Nathan Francis on 2021-04-26.
//  Copyright © 2021 Nathan Francis. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories:[String:[Slu]]{
        .init(
            grouping:SluData,
            by: {$0.category.rawValue}
        )
    }
    //var nameCategory: Slu
    var body: some View {
        NavigationView{
            List (categories.keys.sorted(), id: \String.self){key in
                SluRow(categoryName: "Popular Sites", sites: self.categories[key]!)
                    .frame(height:350)
                    .padding(.top)
                    .padding(.bottom)
                    .buttonStyle(PlainButtonStyle())
            }
        .navigationBarTitle(Text("Welcome to St. Lucia"))
            .navigationBarHidden(true)

        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
