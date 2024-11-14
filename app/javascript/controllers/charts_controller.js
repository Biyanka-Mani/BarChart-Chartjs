import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["sales"]

  connect() {
    this.initializeCharts()
  }

  initializeCharts() {
    fetch('/dashboard.json')
      .then(response => response.json())
      .then(data => {
        this.createSalesChart(data.sales)
      })
  }

  createSalesChart(salesData) {
    if (this.hasSalesTarget) {
      new Chart(this.salesTarget, {
        type: 'line',
        data: {
          labels: Object.keys(salesData),
          datasets: [{
            label: 'Monthly Sales',
            data: Object.values(salesData),
            borderColor: 'rgb(75, 192, 192)',
            tension: 0.1
          }]
        }
      })
    }
  }

 
}