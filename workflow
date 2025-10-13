name: CI

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  ci:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: 18

      - name: Install Make
        run: sudo apt-get update && sudo apt-get install -y make

      - name: Setup project
        run: make setup

      - name: Run tests
        run: make test

      - name: Run linter
        run: make lint
