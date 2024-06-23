//
//  ContactStruct.swift
//  ContectApp
//
//  Created by admin on 22/6/2567 BE.
//

import Foundation
struct DailyStruct: Identifiable{
    var id: UUID = UUID()
    var topic: String
    var mood : String
    var keyword : String
    var body: String
}
