📊 BarChart-Chartjs
This repository provides a simple implementation of how to use Chart.js with Rails 7 and import maps. It showcases how you can create dynamic bar charts using JavaScript and Rails without relying on CDN links.

📋 Features

Uses import maps instead of a CDN for integrating Chart.js.

Dynamically generates bar charts in a Rails 7 application.

📖 Getting Started Prerequisites

Ruby (3.x recommended)
Rails 7.x installed

🛠️ How It Works

1.Chart.js Integration:

Chart.js is imported using import maps for a clean and modern setup.
The configuration is located in app/javascript/barchart_controller.js
The confiration used in import maps:

pin "chart.js", to: "https://cdn.jsdelivr.net/npm/chart.js@4.4.6/dist/chart.umd.js"

pin "@kurkle/color", to: "https://ga.jspm.io/npm:@kurkle/color@0.3.2/dist/color.esm.js"

2.Bar Graph Display:

The bar chart is rendered on the dashboard/index page using a dedicated JavaScript file (barchart_controller.js).
data-controller="barchart" 
This is main part in working the stimulus make sure you name properly your js file.

📜 Conclusion
This project is a starting point for anyone looking to integrate Chart.js with Rails 7 using import maps
