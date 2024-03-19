

https://github.com/kskeerthana/fetch-ios-excercise/assets/57140272/c26a984e-8c33-4310-9ddd-c40444315ebe

# iOS Coding Exercise - Item List Display

## Overview
This iOS application is built using SwiftUI and showcases a simple yet effective way to display a list of items retrieved from a local JSON file. The app groups these items by `listId` and sorts them first by `listId` and then by the numeric suffix of the `name` attribute within each group. The user can tap on a `listId` to view details of the items in that group.

## Features
- **List Grouping:** The main screen presents a list of unique `listId`s.
- **Navigation:** Users can tap on a `listId` to navigate to a detailed screen that lists all items under that `listId`.
- **Sorting:** Items are sorted first by `listId`, then by the numeric value extracted from the `name` property.
- **Clean UI:** The UI is simple and intuitive, with a focus on readability and ease of navigation.

## Technical Details
- **SwiftUI:** The app is built entirely using SwiftUI for a modern and responsive user interface.
- **MVVM Architecture:** The app uses the Model-View-ViewModel (MVVM) design pattern for clean separation of concerns.
- **Comparable Protocol:** Custom sorting logic is implemented by conforming to the `Comparable` protocol.

## Structure
- `Item`: A data model representing an item, conforming to `Codable` and `Comparable` for easy JSON decoding and custom sorting.
- `ItemViewModel`: The ViewModel that loads JSON data, processes, and provides it to the views.
- `ContentView`: The main view that shows a list of `listId`s.
- `ItemListView`: A detailed view showing all items within a selected `listId`, sorted by `id` and `name`.

**Running the project:**
1. Clone the repository to your local machine.
2. Open the project in Xcode.
3. Select a simulator or connect an iOS device.
4. Build and run the application with `Cmd + R`.

Thank you for considering this project. I am open to feedback and suggestions to improve the application and look forward to potentially discussing this further.
