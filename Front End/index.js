// Declarando as variaveis (let, var e const)
let valorInicial = 0;
let valorMensal = 0;
let taxaJuros = 0;
let qtdMeses = 0;
let resultado = 0;
let resultadoInvestido = 0;
let resultadoJuros = 0;

function getValueElement(id){
    var elemento = document.getElementById(id);
    return elemento.value;

}

//get = pegar, Função para pegar os dados do html
function getDados (){
    
    valorInicial = getValueElement("valor-inicial");
    valorMensal = getValueElement("valor-mensal");
    taxaJuros = getValueElement("taxa-juros");
    qtdMeses = getValueElement("periodo");

    // M = C(1+i)T
    // Math.pow = elever o número
    // taxasJuros/100 para buscar porcentagem %
    // M = valor final
    // C é o Capital investido
    // I é a taxa de juros
    // T é o tempo em que o capital ficará aplicado ou sob empréstimo

    resultado = valorInicial * Math.pow( (1+taxaJuros/100), qtdMeses/12); 

    var totalFInalElemento = document.getElementById("total-final");
    totalFInalElemento.innerText = resultado.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});

    // 1 - colocar no html total investido via javascript

    // 2 - calcular somente o valor de juros (valor final - valor investido)

    // 3 - colocar no html valor total em juros via javascript

    // Valor Total Investido
    resultadoInvestido = parseFloat(valorInicial);

    var totalInvestidoElemento = document.getElementById("total-investido");
    totalInvestidoElemento.innerText = resultadoInvestido.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});

    // Valor Total Juros
    resultadoJuros = resultado - resultadoInvestido;

    var totalJurosElemento = document.getElementById("total-juros");
    totalJurosElemento.innerText = resultadoJuros.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});


    //alert(resultado);
}

// Função
function calcular() {
    getDados();   
}















// conteúdo  
// let soma = parseFloat(valorInicial) + parseFloat(valorMensal);
// let subtrair = parseFloat(valorInicial) - parseFloat(valorMensal);
//  let dividir = parseFloat(valorInicial) / parseFloat(valorMensal);
//  let multiplicar = parseFloat(valorInicial) * parseFloat(valorMensal);
//  alert(Soma)
