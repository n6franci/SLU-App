//
//  SluItem.swift
//  nathan first app
//
//  Created by Nathan Francis on 2021-04-26.
//  Copyright © 2021 Nathan Francis. All rights reserved.
//

import SwiftUI

struct SluItem: View {
    var site:Slu
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Image(site.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:300, height: 189)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 5){
                Text(site.name)
                    .foregroundColor(Color.primary)
                    .font(.headline)
                    Text(site.description)
                    .foregroundColor(Color.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }


        }
        
    }
}

struct SluItem_Previews: PreviewProvider {
    static var previews: some View {
        SluItem(site: SluData[0])
    }
}
