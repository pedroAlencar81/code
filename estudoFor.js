numerosDaSorte = [37, 14, 26, 5, 94, 87]

for(i = 0; i < numerosDaSorte.length ; i++){  
  if (numerosDaSorte[i] % 2 == 0) {
    if (numerosDaSorte[i] % 2 == 0 && numerosDaSorte[i] > 50) {
      console.log("- " + numerosDaSorte[i] + " é par e maior que 50");
    }
    else
    {
        console.log("- " + numerosDaSorte[i] + " é par e menor que 50");
    }
  }
  else
  {
    if (numerosDaSorte[i] % 2 == 0 && numerosDaSorte[i] > 50) {
      console.log("- " + numerosDaSorte[i] + " não é par e maior que 50");
    }
    else
    {
        console.log("- " + numerosDaSorte[i] + " não é par e menor que 50");
    }
  }
}