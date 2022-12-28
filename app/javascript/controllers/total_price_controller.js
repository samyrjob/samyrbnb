import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
console.log("hello");
export default class extends Controller {
  static targets = [ "startdate", "enddate", "totalPriceDiv" ]

  static values = {
    perDay: Number
  }


  computePrice() {
    const milliseconds = Date.parse(this.enddateTarget.value) - Date.parse(this.startdateTarget.value)
    const days = milliseconds / 24 / 60 / 60 / 1000
    if (Number.isNaN(milliseconds)) {
      return '';
    }
    this.totalPriceDivTarget.innerHTML = `${days * this.perDayValue}€`;
  }
}
