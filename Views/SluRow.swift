//
//  SluRow.swift
//  nathan first app
//
//  Created by Nathan Francis on 2021-04-26.
//  Copyright © 2021 Nathan Francis. All rights reserved.
//

import SwiftUI

struct SluRow: View {
    
    var categoryName:String
    var sites:[Slu]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top) {
                    ForEach(sites, id: \.name){
                        site in
                        
                        NavigationLink(destination: SluDetail(slu: site)){
                            
                            SluItem(site: site)
                                .frame(width:300)
                                .padding(.trailing, 30)

                        }

                    }
                }
            }
        }


    }
}

struct SluRow_Previews: PreviewProvider {
    static var previews: some View {
        SluRow(categoryName: "ST. LUCIA" ,sites: SluData)
    }
}
