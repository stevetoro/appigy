//
//  AppDetail.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

struct AppDetail: View {
    var app: AppigyApp
    @State var image: Image = Image("app-store")
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 100, height: 100)
            Text(app.name)
                .font(.headline)
            Text(app.category)
            Text(app.description)
                .padding()
            Button("Install", action: {
                install(formula: app.brew_formula)
            })
        }
        .frame(maxWidth: 400, maxHeight: .infinity)
        .onAppear(perform: {
            getAppImage(imageName: app.image_name, onComplete: {
                data, error in
                
                guard error == nil else {
                    print(error!)
                    return
                }
                
                if let data = data {
                    self.image = data
                }
            })
        })
    }
}

struct AppDetail_Previews: PreviewProvider {
    static var previews: some View {
        AppDetail(app: appigyApps[0])
    }
}
