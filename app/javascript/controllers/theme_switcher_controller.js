import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["select"]

  connect() {
    this.applyTheme()
  }

  change() {
    this.applyTheme()
  }

  applyTheme() {
    const theme = this.selectTarget.value
    const html = document.documentElement

    html.classList.remove("light", "dark")

    if (theme !== "system") {
      html.classList.add(theme)
    }
  }
}
