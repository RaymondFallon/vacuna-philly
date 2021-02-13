
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'notifier' ]

  copy(event) {
    this.copyValueToClipboard(this.data.get('url'));
    this.flashNotifier();
  }

  copyValueToClipboard(value) {
    const el = document.createElement('textarea');
    el.value = value;
    document.body.appendChild(el);
    el.select();
    document.execCommand('copy');
    document.body.removeChild(el);
  }

  flashNotifier() {
    this.notifierTarget.classList.remove('hidden');
    setTimeout(() => { this.notifierTarget.classList.add('hidden') }, 1800);
  }
}
