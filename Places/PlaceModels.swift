//
//  PlaceModels.swift
//  Places
//
//  Created by Kedar Nagekar on 21/06/24.
//

import Foundation

struct PlaceModel: Identifiable, Hashable {
    var placeName:String
    var placeImageName:String
    var placeDescription:String
    var id:UUID = UUID()
}
