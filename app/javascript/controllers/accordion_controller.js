
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'cardBody', 'show', 'hide' ]

  toggle() {
    if (this.is_visible()) {
      this.hideBody();
    } else { this.showBody(); }
  }

  showBody() {
    this.cardBodyTarget.classList = ["collapsing"]
    this.cardBodyTarget.classList = ["collapse show"]
    this.showTarget.classList.add('hidden');
    this.hideTarget.classList.remove('hidden');
  }

  hideBody() {
    this.cardBodyTarget.classList = ["collapsing"]
    this.cardBodyTarget.classList = ["collapse "]
    this.hideTarget.classList.add('hidden');
    this.showTarget.classList.remove('hidden');
  }

  is_visible() {
    return this.cardBodyTarget.classList.contains('show');
  }
}
