# 📱 Facebook-Style Login UI - Flutter App

A Flutter-based mobile application that simulates a simplified **Facebook-like onboarding and login experience**, ideal for learning and demo purposes. This app includes a splash screen, agreement screen, user registration form, and a login form that integrates with external links using `url_launcher`.

---

## 🚀 Features

### 🔹 Splash Screen
- Facebook-style circular icon
- Animated `SpinKitWave` loader
- Auto navigation after 5 seconds

### 🔹 Agreement Screen (`FScreen1`)
- Checkbox: "Agree & Continue"
- Only enables login or signup when agreed

### 🔹 Signup Page (`FSignup`)
- Gender selection (Male, Female, Other)
- Date of Birth picker
- First Name, Last Name, Username, and Password fields
- Warning about username/password immutability
- Simulated loading indicator on account creation

### 🔹 Login Page (`FLogin`)
- Fields for Name, Username, and Password
- On login, opens an actual Facebook profile using the `url_launcher` package

---

git clone https://github.com/NoorMustafa4556/FaceBook-Login-Method.git
cd FaceBook-Login-Method
flutter pub get
flutter run


---

### 📝 How to Use:

1. Open your `README.md` file.
2. Paste the content above.
3. Commit and push:
```bash
git add README.md
git commit -m "Update professional README"
git push


