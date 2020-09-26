//
//  AppItem.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

struct AppItem: View {
    var app: AppigyApp
    
    var body: some View {
        HStack {
            Image("app-store")
                .resizable()
                .frame(width: 40, height: 40)
            VStack (alignment: .leading) {
                Text(app.name)
                Text(app.category)
                    .font(.caption)
                    .fontWeight(.light)
            }
            Spacer()
        }
        .frame(width: 150, height: 80)
    }
}

struct AppItem_Previews: PreviewProvider {
    static var previews: some View {
        AppItem(app: appigyApps[0])
    }
}
