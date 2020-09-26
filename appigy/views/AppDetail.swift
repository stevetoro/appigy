//
//  AppDetail.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

struct AppDetail: View {
    var app: AppigyApp
    
    var body: some View {
        VStack {
            Image("app-store")
                .resizable()
                .frame(width: 100, height: 100)
            Text(app.name)
                .font(.headline)
            Text(app.category)
            Text(app.description)
                .padding()
            Button("Install", action: {
                print("Installing \(app.name)")
            })
        }
        .frame(maxWidth: 400, maxHeight: .infinity)
    }
}

struct AppDetail_Previews: PreviewProvider {
    static var previews: some View {
        AppDetail(app: appigyApps[0])
    }
}
