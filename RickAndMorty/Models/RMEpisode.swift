//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by JG.8905 on 5/27/23.
//

import Foundation

struct RMEpisode: Codable {
         let id: Int
         let name: String
         let air_date: String
         let episode: String
         let characters: [String]
         let url: String
         let created: String
       }
