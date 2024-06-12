# Expense Padi

Expense Padi is a powerful expense tracker app built with Flutter, designed to help users manage their income and expenses efficiently. The app automatically tracks expenses and income through debit alerts sent by the user's bank to their email. By scanning these emails, Expense Padi categorizes transactions into credit and debit. The backend is built with Python, and Firebase is used as the database.

## Features

- **Income and Expense Tracking**: Automatically track your income and expenses by scanning your email for bank alerts.
- **Email Integration**: Securely scan and read bank alerts from your email to categorize transactions.
- **Detailed Reports**: Get detailed reports on your income and expenses.
- **User-Friendly Interface**: Intuitive UI designed to provide a seamless user experience.
- **Secure Data Storage**: Data is securely stored using Firebase.

## Screenshots



https://github.com/emekss/Expense_Padi_New_UI/assets/110977719/97e001d0-11ca-4839-becc-15fb95fe9cc7



## Getting Started

### Prerequisites

Ensure you have the following installed:
- Flutter SDK: [Flutter installation guide](https://flutter.dev/docs/get-started/install)
- A code editor (e.g., Visual Studio Code, Android Studio)
- Python: [Python installation guide](https://www.python.org/downloads/)
- Firebase account: [Firebase setup guide](https://firebase.google.com/docs/web/setup)

### Installation

1. **Clone the repository:**
    ```sh
    git clone https://github.com/yourusername/expense_padi.git
    cd expense_padi
    ```

2. **Install dependencies:**
    ```sh
    flutter pub get
    ```

3. **Set up Firebase:**
    - Follow the [Firebase setup guide](https://firebase.google.com/docs/flutter/setup) to add Firebase to your Flutter project.
    - Update the `google-services.json` file for Android and `GoogleService-Info.plist` file for iOS in the appropriate directories.

4. **Backend Setup:**
    - Navigate to the `backend` directory.
    - Install the required Python packages:
        ```sh
        pip install -r requirements.txt
        ```
    - Configure Firebase in your backend by following the [Firebase Admin SDK setup guide](https://firebase.google.com/docs/admin/setup).

5. **Run the backend server:**
    ```sh
    python main.py
    ```

6. **Run the app:**
    ```sh
    flutter run
    ```

## Usage

1. **Register an Account:**
    - Open the Expense Padi app.
    - Register using your email and follow the instructions to integrate your bank alerts.

2. **Track Transactions:**
    - The app will automatically scan your email for bank alerts and categorize them as credit or debit.

3. **View Reports:**
    - Navigate to the Reports section to view detailed insights into your income and expenses.

4. **Adjust Settings:**
    - Go to the Settings page to update your preferences, including email integration and notification settings.

## Project Structure

```
expense_padi/
|- android/
|- backend/
   |- main.py
   |- requirements.txt
|- build/
|- ios/
|- lib/
   |- models/
   |- screens/
   |- widgets/
   |- main.dart
|- test/
|- pubspec.yaml
|- README.md
```

- **backend/**: Contains the Python backend code.
- **models/**: Contains data models for the app.
- **screens/**: Contains the main screens of the app (e.g., home, transactions, reports, settings).
- **widgets/**: Contains reusable widgets.
- **main.dart**: Entry point of the Flutter application.

## Contributing

We welcome contributions to improve Expense Padi! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or suggestions, feel free to reach out!

- Email: yourname@example.com
- GitHub: [yourusername](https://github.com/yourusername)

Thank you for using Expense Padi! Happy tracking!

## Tags

#Flutter #Dart #ExpenseTracker #IncomeTracking #Firebase #PythonBackend #EmailIntegration #MobileApp #FinanceApp #OpenSource #Productivity #AppDevelopment #UIUX #MITLicense
