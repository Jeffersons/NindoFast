# 🕒 NindoFast

**NindoFast** is an open-source iOS app designed to track and analyze intermittent fasting sessions.  
Built as a showcase of modern **Apple ecosystem development**, it combines **SwiftUI**, **SwiftData**, and **AI integration** to deliver a smart and intuitive fasting companion.

---

## 🚀 Overview

NindoFast helps users:
- Start and track fasting sessions easily.  
- Visualize their fasting history and patterns.  
- Receive intelligent insights (coming soon) powered by AI and HealthKit integration.  

This project aims to demonstrate best practices in **Swift 6**, **SwiftData**, and **modern iOS architecture**, while remaining completely open for community contributions.

---

## 🧱 Tech Stack

| Layer | Technologies |
|-------|---------------|
| **Language** | Swift 6 |
| **UI Framework** | SwiftUI |
| **Persistence** | SwiftData (ready for CloudKit sync) |
| **Architecture** | MVVM architecture |
| **Testing** | Swift Testing + XCTest UI Tests |
| **Ecosystem Support** | iOS · macOS · visionOS (planned) |
| **AI & Health** | Core ML · HealthKit (future integration) |

---

## 📂 Project Structure

```
NindoFast/
├── NindoFast/           # Main app
│   ├── Features/
│   │   ├── FastingTimer/
│   │   ├── History/
│   │   └── Settings/
│   ├── Core/
│   │   ├── Models/
│   │   ├── Services/
│   │   └── Utils/
│   └── UI/
│       ├── Components/
│       ├── Theme/
│       └── Layout/
│
├── NindoFastTests/      # Unit tests
├── NindoFastUITests/    # UI tests
└── Config/              # Build configuration files (.xcconfig)
```

---

## 🧩 Features & Progress

| Feature | Status | Description |
|----------|---------|-------------|
| **App setup with SwiftData & Swift Testing** | ✅ Done | Base project configuration and signing-neutral setup. |
| **Fasting timer screen (SwiftUI)** | 🔄 In Progress | Timer logic and UI to start, pause, and resume fasting sessions. |
| **Local data persistence (SwiftData)** | 🔄 In Progress | Save and fetch fasting sessions locally. |
| **History screen** | ⏳ Planned | View past fasting sessions and progress analytics. |
| **Notifications & Widgets** | ⏳ Planned | Live Activities and widget for fasting progress. |
| **AI Assistant (Core ML / OpenAI)** | ⏳ Planned | Personalized fasting insights and recommendations. |
| **HealthKit integration** | ⏳ Planned | Sync fasting data with Apple Health. |
| **CloudKit sync** | ⏳ Planned | Optional iCloud storage for multi-device sync. |

---

## 🧠 Goals

- Create a **production-ready**, **fully open-source** fasting tracker.  
- Demonstrate **modern Apple development practices** across iOS, macOS, and visionOS.  
- Serve as a **reference project** for SwiftData, Swift Testing, and modular architecture.

---

## ⚙️ Setup

1. Clone the repository:
   ```bash
   git clone git@github.com:Jeffersons/NindoFast.git
   cd NindoFast
   ```

2. Open the project in Xcode:
   ```bash
   open NindoFast.xcodeproj
   ```

3. Select your personal Team or use *Sign to Run Locally*.

4. Run on Simulator or Device (**iOS 17+** recommended).

---

## 🧹 Code Style

This project uses **SwiftLint** to enforce consistent code style.
Before committing, run:

   ```bash
   swiftlint autocorrect
   ```
---

## 🤝 Contributing

Contributions are welcome!  
If you’d like to add new features, fix bugs, or improve documentation:

1. Fork the repo  
2. Create a new branch  
3. Submit a pull request 🚀  

---

## 🔀 Branching & Commit Rules

This project follows a **structured branch and commit naming convention** to maintain a clean Git history and consistent workflow.

### 🌱 Branch Naming Convention

Use **lowercase kebab-case** with a clear prefix describing the type of work:

| Prefix | Purpose | Example |
|---------|----------|----------|
| `feat/` | New feature | `feat/fasting-timer-structure` |
| `fix/` | Bug fix | `fix/healthkit-permission-bug` |
| `chore/` | Maintenance or setup | `chore/xcconfig-cleanup` |
| `docs/` | Documentation updates | `docs/update-readme` |
| `refactor/` | Code refactor (no behavior change) | `refactor/fetch-service` |
| `test/` | Adding or improving tests | `test/fetchservice-unit-tests` |

### 🧾 Commit Message Convention

Follows the **Conventional Commits** standard:
```
<type>(<scope>): <short summary>
```

Examples:
```
feat(fasting-timer): add base view and viewmodel
fix(history): correct date format in session summary
chore(config): update .gitignore and xcconfig files
```

### 🔧 Pull Requests

When opening a PR:
- Use the same naming as your branch for clarity.
- Keep PRs small and focused.
- Include a checklist and short description.

Example PR title:
```
feat(fasting-timer): base structure for Home/Timer feature
```

---

## 📜 License

MIT License © 2025 Jefferson de Souza Batista

---

## 🧭 Roadmap (Short-Term)

- [ ] Complete fasting timer MVP  
- [ ] Add SwiftData persistence layer  
- [ ] Create history and analytics module  
- [ ] Introduce AI Assistant (Core ML / API integration)  
- [ ] Add watchOS and visionOS support  

---

> 🧠 *Built with love, Swift, and curiosity — by [Jefferson Batista](https://github.com/Jeffersons)*  
> “Discipline is freedom.”
