
# Gymmaty

## Overview

Gymmaty is a comprehensive iOS application designed to help users find and explore gyms in their area. It provides essential information about each gym, including pricing options, location, and available services. Users can easily navigate through the app to discover their perfect gym match.

## Features

- **Launch Screen**: Displays the app logo and name with an animated transition to the login view.
- **Login View**: Users can sign in to access the gym listing.
- **Gym List View**: Search and sort through various gyms based on distance, price, or name.
- **Gym Detail View**: View detailed information about each gym, including available options and images.
- **Location Feature**: Get directions to the gym through Apple Maps.

## Code Structure

- **GymData.swift**: Contains the static data model for the gyms, including their name, image, distance, price, available options, images, and location coordinates.
- **GymModel.swift**: Defines the `Gym` and `GymOption` data structures used throughout the app.
- **LaunchScreenView.swift**: Implements the launch screen with animations.
- **LoginView.swift**: User interface for the login screen.
- **ListView.swift**: Displays the list of gyms with search and sort functionalities.
- **GymView.swift**: Provides detailed information about a selected gym.
- **GymViewModel.swift**: Manages the logic for sorting and filtering gyms.

## Usage

### Launching the App
When the app launches, users will see the logo and app name, followed by the login screen.

### Navigating to the Gym List
Upon successful login, users will be directed to the gym list view, where they can:
- Search for specific gyms.
- Sort gyms by distance, price, or name.

### Viewing Gym Details
Tapping on a gym in the list navigates to the detail view, showcasing images, pricing options, and the location of the gym. Users can also get directions via Apple Maps.

## Future Improvements

- Integrate user accounts for personalized gym recommendations.
- Allow gym owners to update their gym information directly through the app.
- Implement payment and subscription features for easy access to gym services.
