# Assignment #1 - UI Composition - Task 4
## Group 10

### Overview
This repository contains our implementation of Task 4 from Assignment #1 (UI Composition). We've recreated the WhatsApp Status Screen UI using Flutter, focusing on accuracy, clean code structure, and reusable components.

### Group Members
* Asad Tariq - k214899
* Muhammad Sufyan - k213206
* Taha Ahmed - k214833
* Fawad Zuberi - k213174

### Task Description
The task required us to recreate the WhatsApp Status screen from the provided screenshot, implementing all key UI elements including:
- WhatsApp green app bar with title and action buttons
- Tab navigation with STATUS tab selected
- "My status" section with profile picture and add button
- "Recent updates" section with status entries
- "Viewed updates" section with multiple entries
- Floating action buttons for edit and camera actions

### Implementation Details
Our implementation follows Flutter best practices:

- **Modular Structure**: Code organized in separate files for screens, widgets, and models
- **Reusable Components**: Status items implemented as reusable widgets
- **Clean Code**: Well-commented, organized code with proper naming conventions
- **Responsive UI**: UI adapts to different screen sizes while maintaining proper proportions
- **Color Accuracy**: Matched WhatsApp's color scheme

### Project Structure

```
a1_t4/
│
├── lib/
│   ├── main.dart                  # Main application entry point
│   ├── screens/
│   │   └── status_screen.dart     # Main status screen implementation
│   ├── widgets/
│   │   ├── status_list_item.dart  # Widget for status list items
│   │   └── status_tab.dart        # Widget for the status tab content
│   └── models/
│       └── status_item.dart       # Data model for status items
│
└── pubspec.yaml                   # Project configuration
```

### Key Features
1. **App Bar**: WhatsApp's green app bar with title, search icon, and menu
2. **Tab Bar**: CHATS, STATUS, and CALLS tabs with STATUS selected
3. **Status Sections**: 
   - "My status" with profile picture and add button
   - "Recent updates" section with one entry
   - "Viewed updates" section with multiple entries
4. **Status Indicators**: Green circles for unseen updates, gray for viewed ones
5. **Floating Action Buttons**: Edit button (small) and camera button (larger)

### Setup and Running Instructions
1. Clone the repository
2. Navigate to the project directory
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to launch the application

### Screenshot Comparison
Original Screenshot | Our Implementation
:---: | :---:
![Original WhatsApp Status Screen](https://github.com/user-attachments/assets/7ade3d20-5412-4d3d-801c-832f21bfb708) | ![Our Flutter Implementation](https://github.com/user-attachments/assets/318b4c69-ae5d-407d-a8cc-5796b2939197)

