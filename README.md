# 🛍️ Shopy Shop — Flutter E-Commerce App

> A modern **Flutter shopping application** built with Dart, featuring Provider state management, custom UI architecture, dark mode support, and a scalable product system.

---

## 🚀 Overview

**Shopy Shop** is a mobile e-commerce application created as part of a Flutter learning journey.
The project focuses on building a clean and structured UI while implementing real shopping flows such as product browsing, variant selection, and cart management.

Unlike a basic tutorial clone, the project has been extended with custom UI improvements, dark mode support, and redesigned navigation to simulate a real-world shopping app.

---

## ✨ Features

* 🏠 Elite redesigned Home UI with floating navigation bar
* 🌙 Dark / Light mode toggle
* 🛒 Global cart system using Provider
* 📏 Product size / variant selection
* ❤️ Favorite toggle on product details
* 🎨 Custom Material 3 theme with Lato typography
* ⚡ Smooth animated page switching
* 🧩 Modular Flutter architecture

---

## 🧠 Architecture

### 🔹 State Management

The application uses **ChangeNotifier + Provider**:

* `CartProvider` handles add/remove product logic
* Global cart state updates UI instantly

### 🔹 Navigation System

* IndexedStack preserves page state
* Custom floating navigation bar
* Animated transitions between screens

### 🔹 Product Flow

Product List
→ Product Details
→ Size / Variant Selection
→ Add To Cart
→ Cart Page

---

## 🧰 Tech Stack

### Core

* Flutter
* Dart
* Provider

### UI & Styling

* Material 3 Design System
* Custom Lato Font
* Asset-based product images
* Elite custom navigation layout

---

## 📂 Project Structure

```
lib/
 ├── pages/
 │   ├── home_page.dart
 │   ├── cart_page.dart
 │   └── product_details.dart
 │
 ├── providers/
 │   └── cart_provider.dart
 │
 ├── widgets/
 │   └── product_list.dart
 │
 └── main.dart
```

---

## 🎨 UI Improvements

The project includes custom UI enhancements beyond the original tutorial:

* Floating premium bottom navigation
* Dark mode theme switching
* Animated page transitions
* Improved spacing and layout structure

These changes were added to move the app closer to a production-style Flutter interface.

---

## 🛍️ Products

The app supports multiple product types using a flexible product data structure:

* Shoes
* Hoodies
* Watches
* Additional categories can be added easily

Products are defined using a simple Map-based model for fast UI iteration.

---

## ▶️ Getting Started

### Clone Repository

```bash
git clone https://github.com/sahkunal/shopy_shop.git
cd shopy_shop
```

### Install Dependencies

```bash
flutter pub get
```

### Run App

```bash
flutter run
```

---

## 📚 Learning Note

This project was built as part of a Flutter learning journey and is inspired by a guided tutorial.
The implementation was recreated and later enhanced with custom UI redesign, dark mode support, and additional features to better understand Flutter architecture.

---

## 🔮 Future Improvements

* Authentication system
* Payment integration
* Backend API support
* Persistent cart storage
* Product filtering & search
* Category-based layouts

---

## 👨‍💻 Author

**Kunal**

---

## ⭐ Support

If you like this project, consider giving it a ⭐ on GitHub — it really helps!
