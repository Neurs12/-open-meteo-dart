// Go to /en/docs and paste this script.

function fetchResult(variable) {
  console.log([...variable].join(","));
}

function consoleVariable(title, variables) {
  if (variables.size > 0) {
    console.log(`%c${title}:`, "color: blue");
    fetchResult(variables);
  }
}

function collectVariables() {
  const colasped_docs = document.getElementsByClassName("accordion-button");
  for (let i = 0; i < colasped_docs.length; i++) {
    colasped_docs[i].click();
  }

  const hourly_variables = new Set();
  const daily_variables = new Set();
  const current_variables = new Set();

  setTimeout(() => {
    const form_docs = document.getElementsByClassName("form-check-input");
    for (let i = 0; i < form_docs.length; i++) {
      if (form_docs[i].getAttribute("name") === "hourly") {
        hourly_variables.add(form_docs[i].getAttribute("value"));
      }
      if (form_docs[i].getAttribute("name") === "daily") {
        daily_variables.add(form_docs[i].getAttribute("value"));
      }
      if (form_docs[i].getAttribute("name") === "current") {
        current_variables.add(form_docs[i].getAttribute("value"));
      }
    }

    consoleVariable("Hourly", hourly_variables);
    consoleVariable("Daily", daily_variables);
    consoleVariable("Current", current_variables);
  }, 1000);
}

const doc_pages = [
  "/en/docs",
  "/en/docs/historical-weather-api",
  "/en/docs/ensemble-api",
  "/en/docs/climate-api",
  "/en/docs/marine-weather-api",
  "/en/docs/air-quality-api",
  "/en/docs/flood-api"
];

for (let page = 0; page < doc_pages.length; page++) {
  setTimeout(() => {
    const button = document.querySelector(`a[href="${doc_pages[page]}"]`);
    button.click();
    console.log(`%c${button.innerText}`, "color: green; font-size: 20px");
    setTimeout(() => {
      collectVariables();
    }, 1000);
  }, 3000 * page);
}
