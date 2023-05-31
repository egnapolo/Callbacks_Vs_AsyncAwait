//
//  ContentView.swift
//  Await
//
//  Created by Egna Lizeth Polo Rubiano on 30/5/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel = ViewModel()
    var body: some View {
        VStack {
            Text("Hello!")
            VStack{
                AsyncImage(url: viewModel.characterBasicInfo.image)
                Text("Name: \(viewModel.characterBasicInfo.name)")
                Text("Firs Episode: \(viewModel.characterBasicInfo.firstEpisodeTitle)")
                Text("Dimension: \(viewModel.characterBasicInfo.dimension)")
            }.padding(.top, 32)
        }
        .padding()
        .onAppear {
            Task{
                await viewModel.executeRequest()
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
