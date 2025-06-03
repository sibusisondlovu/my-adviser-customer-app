# 📱 MyAdvisr Customer App – README

**MyAdvisr** is an intelligent platform that connects clients with certified professionals across financial, legal, and other advisory services. This Flutter app is the **Customer-Facing Interface**, providing onboarding, financial wellness tracking, AI support, and access to expert advisers.

---

## 🚀 Features Summary

### ✅ Onboarding with Financial Health Score

- Interactive onboarding flow
- Gathers personal and financial data
- Generates a **Financial Health Score**
- Score displayed as a **gauge chart** on the dashboard

### 🤖 Virtual AI Finance Assistant

- Built using **OpenAI API**
- Voice and chat interface (like Siri or ChatGPT)
- Provides immediate advice or routes to relevant advisers

### 📈 Dashboard

- Shows:
  - **Financial Health Gauge**
  - Quick access to Wills, Debt, Tax, and other advisory modules
  - Suggested improvements
  - AI assistant prompt

### 📚 Adviser Modules

#### Wills

- Guided creation and storage of a basic will
- Option to speak to legal professionals

#### Debt Advisory

- Budget input tool
- Debt-to-income analysis
- Actionable tips and adviser matching

#### Tax Advisory

- Upload or input tax documents
- Basic tax summary
- AI-powered recommendations or live adviser booking

---

## 🔧 Architecture Overview

### Tech Stack

- **Flutter (Dart)** – Cross-platform UI
- **Firebase** – Authentication, Firestore, Storage
- **OpenAI GPT** – AI-powered assistant
- **Chart Libraries** – For financial health gauge (e.g., `syncfusion_flutter_gauges`)
- **REST API** – For adviser matching and financial data handling

---

## 🧭 Core Screens

### 1. Onboarding Flow

- Multi-step form:
  - Personal info
  - Income/Expenses
  - Assets/Liabilities
  - Goals & preferences
- Final step calculates **Financial Health Score**
- Shows animated gauge chart (0–100 score)

### 2. Home Dashboard

- Displays:
  - Welcome greeting
  - Financial Health Score Gauge
  - Button to ask AI Assistant
  - Quick links to:
    - “Update My Info”
    - “Talk to a Debt Adviser”
    - “Review My Tax Situation”

### 3. Adviser Finder

- Filter by category (e.g., tax, debt, legal)
- Smart recommendations based on profile
- Booking interface with calendar sync

### 4. Virtual Finance Assistant (AI)

- Voice-enabled assistant launches on app open
- Prompts: “Hi, how can I help you with your finances today?”
- Example queries:
  - “How do I reduce my debt?”
  - “Can you help file my taxes?”
  - “Find me a certified adviser.”

---

## 🧪 Questionnaire Logic (Quiz Style)

- 10–15 questions with sliders, checkboxes, and radio buttons
- Backend calculates:
  - Financial Health Score
  - Profile tag (e.g., "Debt-heavy", "Investment-ready")
- Shown visually on dashboard + shared with adviser

---

## 📲 User Flow

```plaintext
App Start
 └── AI Assistant Prompt (optional)
      └── Onboarding
            ├── Personal Info
            ├── Financial Inputs
            └── Final Score & Profile Creation
                 └── Dashboard
                       ├── Health Score Gauge
                       ├── Adviser Modules
                       └── Chat or Voice AI Assistant
```
