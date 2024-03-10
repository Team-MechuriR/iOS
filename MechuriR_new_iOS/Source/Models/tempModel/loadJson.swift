//
//  loadJson.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import UIKit
import SwiftUI

func loadJson<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename,
                                  withExtension: nil)
    else {
        fatalError("\(filename) not found.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): \(error)")
    }
}
