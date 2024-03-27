//
//  ProfileView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 01.03.2024.
//

import SwiftUI

struct ProfileView: View {
    private var isGameCenterOn: Binding<Bool> {
        Binding {
            leaderboard.isGameCenterOn
        } set: {
            leaderboard.isGameCenterOn = $0
        }
    }
    @State private var showResetDialog = false
    @EnvironmentObject var leaderboard: Leaderboard
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Toggle("Game Center", isOn: isGameCenterOn)
                } footer: {
                    Text("Game Center is required to see the leaderboard and submit your scores.")
                }
                
                Section {
                    Button("Reset All High Scores") {
                        showResetDialog = true
                    }
                }
                
                Section {
                    NavigationLink("Credits") {
                        List {
                            Section("City Guesser") {
                                Text("©swisstopo")
                            }
                            Section("Spot in map") {
                                Link("CC BY-SA 3.0 Poulpy", destination: URL(string: "https://commons.wikimedia.org/wiki/Category:Switzerland_Locator_Map_(image_set_by_User:Poulpy)")!)
                            }
                            Section("Food") {
                                Link("CC BY-SA 4.0 Gruyere alpage", destination: URL(string: "https://commons.wikimedia.org/wiki/File:Gruyere_alpage_th_wa.jpg")!)
                                Link("CC BY-SA 4.0 Hubertl", destination: URL(string: "https://commons.wikimedia.org/wiki/File:2015-01-25_L’Etivaz_AOP_-_Der_Schweizer_-_WikiLovesCheese_Vienna_-hu_-_7802.jpg")!)
                                Link("CC BY-SA 4.0 Martin Thurnherr", destination: URL(string: "https://commons.wikimedia.org/wiki/File:Poire_à_Botzi_FR_02.jpg")!)
                                Link("CC BY-SA 4.0 Ulled", destination: URL(string: "https://commons.wikimedia.org/wiki/File:Sbr_product_0020_bc.jpg")!)
                                Link("CC BY-SA 3.0 Mike Lehmann", destination: URL(string: "https://commons.wikimedia.org/wiki/File:Girolle_7910.jpg")!)
                                Link("CC BY-SA 3.0 NEON ja", destination: URL(string: "https://commons.wikimedia.org/wiki/File:Vacherin_Mont_d%27Or.jpg")!)

                            }
                        }
                    }
                }
            }
            .confirmationDialog("Reset All High Scores", isPresented: $showResetDialog) {
                Button("Reset", role: .destructive) { HighScores.reset() }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Are you sure that you want to reset all your high scores?")
            }
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(Leaderboard.shared)
}
