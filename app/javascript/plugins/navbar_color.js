window.addEventListener('scroll', (event) => {
  if (!scrollY == 0) {
    document.getElementById("navbar").style.backgroundColor = "black";
  } else {
    document.getElementById("navbar").style.backgroundColor = "transparent";
  }
})
