//
//  SettingsModels.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/23/22.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option{
    let title: String
    let handler: () -> Void
}
