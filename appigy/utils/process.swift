//
//  process.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import Foundation

func install(formula: String) {
    let task = Process()
    task.launchPath = "/usr/local/bin//brew"
    task.arguments = ["cask", "install", formula]
    task.launch()
}
