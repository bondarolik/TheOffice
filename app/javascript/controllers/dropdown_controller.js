import { Controller } from "@hotwired/stimulus"
import { toggle } from 'el-transition'

export default class extends Controller {
  static targets = [ "mobileMenu", "desktopMenu" ]
  connect() {
    console.log('Dropdown controller connected')
  }

  toggleDesktopMenu() {
    toggle(this.desktopMenuTarget)
  }
}
