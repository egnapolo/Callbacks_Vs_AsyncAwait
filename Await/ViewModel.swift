//
//  ViewModel.swift
//  Await
//
//  Created by Egna Lizeth Polo Rubiano on 30/5/23.
//

import Foundation

final class ViewModel: ObservableObject {
    @Published var characterBasicInfo: characterBasicInfo = .empty
    
    func executeRequest() async{
        guard let characterURL = URL(string: "https://rickandmortyapi.com/api/character/1") else {
            return
        }
        let (data, _) = try! await URLSession.shared.data(from: characterURL)
        let characterModel = try! JSONDecoder().decode(CharacterModel.self, from: data)
        
        let firstEpisodeURL = URL(string: characterModel.episode.first!)
        let (dataFirstEpisode, _) = try! await URLSession.shared.data(from: firstEpisodeURL!)
        let episodeModel = try! JSONDecoder().decode(EpisodeModel.self, from: dataFirstEpisode)
        
        let characterLocationURl = URL(string: characterModel.locationURL)!
        let (dataLocation, _) = try! await URLSession.shared.data(from: characterLocationURl)
        let locationModel = try! JSONDecoder().decode(LocationModel.self, from: dataLocation)
        
        DispatchQueue.main.async {
            self.characterBasicInfo = .init(name: characterModel.name, image: URL(string: characterModel.image), firstEpisodeTitle: episodeModel.name, dimension: locationModel.dimension)
        }
    }
}
