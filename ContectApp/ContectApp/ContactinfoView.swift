//
//  ContactinfoView.swift
//  ContectApp
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ContactinfoView: View {
    @State var text1:String = ""
    @Binding var contactPassed: DailyStruct
    
    var body: some View {
        List{
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            {
                Text("\(contactPassed.topic)")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            VStack(alignment:.leading){
                Text("Detail")
                Text("Mood: \(contactPassed.mood)")
                Text("Keyword: \(contactPassed.keyword)")
                Text("Body: \(contactPassed.body)")
            }
            VStack{
                TextField("Enter",text:$text1)
                    .textFieldStyle(.plain)
            }.padding()
            Spacer()
        }
    }
}
