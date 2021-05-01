//
//  Slu.swift
//  nathan first app
//
//  Created by Nathan Francis on 2021-04-26.
//  Copyright © 2021 Nathan Francis. All rights reserved.
//

import SwiftUI

struct Slu: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var description:String
    var category:Category
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case site = "site"
        case sites = "sites"
    }
}
