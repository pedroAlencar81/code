let tituloJS = document.createElement("title");
tituloJS.innerText = "Título criado no js";

tituloJS.id = "titulo";

document.head.appendChild(tituloJS);

let produtoComplexo = document.createElement("div");
produtoComplexo.id = "produtoComplexo";

let nomeProduto = document.createElement("h3");
nomeProduto.innerText = "Nome: Celular";

let descricaoProduto = document.createElement("p");
descricaoProduto.innerText = "Descrição: Celular ficticio para compor a descrição do produto";

let precoProduto = document.createElement("p");
precoProduto.innerText = "Preço: R$ 149.99";

let imagemProduto = document.createElement("img");
imagemProduto.src = "https://www.squidfacil.com.br/img/ganhe-dinheiro-cel.jpg";
imagemProduto.alt = "Imagem do Produto Complexo";

produtoComplexo.appendChild(nomeProduto);
produtoComplexo.appendChild(descricaoProduto);
produtoComplexo.appendChild(precoProduto);
produtoComplexo.appendChild(imagemProduto);

document.body.appendChild(produtoComplexo);
