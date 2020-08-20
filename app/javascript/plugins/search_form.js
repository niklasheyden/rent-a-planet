// const form = document.querySelector(".search-form");
// function handleForm (event) {
//   $('.cards-planet').load(document.URL + '.cards-planet');
//   // event.preventDefault();
// };

// form.addEventListener('submit', handleForm);

let sidebar = document.querySelector(".sidebar");

let top = localStorage.getItem("sidebar-scroll");
if (top !== null) {
  sidebar.scrollTop = parseInt(top, 10);
}

window.addEventListener("beforeunload", () => {
  localStorage.setItem("sidebar-scroll", sidebar.scrollTop);
});
