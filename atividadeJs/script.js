const tituloH1 = document.querySelector("h1");
tituloH1.innerText = "Titulo da página"

const textoA = document.querySelector("a");
textoA.innerText = "Site Proz Educacao"

const textoUl = document.querySelector("Ul");
textoUl.innerHTML = `
<li>Texto 1</li>
<li>Texto 2</li>
<li>Texto 3</li>`;

const textoOl = document.querySelector("Ol");
textoOl.innerHTML = `
<li><a href='#'>Link 1</a></li>
<li><a href='#'>Link 2</a></li>
<li><a href='#'>Link 3</a></li>`;