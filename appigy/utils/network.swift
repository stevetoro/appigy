//
//  network.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

func getApps (onComplete complete: @escaping(_ data: [AppigyApp]?, _ error: Error?) -> Void) {
    let url = URL(string: "http://localhost:8080/apps")!
    let request = URLRequest(url: url)

    URLSession.shared.dataTask(with: request) {
        data, response, error in
        
        guard error == nil else {
            complete(nil, error)
            return
        }
        
        guard let data = data else {
            complete(nil, error)
            return
        }
        
        do {
            let apps = try JSONDecoder().decode([AppigyApp].self, from: data)
            complete(apps, nil)
        } catch {
            complete(nil, error)
        }
        
    }.resume()
}

func getAppImage (imageName: String, onComplete complete: @escaping(_ data: Image?, _ error: Error?) -> Void) {
    let url = URL(string: "http://localhost:8080/images/\(imageName)")!
    let request = URLRequest(url: url)

    URLSession.shared.dataTask(with: request) {
        data, response, error in
        
        guard error == nil else {
            complete(nil, error)
            return
        }
        
        guard let data = data else {
            complete(nil, error)
            return
        }
        
        guard let nsImage = NSImage(data: data) else {
            complete(nil, error)
            return
        }
        
        complete(Image(nsImage: nsImage), nil)
    }.resume()
}
