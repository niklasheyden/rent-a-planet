import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "result", "input" ]

  connect() {
    console.log("hello");
  }
  submit(event) {
    event.preventDefault()
    fetch('/?query=' + this.inputTarget.value, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        this.resultTarget.innerHTML = data.partial // REPLACE PARTIAL
      });
  }
}


