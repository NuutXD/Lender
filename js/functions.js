function kategorier() {
    var dropdown = document.getElementById("kategorier");
    if(dropdown.style.display == "none") {
        dropdown.style.display = "block";
    } else {
        dropdown.style.display = "none";
    }
}

function phonekategori() {
    var dropup = document.getElementById("kategorierphone");
    var dropupBtn = document.getElementById("kategoriBtn");
    if(dropup.style.display == "block") {
        dropup.style.display = "none";
        dropupBtn.style.transform = "rotate(0deg)";
        dropupBtn.style.background = "linear-gradient(#FD297B, #FF655B)";
    } else {
        dropup.style.display = "block";
        dropupBtn.style.transform = "rotate(180deg)";
        dropupBtn.style.background = "linear-gradient(#FF655B, #FD297B)";
    }
}