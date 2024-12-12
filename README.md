# Flutter MVVM App with Cubit and GraphQL

This Flutter application demonstrates the implementation of the MVVM architecture using Cubit for state management and GraphQL for API interaction. The app consumes the [countries.trevorblades.com](https://countries.trevorblades.com) API to display a list of countries with their details. The project adheres to SOLID principles and ensures separation of concerns for maintainable and scalable code.

## Features

- Fetch and display a list of countries using the GraphQL API.
- Organized using the MVVM (Model-View-ViewModel) architectural pattern.
- State management with Cubit from the `flutter_bloc` package.
- Simple and intuitive UI for easy navigation.
- SOLID principles and Separation of Concerns.

## Tech Stack

- **Flutter**: Frontend framework.
- **Cubit**: State management.
- **GraphQL**: API interaction.
- **Dart**: Programming language.

## Architecture Overview

The application is built using the MVVM architecture:

1. **Model**: Contains data classes and interacts with the GraphQL API.
2. **ViewModel**: Encapsulates business logic and state management using Cubit.
3. **View**: Displays data and handles user interactions.

## Folder Structure

```plaintext
lib/
|-- main.dart           
|-- app/
|   |-- app.dart
|-- core/
|   |-- constants/
|       |-- api_constants.dart
|   |-- injection/
|       |-- injection.dart
|   |-- observer/
|       |-- bloc_observer.dart
|   |-- router/
|       |-- route_manager.dart
|-- models/
|   |-- country_model    
|       |-- country.dart
|       |-- country.freezed.dart
|       |-- country.g.dart
|   |-- repo   
|       |-- repo.dart
|   |-- services   
|       |-- graphql_service_base.dart
|       |-- graphql_service_impl.dart
|-- queries/
|       |-- country_queries.dart
|-- viewmodels/
|   |-- country_cubit.dart 
|   |-- country_state.dart 
|   |-- country_cubit.freezed.dart
|-- views/
|   |-- home_page.dart   
|-- widgets/
    |-- country_card.dart 
```
