# PlanApp 

A modern Flutter application for plant care and management, built with clean architecture principles and comprehensive testing.

##  Features

- **Onboarding Flow**: Guided introduction with paywall integration
- **Home Screen**: Main dashboard for plant management
- **Plant Categories**: Browse and explore different plant types
- **Blog Content**: Educational articles and care tips

## 🏗 Architecture

### Clean Architecture Implementation
The project follows Clean Architecture principles with clear separation of concerns:

```
lib/
├── app/                    # Application layer
│   ├── app.dart           # Main app configuration
│   └── router/            # Navigation and routing
├── core/                   # Core utilities and shared components
│   └── utils/             # Theme, sizing, and common utilities
├── features/              # Feature-based modules
│   ├── home/              # Home screen feature
│   ├── onboarding/        # Onboarding flow
│   └── paywall/           # Paywall screen
└── main.dart              # Application entry point
```

### Feature Structure
Each feature follows a consistent structure:
```
feature/
├── bloc/                  # Business logic and state management
├── data/                  # Data layer (models, repositories)
├── views/                 # UI components and screens
└── widgets/               # Reusable UI components
```

##  Technical Stack

### Core Dependencies
- **Flutter**: Latest stable version
- **Dart**: Modern Dart with null safety
- **flutter_bloc**: State management
- **auto_route**: Navigation and routing
- **dio**: HTTP client with interceptors
- **freezed**: Immutable data classes
- **json_serializable**: JSON parsing

### Development Dependencies
- **bloc_test**: BLoC testing utilities
- **mocktail**: Mocking framework
- **build_runner**: Code generation
- **flutter_lints**: Code quality

##  UI/UX Design

### Design Principles
- **Pixel-Perfect Implementation**: Exact match with Figma designs
- **Responsive Layout**: Adapts to different screen sizes
- **Scalable Components**: Reusable UI elements
- **Consistent Spacing**: Design system with standardized units

### Responsive Implementation
- **MediaQuery**: Screen size detection
- **LayoutBuilder**: Dynamic layout construction
- **Flexible/Expanded**: Adaptive widget sizing
- **Design Constants**: Centralized spacing and sizing values

##  Network Layer

### HTTP Client Configuration
- **Dio**: Advanced HTTP client with interceptors
- **Request/Response Interceptors**: Logging and error handling
- **Timeout Management**: Configurable request timeouts
- **Error Handling**: Custom exception management
- **Status Code Validation**: Proper HTTP response validation



##  Data Management

### Model Classes
- **Immutable Models**: Using Freezed for data classes
- **JSON Serialization**: Automatic parsing with json_serializable
- **Type Safety**: Full null safety implementation
- **Equality Support**: Automatic equality and hashCode generation



##  State Management

### BLoC Pattern Implementation
- **Cubit**: Simple state management for features
- **Repository Pattern**: Data access abstraction
- **Event-Driven Architecture**: Reactive UI updates
- **State Immutability**: Predictable state changes



##  Testing

### Comprehensive Test Coverage
- **Unit Tests**: Business logic and data models
- **Widget Tests**: UI components and navigation
- **BLoC Tests**: State management validation
- **Integration Tests**: End-to-end user flows



##  Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation
1. Clone the repository
```bash
git clone https://github.com/ozlemton/planapp.git
cd planapp
```

2. Install dependencies
```bash
flutter pub get
```

3. Generate code files
```bash
flutter packages pub run build_runner build
```

4. Run the application
```bash
flutter run
```

##  App Flow

### Onboarding Flow
1. **Splash Screen**: App initialization
2. **Get Started**: Introduction screen
3. **Onboarding Screens**: Feature introduction (2 screens)
4. **Paywall**: Premium features presentation
5. **Home Screen**: Main application (after completion)

### Home Flow
- **Plant Categories**: Browse different plant types
- **Blog Content**: Educational articles


##  Key Features

### Responsive Design
- **Multiple Screen Sizes**: Phone, tablet, and desktop support
- **Orientation Changes**: Portrait and landscape modes
- **Dynamic Layouts**: Adaptive UI components
- **Scalable Typography**: Responsive text sizing

### Error Handling
- **Network Errors**: Graceful API failure handling
- **Validation**: Input and data validation
- **User Feedback**: Clear error messages
- **Fallback States**: Loading and error states

