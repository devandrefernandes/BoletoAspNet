<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExibirBoletoSicoob.aspx.cs" Inherits="BoletoAspNet.ExibirBoletoSicoob" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="HeadExibirNFSE" runat="server">
  <title>Boleto</title>
  <meta http-equiv="X-UA-Compatible" content="IE=7" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="cache-control" content="PRIVATE" />
  <style type="text/css">
    <!--
    .ti {
      font: 9px Arial, Helvetica, sans-serif !important;
    }
    -->
    @media screen,print {

      /* *** TIPOGRAFIA BASICA *** */

      * {
        font-family: Arial !important;
        font-size: 12px !important;
        margin: 0 !important;
        padding: 0 !important;
      }

      .notice {
        color: red !important;
      }


      /* *** LINHAS GERAIS *** */

      #container {
        width: 666px !important;
        margin: 0px auto !important;
        padding-bottom: 30px !important;
      }

      #instructions {
        margin: 0 !important;
        padding: 0 0 20px 0 !important;
      }

      #boleto {
        width: 666px !important;
        margin: 0 !important;
        padding: 0 !important;
      }


      /* *** CABECALHO *** */

      #instr_header {
        background: url('http://localhost/SSI/Mediato/Images/boleto/logo_empresa.png') no-repeat top left !important;
        padding-left: 160px !important;
        height: 65px !important;
      }

        #instr_header h1 {
          font-size: 16px !important;
          margin: 5px 0px !important;
        }

        #instr_header address {
          font-style: normal !important;
        }

      #instr_content {
      }

        #instr_content h2 {
          font-size: 10px !important;
          font-weight: bold !important;
        }

        #instr_content p {
          font-size: 10px !important;
          margin: 4px 0px !important;
        }

        #instr_content ol {
          font-size: 10px !important;
          margin: 5px 0 !important;
        }

          #instr_content ol li {
            font-size: 10px !important;
            text-indent: 10px !important;
            margin: 2px 0px !important;
            list-style-position: inside !important;
          }

            #instr_content ol li p {
              font-size: 10px !important;
              padding-bottom: 4px !important;
            }


      /* *** BOLETO *** */

      #boleto .cut {
        width: 666px !important;
        margin: 0px auto !important;
        border-bottom: 1px black dashed !important;
      }

        #boleto .cut p {
          margin: 0 0 5px 0 !important;
          padding: 0px !important;
          font-family: 'Arial Narrow' !important;
          font-size: 9px !important;
          color: black !important;
        }

      table.header {
        width: 666px !important;
        height: 38px !important;
        margin-top: 20px !important;
        margin-bottom: 10px !important;
        border-bottom: 2px black solid !important;
      }


        table.header div.field_cod_banco {
          width: 46px !important;
          height: 19px !important;
          margin-left: 5px !important;
          padding-top: 3px !important;
          text-align: center !important;
          font-size: 14px !important;
          font-weight: bold !important;
          color: black !important;
          border-right: 2px solid black !important;
          border-left: 2px solid black !important;
        }

        table.header td.linha_digitavel {
          width: 464px !important;
          text-align: right !important;
          font: bold 15px Arial !important;
          color: black !important;
        }

      table.line {
        margin-bottom: 3px !important;
        padding-bottom: 1px !important;
        border-bottom: 1px black solid !important;
      }

        table.line tr.titulos td {
          height: 13px !important;
          font-family: 'Arial Narrow' !important;
          font-size: 9px !important;
          color: black !important;
          border-left: 5px #000000 solid !important;
          padding-left: 2px !important;
        }

        table.line tr.campos td {
          height: 12px !important;
          font-size: 10px !important;
          color: black !important;
          border-left: 5px #000000 solid !important;
          padding-left: 2px !important;
        }

        table.line td p {
          font-size: 10px !important;
        }


        table.line tr.campos td.ag_cod_cedente,
        table.line tr.campos td.nosso_numero,
        table.line tr.campos td.valor_doc,
        table.line tr.campos td.vencimento2,
        table.line tr.campos td.ag_cod_cedente2,
        table.line tr.campos td.nosso_numero2,
        table.line tr.campos td.xvalor,
        table.line tr.campos td.valor_doc2 {
          text-align: right !important;
        }

        table.line tr.campos td.especie,
        table.line tr.campos td.qtd,
        table.line tr.campos td.vencimento,
        table.line tr.campos td.especie_doc,
        table.line tr.campos td.aceite,
        table.line tr.campos td.carteira,
        table.line tr.campos td.especie2,
        table.line tr.campos td.qtd2 {
          text-align: center !important;
        }

        table.line td.last_line {
          vertical-align: top !important;
          height: 25px !important;
        }

          table.line td.last_line table.line {
            margin-bottom: -5px !important;
            border: 0 white none !important;
          }

      td.last_line table.line td.instrucoes {
        border-left: 0 white none !important;
        padding-left: 5px !important;
        padding-bottom: 0 !important;
        margin-bottom: 0 !important;
        height: 20px !important;
        vertical-align: top !important;
      }

      table.line td.cedente {
        width: 298px !important;
      }

      table.line td.valor_cobrado2 {
        padding-bottom: 0 !important;
        margin-bottom: 0 !important;
      }


      table.line td.ag_cod_cedente {
        width: 126px !important;
      }

      table.line td.especie {
        width: 35px !important;
      }

      table.line td.qtd {
        width: 53px !important;
      }

      table.line td.nosso_numero {
        /* width: 120px !important; */
        width: 115px !important;
        padding-right: 5px !important;
      }

      table.line td.num_doc {
        width: 113px !important;
      }

      table.line td.contrato {
        width: 72px !important;
      }

      table.line td.cpf_cei_cnpj {
        width: 132px !important;
      }

      table.line td.vencimento {
        width: 134px !important;
      }

      table.line td.valor_doc {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.desconto {
        width: 113px !important;
      }

      table.line td.outras_deducoes {
        width: 112px !important;
      }

      table.line td.mora_multa {
        width: 113px !important;
      }

      table.line td.outros_acrescimos {
        width: 113px !important;
      }

      table.line td.valor_cobrado {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
        background-color: #ffc !important;
      }

      table.line td.sacado {
        width: 659px !important;
      }

      table.line td.local_pagto {
        width: 472px !important;
      }

      table.line td.vencimento2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
        background-color: #ffc !important;
      }

      table.line td.cedente2 {
        width: 472px !important;
      }

      table.line td.ag_cod_cedente2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.data_doc {
        width: 93px !important;
      }

      table.line td.num_doc2 {
        width: 173px !important;
      }

      table.line td.especie_doc {
        width: 72px !important;
      }

      table.line td.aceite {
        width: 34px !important;
      }

      table.line td.data_process {
        width: 72px !important;
      }

      table.line td.nosso_numero2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.reservado {
        width: 93px !important;
        background-color: #ffc !important;
      }

      table.line td.carteira {
        width: 93px !important;
      }

      table.line td.especie2 {
        width: 53px !important;
      }

      table.line td.qtd2 {
        width: 133px !important;
      }

      table.line td.xvalor {
        /* width: 72px !important; */
        width: 67px !important;
        padding-right: 5px !important;
      }

      table.line td.valor_doc2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.instrucoes {
        width: 475px !important;
      }

      table.line td.desconto2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.outras_deducoes2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.mora_multa2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.outros_acrescimos2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
      }

      table.line td.valor_cobrado2 {
        /* width: 180px !important; */
        width: 175px !important;
        padding-right: 5px !important;
        background-color: #ffc !important;
      }

      table.line td.sacado2 {
        width: 659px !important;
      }

      table.line td.sacador_avalista {
        width: 659px !important;
      }

      table.line tr.campos td.sacador_avalista {
        width: 472px !important;
      }

      table.line td.cod_baixa {
        color: black !important;
        width: 180px !important;
      }




      div.footer {
        margin-bottom: 30px !important;
      }

        div.footer p {
          width: 88px !important;
          margin: 0 !important;
          padding: 0 !important;
          padding-left: 525px !important;
          font-family: 'Arial Narro' !important;
          font-size: 9px !important;
          color: black !important;
        }


      div.barcode {
        width: 666px !important;
        margin-bottom: 20px !important;
      }
    }

    @media print {

      #instructions {
        height: 1px !important;
        visibility: hidden !important;
        overflow: hidden !important;
      }
    }

    #moldura {
      width: 670px !important;
      margin-left: 10px !important;
    }

    #lblError {
      padding: 20px !important;
      background-color: rgba(255, 0, 0, 0.62) !important;
      border-radius: 5px !important;
      font-size: 20px !important;
      font-weight: bold !important;
      color: #fff !important;
      width: 30% !important;
      margin: auto !important;
      margin-top: 2% !important;
    }
  </style>
