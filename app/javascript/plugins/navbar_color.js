window.addEventListener('scroll', (event) => {
  if (!scrollY == 0) {
    document.getElementById("navbar").style.backgroundColor = "rgb(18, 18, 18)";
  } else {
    document.getElementById("navbar").style.backgroundColor = "transparent";
  }
})

// let nav = document.getElementById("nav-item");
// console.log(nav);
// nav.addEventListener('hover', (event) => {
//   document.getElementById("nav-link-item").style.color = 'white';
// })
