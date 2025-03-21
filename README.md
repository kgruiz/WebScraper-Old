# WebScraper-Old

> **Deprecated Notice:**
> This project has been deprecated. Please check out the improved version of the scraper at [WebScraper](https://github.com/kgruiz/WebScraper).

A Python-based web scraping tool designed to extract and convert HTML content into LaTeX format for seamless integration into documents.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/kgruiz/WebScraper-Old.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd WebScraper-Old
   ```

3. **Install the required dependencies:**

   ```bash
   pip install requests beautifulsoup4 tqdm pypandoc weasyprint
   ```

## Usage

1. **Convert a single HTML file to LaTeX:**

   ```bash
   python HTMLtoLatex.py path/to/input.html
   ```

2. **Download web pages as PDFs:**

   ```bash
   python Downloader.py urlList.json
   ```

3. **Flatten directory structure:**

   ```bash
   python Scraper.py
   ```
