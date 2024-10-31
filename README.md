# Capture The Flag (CTF) Exercise

Welcome to the Capture The Flag (CTF) exercise! In this challenge, you will be tasked with exploiting a cloud-hosted website to uncover a secret key. Please read the instructions carefully and follow the guidelines below.

## Challenge Overview

Your mission is to interact and try to exploit a cloud-hosted website to uncover a secret key hidden in a file within the website’s file system.

You are provided with the following resources:

- A cloud-hosted website: [https://hello-anya.fly.dev](https://hello-anya.fly.dev)
- The name of the text file that holds the secret key: **"secret_file"**
- The source code of the above website (the actual "secret_file" is not included)
- The first three letters of the secret: **"19b"**

## Requirements

- Go through the provided source code to understand how the website works and find any potential vulnerabilities.
- Interact with the website while combining with the knowledge of the source code to uncover the hidden secret key
- After successfully finding the secret key, you are required to submit your findings via email. Your submission should include:
   - The answer: the complete value of the secret key.
   - A short explanation of how you discovered the secret key.

## Hint

- Pay special attention to the `pages_controller.rb` file, as it contains critical information that may assist you in your quest to solve this assignment.
