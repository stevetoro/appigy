# Appigy

 A native macOS application built with SwiftUI for my ShellHacks2020 talk `"Building native apps and web services with Swift"`. You can watch that talk [here](https://www.youtube.com/watch?v=gtmYRUIN-DQ) if you want.

## What it does

* Appigy makes network requests to [AppigyAPI](https://github.com/stevetoro/appigy-api) to fetch JSON-formatted application data.
* Appigy uses `NavigationView` to display a side-by-side list + detail view of the application data.
* Appigy uses child processes to install individual applications to the client device via `Homebrew`.

## What you'll need

* macOS
* Xcode 12+
* [AppigyAPI](https://github.com/stevetoro/appigy-api)
* Homebrew

## How to start

If you attended my ShellHacks2020 talk and want to follow along with the [video](https://www.youtube.com/watch?v=gtmYRUIN-DQ), then I recommend cloning the shellhacks branch and starting from there.

Otherwise, just clone the repo, open in Xcode, and hit the run button. 

If you're running the master branch, you'll need to run [AppigyAPI](https://github.com/stevetoro/appigy-api) as well to see any data. 
