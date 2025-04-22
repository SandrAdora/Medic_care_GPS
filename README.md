# Medic Care Mobile Application  

This is an indoor GPS (Global Position System) application designed for hospitals. It was specifically developed for intensive care unit (ICU) staff to help them transport patients in intensive care more easily and time-efficiently to their upcoming examinations.  

The application retrieves information from the database about a *patient waiting for an examination* and lists all the necessary examinations for the day.  

## IDEs: 
- [VSC](https://code.visualstudio.com/download)
- [AndroidStudio](https://developer.android.com/studio?hl=de)
- [VisualStudio: For Microsoft desktops](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#visual-studio-2015-2017-2019-and-2022)

## Technology Stack: 
- [Git](https://git-scm.com/downloads)
- [Flutter](https://docs.flutter.dev/get-started/install) – for the mobile user interface.  
- [Python: Must be installed via cmd AND the also in vsc-extensions](https://www.python.org/downloads/windows/)  – for backend logic and data processing.  
- [C++: Extensions can be installed in VSC ]() – for positioning algorithms more efficient than python  
- [MySQL]() (phpMyAdmin)  
    – to store position data  
    – to store patient data 

## Installation Process: 
[Installation Process](https://www.youtube.com/watch?v=EhGW4UYpKSE)

## Useful Extensions via VSC 

[Thunder Client: For testing APIs ]( https://www.thunderclient.com/)
([Fluter Widget Snippets]())
[Dart]()
[Git Extension Pack]()
[JSON & JSON Tools]()
[Python Extension Pack]()
[Drawio Integretion]()
([Better Comments]())
([Code Spell Checker]())
[Error Lens]()

## Getting Started
For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

# Category of sub-folders in lib

The separation of files into sub-folders as listed below is meant to help better code Management. Each category (Screen, Widget, models and services) gets it's own folder, making it easier to find and edit code
[models]
   - Defining for different Objects (patients, appointments etc)
[screens]
  - Separate Files from different screens (home screen etc)
[services]
   - API Calls and Backend interaction 
[widgets]
   - Custom reusable components (Buttons etc)