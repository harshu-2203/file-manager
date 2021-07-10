//
//  dataService.swift
//  NotesApp
//
//  Created by MacBook Pro on 08/07/21.
//

import Foundation

class DataService
{
    static func getDocDir() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        print("Doc directory url is \(paths[0])")
        return paths[0]
    }
    
}
