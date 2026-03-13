# WaitAMinute

**WaitAMinute** is a simple iOS app designed to help users **delay decisions and avoid impulsive actions**.
Instead of acting immediately, users can log a decision and set a **reminder**. Once the timer finishes, they can revisit the decision with a clearer mind.

The goal of this app is to introduce **intentional friction** between impulse and action.

---

## ✨ Features

### ⏳ Decision Cooldown
Users can log a decision and choose a delay period before they are allowed to act on it.

Example cooldown options:
- 2 days
- 7 days
- 10 days
- 14 days

Each decision will remain **locked** until the cooldown period ends.

---

### 🧠 Reflection Prompt
When creating a decision, users are asked to reflect on their motivation.

Example prompt:

> *Why do you want this?*

This small pause encourages users to **think more deliberately** before committing to the decision.

---

### 🗂 Active Decision Cards
The home screen displays active decisions as simple cards containing:

- **Countdown timer** (primary information)
- **Decision title**

Example:

```

23h 14m
Buy AirPods Pro

```

The countdown is the main focus, helping users quickly see **how long until they can decide**.

---

### 🔔 Reminder Notification
When the cooldown ends, the app can send a **local notification** reminding the user to revisit their decision.

Example notification:

> *Still want to buy AirPods Pro?*

---

### 📜 Decision Outcome
After the cooldown period finishes, users can choose:

- ✅ *I still want it*
- ❌ *I changed my mind*

This helps users become more aware of their **impulsive patterns**.

---

### 📊 Decision History
All past decisions are stored in a history list so users can reflect on their past choices.

Example:

```

✓ Bought AirPods — $249
✗ Didn't buy mechanical keyboard
✓ Started gym membership

```

---

## 🎯 Goal

The goal of **WaitAMinute** is simple:

> **Create a pause between impulse and action.**

Many impulsive decisions disappear when given time.
By forcing a short delay, this app helps users make **more intentional and thoughtful choices**.

---

## 🧩 App Structure

The app consists of four main screens:

### 1. Home
Displays active decisions with countdown timers.

### 2. Add Decision
Form for creating a new delayed decision.

Fields include:
- Decision title
- Optional price
- Cooldown duration
- Reflection note

### 3. Decision Detail
Shows full information about the decision and its remaining cooldown.

### 4. History
List of completed decisions and their outcomes.

---

## 🛠 Tech Stack

- **Swift**
- **SwiftUI**
- **Local Notifications**
- **SwiftData / Local Persistence**

The app is designed to be **lightweight and fully offline**, with no backend required.

---

## 🚀 Future Improvements

Possible future enhancements:

- Decision statistics (impulses avoided, money saved)
- Cooldown progress indicators
- Reflection insights
- Streaks for avoided impulses
- Widget support

---

## 📱 Platform

- iOS
- Built entirely with **SwiftUI**

---

## 💡 Philosophy

Good decisions usually **survive time**.

WaitAMinute simply asks you to do one thing before acting


