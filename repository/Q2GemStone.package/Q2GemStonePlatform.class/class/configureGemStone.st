methods
configureGemStone
  "Make configurations on the GemStone platform. Importantly, this method  resgisters the app with Seaside."

  | settings |
  settings := Q2GjallarSettings
    file: Q2GjallarConfiguration instance settingsFile.
  Q2Main initializeWithSettings: settings locationInitBlock: nil