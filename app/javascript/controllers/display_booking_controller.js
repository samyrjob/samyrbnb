import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-booking"
console.log("hello");
export default class extends Controller {
  static targets = ["form"]
  connect() {
  }

  display(event) {
    console.log(this.formTarget)
    event.preventDefault()
    this.formTarget.classList.remove("inactive")
  }
}
