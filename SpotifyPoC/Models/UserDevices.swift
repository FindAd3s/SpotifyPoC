//
//  UserDevices.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/11/22.
//

import Foundation

struct UserDevices: Codable {
    
    let devices: [Devices]
    
}

struct Devices: Codable{
    let id: String
    let is_active: Bool
}

//{
//  "devices": [
//    {
//      "id": "dc99ae670dae3a79b23695164240cf08efd444b6",
//      "is_active": false,
//      "is_private_session": false,
//      "is_restricted": false,
//      "name": "iPhone",
//      "type": "Smartphone",
//      "volume_percent": 100
//    },
//    {
//      "id": "e57616967795502f239e269210e37a1b918c5ab9",
//      "is_active": true,
//      "is_private_session": false,
//      "is_restricted": false,
//      "name": "許世傑",
//      "type": "Computer",
//      "volume_percent": 64
//    }
//  ]
//}
