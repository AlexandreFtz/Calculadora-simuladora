// Declarando as variaveis (let, var e const)
let valorInicial = 0;
let valorMensal = 0;
let taxaJuros = 0;
let qtdMeses = 0;
let resultado = 0;

function getValueElement(id){
    var elemento = document.getElementById("valor-inicial");
    return Elemento.value;

}

//get = pegar, Função para pegar os dados do html
function getDados (){
    
    valorInicial = getValueElement("valor-inicial");
    valorMensal = getValueElement("valor-mensal");
    taxaJuros = getValueElement("taxa-juros");
    qtdMeses = getValueElement("periodo");
    alert(valorInicial);
}

// Função
function calcular() {
    getDados();
    let soma = parseFloat(valorInicial) + parseFloat(valorMensal);
    let subtrair = parseFloat(valorInicial) - parseFloat(valorMensal);
    let dividir = parseFloat(valorInicial) / parseFloat(valorMensal);
    let multiplicar = parseFloat(valorInicial) * parseFloat(valorMensal);
    alert(Soma);
}