</head>
<body class="masterpageDefault" style="overflow: auto; background: #fff;" text="#000000" bgcolor="#ffffff" topmargin="0" rightmargin="0">
  <div id="lblError" runat="server" visible="false">
    Boleto Inválido!
    <div style="display:none">
      <br /><br />
      <span id="lista_erros" runat="server"></span>
    </div>
  </div>
  <div id="moldura" runat="server">
    <div id="container">
      <div>
        <div id="instr_content">

          <h2>Instru&ccedil;&otilde;es</h2>
          <ol>
            <li>Imprima em impressora jato de tinta (ink jet) ou laser, em 
				qualidade normal ou alta. N&atilde;o use modo econ&ocirc;mico. 
				      <p class="notice">
                Por favor, configure margens esquerda e direita
				      para 17mm.
              </p>
            </li>
            <li>Utilize folha A4 (210 x 297 mm) ou Carta (216 x 279 mm) e margens
				m&iacute;nimas &agrave; esquerda e &agrave; direita do 
				formul&aacute;rio.
            </li>
            <li>Corte na linha indicada. N&atilde;o rasure, risque, fure ou dobre 
				a regi&atilde;o onde se encontra o c&oacute;digo de barras
            </li>
          </ol>
        </div>
        <!-- id="instr_content" -->
      </div>
      <!-- id="instructions" -->

      <div id="boleto">
        <div class="cut">
          <p>Corte na linha pontilhada</p>
        </div>

        <table class="header" border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <td width="150">
                <img src="http://localhost/SSI/Mediato/Images/boleto/logobancoob.jpg" /></td>
              <td width="50">
                <div class="field_cod_banco">756-0</div>
              </td>
              <td class="linha_digitavel" id="linha_digitavel" runat="server"></td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="cedente">Cedente</td>
              <td class="ag_cod_cedente">Ag&ecirc;ncia / C&oacute;digo do Cedente</td>
              <td class="especie">Esp&eacute;cie</td>
              <td class="qtd">Quantidade</td>
              <td class="nosso_numero">Nosso n&uacute;mero</td>
            </tr>

            <tr class="campos">
              <td class="cedente" id="cedente2" runat="server"></td>
              <td class="ag_cod_cedente" id="agencia_codcedente2" runat="server"></td>
              <td class="especie">R$&nbsp;</td>
              <td class="qtd">&nbsp;</td>
              <td class="nosso_numero" id="nosso_numero" runat="server"></td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="num_doc">N&uacute;mero do documento</td>
              <td class="contrato">Contrato</td>
              <td class="cpf_cei_cnpj">CPF/CEI/CNPJ</td>
              <td class="vencmento">Vencimento</td>
              <td class="valor_doc">Valor documento</td>
            </tr>
            <tr class="campos">
              <td class="num_doc" id="numero_documento" runat="server"></td>
              <td class="contrato"></td>
              <td class="cpf_cei_cnpj"></td>
              <td class="vencimento" id="data_vencimento" runat="server"></td>
              <td class="valor_doc" id="valor_documento" runat="server">1,00</td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="desconto">(-) Desconto / Abatimento</td>
              <td class="outras_deducoes">(-) Outras dedu&ccedil;&otilde;es</td>
              <td class="mora_multa">(+) Mora / Multa</td>
              <td class="outros_acrescimos">(+) Outros acr&eacute;scimos</td>
              <td class="valor_cobrado">(=) Valor cobrado</td>
            </tr>
            <tr class="campos">
              <td class="desconto">&nbsp;</td>
              <td class="outras_deducoes">&nbsp;</td>
              <td class="mora_multa">&nbsp;</td>
              <td class="outros_acrescimos">&nbsp;</td>
              <td class="valor_cobrado">&nbsp;</td>
            </tr>
          </tbody>
        </table>


        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="sacado">Sacado</td>
            </tr>
            <tr class="campos">
              <td class="sacado" id="sacado" runat="server">Nome do seu Cliente</td>
            </tr>
          </tbody>
        </table>

        <div class="footer">
          <p>Autentica&ccedil;&atilde;o mec&acirc;nica</p>
        </div>

        <div class="cut">
          <p>Corte na linha pontilhada</p>
        </div>

        <table class="header" border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <td width="150">
                <img src="http://localhost/SSI/Mediato/Images/boleto/logobancoob.jpg"></td>
              <td width="50">
                <div class="field_cod_banco">756-0</div>
              </td>
              <td class="linha_digitavel" id="linha_digitavel2" runat="server"></td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="local_pagto">Local de pagamento</td>
              <td class="vencimento2">Vencimento</td>
            </tr>
            <tr class="campos">
              <td class="local_pagto">QUALQUER BANCO AT&Eacute; O VENCIMENTO</td>
              <td class="vencimento2" id="data_vencimento2" runat="server">14/05/2013</td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="cedente2">Cedente</td>
              <td class="ag_cod_cedente2">Ag&ecirc;ncia/C&oacute;digo cedente</td>
            </tr>
            <tr class="campos">
              <td class="cedente2" id="cedente" runat="server"></td>
              <td class="ag_cod_cedente2" id="agencia_codcedente" runat="server"></td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="data_doc">Data do documento</td>
              <td class="num_doc2">No. documento</td>
              <td class="especie_doc">Esp&eacute;cie doc.</td>
              <td class="aceite">Aceite</td>
              <td class="data_process">Data process.</td>
              <td class="nosso_numero2">Nosso n&uacute;mero</td>
            </tr>
            <tr class="campos">
              <td class="data_doc" id="data_documento" runat="server"></td>
              <td class="num_doc2" id="numero_documento2" runat="server"></td>
              <td class="especie_doc" id="especie_documento" runat="server"></td>
              <td class="aceite" id="aceite_documento" runat="server"></td>
              <td class="data_process" id="data_processamento" runat="server"></td>
              <td class="nosso_numero2" id="nosso_numero2" runat="server"></td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="reservado">Uso do  banco</td>
              <td class="carteira">Carteira</td>
              <td class="especie2">Espécie</td>
              <td class="qtd2">Quantidade</td>
              <td class="xvalor">x Valor</td>
              <td class="valor_doc2">(=) Valor documento</td>
            </tr>
            <tr class="campos">
              <td class="reservado">&nbsp;</td>
              <td class="carteira" id="carteira" runat="server"></td>
              <td class="especie2">R$</td>
              <td class="qtd2"></td>
              <td class="xvalor"></td>
              <td class="valor_doc2" id="valor_cobrado2" runat="server"></td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <td class="last_line" rowspan="6">
                <table class="line" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr class="titulos">
                      <td class="instrucoes">Instru&ccedil;&otilde;es (Texto de responsabilidade do cedente)
                      </td>
                    </tr>
                    <tr class="campos">
                      <td class="instrucoes" rowspan="5">
                        <p id="instrucoes1" runat="server"></p>
                        <p id="instrucoes2" runat="server"></p>
                        <p id="instrucoes3" runat="server"></p>
                        <p id="instrucoes4" runat="server"></p>
                        <br />
                        <p id="demonstrativo1" runat="server"></p>
                        <p id="demonstrativo2" runat="server"></p>
                        <p id="demonstrativo3" runat="server"></p>
                        <p id="demonstrativo4" runat="server"></p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>

            <tr>
              <td>
                <table class="line" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr class="titulos">
                      <td class="desconto2">(-) Desconto / Abatimento</td>
                    </tr>
                    <tr class="campos">
                      <td class="desconto2">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>

            <tr>
              <td>
                <table class="line" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr class="titulos">
                      <td class="outras_deducoes2">(-) Outras dedu&ccedil;&otilde;es</td>
                    </tr>
                    <tr class="campos">
                      <td class="outras_deducoes2">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>

            <tr>
              <td>
                <table class="line" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr class="titulos">
                      <td class="mora_multa2">(+) Mora / Multa</td>
                    </tr>
                    <tr class="campos">
                      <td class="mora_multa2">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>

            <tr>
              <td>
                <table class="line" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr class="titulos">
                      <td class="outros_acrescimos2">(+) Outros Acr&eacute;scimos</td>
                    </tr>
                    <tr class="campos">
                      <td class="outros_acrescimos2">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>

            <tr>
              <td class="last_line">
                <table class="line" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr class="titulos">
                      <td class="valor_cobrado2">(=) Valor cobrado</td>
                    </tr>
                    <tr class="campos">
                      <td class="valor_cobrado2">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="sacado2">Sacado</td>
            </tr>
            <tr class="campos">
              <td class="sacado2">
                <p id="nome_cliente2" runat="server"></p>
                <p id="endereco_cliente" runat="server"></p>
                <p id="cidade_estado_cep_cliente" runat="server"></p>
              </td>
            </tr>
          </tbody>
        </table>

        <table class="line" cellspacing="0" cellpadding="0">
          <tbody>
            <tr class="titulos">
              <td class="sacador_avalista" colspan="2">Sacador/Avalista</td>
            </tr>
            <tr class="campos">
              <td class="sacador_avalista">&nbsp;</td>
              <td class="cod_baixa">C&oacute;d. baixa</td>
            </tr>
          </tbody>
        </table>

        <div class="footer">
          <p>Autentica&ccedil;&atilde;o mec&acirc;nica</p>
        </div>

        <div class="barcode">
          <p id="html_barras" runat="server"></p>
        </div>

        <div class="cut">
          <p>Corte na linha pontilhada</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
