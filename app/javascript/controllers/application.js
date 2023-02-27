import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// alerts
window.dismiss_alert = function(e) {
  const alert = e.closest('.alert-dismissible')
  alert.classList.add('hidden')
}

export { application }
