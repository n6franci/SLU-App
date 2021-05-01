//
//  SluDetail.swift
//  nathan first app
//
//  Created by Nathan Francis on 2021-04-26.
//  Copyright © 2021 Nathan Francis. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

struct SluDetail: View {
    
    var slu:Slu
    var body: some View {
            List{
                ZStack(alignment: .bottom) {
                    Image(slu.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Rectangle()
                        .frame(height:80)
                            .opacity(0.25)
                            .blur(radius: 10)
                    HStack{
                        VStack(alignment: .leading, spacing: 8){
                            Text(slu.name)
                                .foregroundColor(Color.white)
                                .font(.largeTitle)
                            
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        Spacer()
                    }
                }
                .listRowInsets(EdgeInsets())
                VStack(alignment: .leading) {
                    Text(slu.description)
                        .foregroundColor(Color.primary)
                        .font(.body)
                        .lineLimit(nil)
                        .lineSpacing(12)
                        .frame(width: 390, height:280)
                    
                    HStack{
                        Spacer()
                        NavigationLink(destination: SluMap()) {
                            Text("View Map")
                        }.frame(width:150, height: 50)
                            .padding(.leading,71)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .font(.headline)
                        .cornerRadius(10)
                        Spacer()
                    } .padding(.top, 50)

                }
                .padding(.top)
                .padding(.bottom)
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        

    }
}

struct SluDetail_Previews: PreviewProvider {
    static var previews: some View {
        SluDetail(slu: SluData[1])

    }
}
