name: Build My Angular App

on:
  push:
    branches: [main]
jobs:
  build-angular-app:
    run-on: ubuntu-latest

steps:
- uses: actions/checkout@4.2.2
- name: Setup Node js
  uses: actions/setup-node@4.2.0
  with:
    node-version: 22.x
- name: Install Dependencies
  run: npm install
- name: Build Angular App
  run: npm run build
  
