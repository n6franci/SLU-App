//
//  data.swift
//  nathan first app
//
//  Created by Nathan Francis on 2021-04-26.
//  Copyright © 2021 Nathan Francis. All rights reserved.
//

import Foundation

let SluData:[Slu] = load("SLUAPP.json")

func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Could not find \(filename) in the bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not find \(filename) from the bundle:\n\(error)")

    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")

    }
}
