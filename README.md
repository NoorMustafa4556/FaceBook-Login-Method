# 📱 Facebook-Style Login UI - Flutter App

A Flutter-based mobile application that simulates a simplified **Facebook-like onboarding and login experience**, ideal for learning and demonstration purposes. This app includes a splash screen, an agreement screen, a user registration form, and a login form that integrates with external links using the `url_launcher` package.



---

## 🚀 Features

### 🔹 Splash Screen
-   Facebook-style circular icon.
-   Animated loading indicator using `flutter_spinkit` (`SpinKitWave`).
-   Automatically navigates to the next screen after 5 seconds.

### 🔹 Agreement Screen (`FScreen1`)
-   A mandatory checkbox to "Agree & Continue".
-   The "Create New Account" and "Log In" buttons are disabled until the user agrees to the terms.

### 🔹 Signup Page (`FSignup`)
-   User-friendly form for creating a new account.
-   Gender selection (Male, Female, Other) using radio buttons.
-   Date of Birth selection with a native date picker.
-   Input fields for First Name, Last Name, Username, and Password.
-   A clear warning that the username and password cannot be changed later.
-   A simulated loading indicator upon account creation to mimic a network request.

### 🔹 Login Page (`FLogin`)
-   Simple and clean login form with fields for Username and Password.
-   Upon successful login, the app uses the `url_launcher` package to open an actual Facebook profile in the device's default browser.

---


## 🛠️ Tech Stack & Key Packages

-   **Framework:** [Flutter](https://flutter.dev/)
-   **Language:** [Dart](https://dart.dev/)
-   **Key Packages:**
    -   [`url_launcher`](https://pub.dev/packages/url_launcher): For opening external URLs in a browser.
    -   [`flutter_spinkit`](https://pub.dev/packages/flutter_spinkit): For beautiful loading animations.
    -   [`intl`](https://pub.dev/packages/intl): For date formatting.

---

## ⚙️ Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

Make sure you have Flutter SDK installed on your machine. For help, check the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation & Setup

1.  **Clone the repository**
    ```bash
    git clone https://github.com/NoorMustafa4556/FaceBook-Login-Method.git
    ```

2.  **Navigate to the project directory**
    ```bash
    cd FaceBook-Login-Method
    ```

3.  **Install the dependencies**
    ```bash
    flutter pub get
    ```

4.  **Run the app**
    ```bash
    flutter run
    ```

---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

