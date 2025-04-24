# Vintage frontend demo

## Description
This is a demo of a vintage frontend using HTML, CSS, and JavaScript. 

## Requirements
You must have Node 7 or lower installed to run this demo because of the use of **node-sass** that compiles the SCSS to CSS.  
The demo uses **Gulp.js** to automate tasks such as compiling SCSS to CSS, serving the files in a local server, and reloading the browser when files change.  

The demo is built with the following technologies:
- Node.js (version 7 or lower)
- Gulp
- BrowserSync
- node-sass

## Installation
1. Clone the repository
2. Run `npm install` to install the dependencies
3. Run `npm run start` to start the Gulp server
4. Open your browser and go to `http://localhost:3000` to see the demo

## Usage
- Make changes to the SCSS files in the `scss` folder and save them. The Gulp server will automatically compile the SCSS to CSS.
- Make changes to the HTML or JS files in the `src` folder and save them. 

Each time you save a file, the Gulp server will automatically reload the browser to reflect the changes.

## Installing with Docker
You can also run the demo in a Docker container. To do this, follow the workshop instructions in [./docs/README.md](./docs/README.md) file.