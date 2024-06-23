//
//  ContectRowView.swift
//  ContectApp
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ContectRowView: View {
    @Binding var contactPassed:
    DailyStruct
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 40, height: 40)
            VStack(alignment: .leading){
                Text(contactPassed.topic)
                    .font(.title2)
                    .bold()
                Text(contactPassed.keyword)
            }
            Spacer()
        }
    }
}

#Preview {
    @State var contactPreview =
    DailyStruct(topic: "Trip", mood:"Good", keyword:"k", body: "0")
    return ContectRowView(contactPassed: $contactPreview)
}
