//
//  File.swift
//  DZ_7_main
//
//  Created by Nikita Shipovskiy on 17/04/2024.
//

import Foundation


struct Item: Identifiable {
    var id = UUID().uuidString
    var name: String
    var circle: String
    var mainImage: String
    var title: String
    var description: String
    
    static func mockData() -> [Item] {
        [
            Item(name: "Имя Фамилия", circle: "imgcircle1", mainImage: "img1", title: "Заголовок", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod "),
        Item(name: "Имя Фамилия2", circle: "imgcircle2", mainImage: "img2", title: "Заголовок2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore ")
        ]
        
    }
}
