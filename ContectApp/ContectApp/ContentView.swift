//
//  ContentView.swift
//  ContectApp
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var contactList: [DailyStruct] = [
        DailyStruct(topic: "Trip", mood:"Good", keyword:"Thailand", body:""),
        DailyStruct(topic: "J", mood:"Good", keyword:"k", body:"")
    ]
    var body: some View {
        NavigationStack{
            List{
                ForEach($contactList){ singleContact in 
                    NavigationLink{
                        ContactinfoView(contactPassed: singleContact)
                        } label: {
                        ContectRowView(contactPassed: singleContact)
                    }
                }
            }
            .navigationTitle("My Diary")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    ContentView()
}
