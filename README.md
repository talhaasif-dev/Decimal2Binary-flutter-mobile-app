# Decimal to Binary Converter (Flutter)
![App Preview](https://i.ibb.co/C3xZk362/d2b-git-repo.png)
A simple and educational Flutter app that converts **decimal numbers to binary** using the **Squaring Method**.  
This project is designed to help students and beginners understand how number systems work internally instead of relying on built-in functions.

---

## 📱 Features

- Convert any positive decimal number into binary
- Uses the **Squaring Method** (power-of-two approach)
- Clean and lightweight Flutter UI
- Instant conversion with clear steps
- Offline and fast

---

## 🧠 What is the Squaring Method?

Instead of repeatedly dividing by 2, this app uses a logical method based on **powers of 2**:

1. Find the largest power of 2 that is **less than or equal** to the given decimal number.  
   Example:  
   For `25`, the largest power of 2 is `16 (2⁴)`.

2. Subtract it from the number:  
   `25 - 16 = 9`

3. Repeat the process with the remainder:
   - Largest power of 2 ≤ 9 → `8 (2³)` → `9 - 8 = 1`
   - Largest power of 2 ≤ 1 → `1 (2⁰)` → `1 - 1 = 0`

4. Now mark which powers of 2 were used:

| Power of 2 | 16 | 8 | 4 | 2 | 1 |
|------------|----|---|---|---|---|
| Used?      | 1  | 1 | 0 | 0 | 1 |

So the binary result is:


This is exactly how the app works internally.

---

## 🛠 Tech Stack

- Flutter
- Dart

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/decimal2binary.git
   ```
Open the project:
```bash
cd decimal2binary
```

Run the app:
```bash
flutter pub get
flutter run
```

