import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("caiu aqui")
  }

  toggleForm(event){
    console.log("Form");
    event.preventDefault();
    event.stopPropagation();
    
    const formId = event.params["form"];
    const commentBodyId = event.params["body"];
    const form = document.getElementById(formId);

    console.log(`formId: ${formId}`);
    console.log(`commentBodyId: ${commentBodyId}`);
    console.log(`form: ${form}`);

    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    
    const body = document.getElementById(commentBodyId);
    body.classList.toggle("d-none");
  }
}