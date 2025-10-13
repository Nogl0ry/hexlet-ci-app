name: CI Workflow

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v3

      - name: Set up Environment
        run: |
          # Тут можно установить необходимые зависимости, если нужно
          # например, для Python: sudo apt-get install -y python3
          
      - name: Make setup
        run: make setup

      - name: Run tests
        run: make test

      - name: Run linters
        run: make lint
