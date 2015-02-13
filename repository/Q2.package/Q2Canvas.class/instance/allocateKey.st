as yet unclassified
allocateKey
  "Get a fresh key and remember it for later reuse."

  ^ key := context callbacks advanceKey