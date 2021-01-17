//
//  ContentView.swift
//  Shared
//
//  Created by Brando Lugo on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {

            NavigationView{
                List(missions) { mission in
                    NavigationLink(destination: Text("Detail View")) {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                        VStack(alignment: .leading){
                            Text(mission.displayName)
                                .font(.headline)
                            Text(mission.formattedLaunchDate)
                        }
                    }
                    
                }
                .navigationBarItems(leading: Text("NASA"))
                .navigationBarTitle(Text("Mission Control"), displayMode:.large)
            } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
