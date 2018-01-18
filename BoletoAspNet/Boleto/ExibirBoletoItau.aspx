<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExibirBoletoItau.aspx.cs" Inherits="BoletoAspNet.ExibirBoletoItau" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="HeadExibirNFSE" runat="server">
  <title>Boleto</title>
  <meta http-equiv="X-UA-Compatible" content="IE=7" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="cache-control" content="PRIVATE" />
  <style type="text/css">
    <!-- .cp, .cp span {
      font: bold 10px Arial;
      color: black;
    }
    <!-- .ti, .ti span {
      font: 9px Arial, Helvetica, sans-serif;
    }
    <!-- .ld, .ld span {
      font: bold 15px Arial;
      color: #000000;
    }
    <!-- .ct, .ct span {
      FONT: 8px "Arial Narrow";
      COLOR: #000033;
    }
    <!-- .cn, .cn span {
      FONT: 9px Arial;
      COLOR: black;
    }
    <!-- .bc, .bc span {
      font: bold 20px Arial;
      color: #000000;
    }
    <!-- .ld2, .ld2 span, .ld2 span font {
      font: bold 12px Arial;
      color: #000000;
    }
    -->

    form {
      background: #fff;
      padding-left: 10px !important;
    }

    #moldura {
      width: 670px;
      margin-left: 10px;
    }

    .hh2, .hh2 > span {
      font: bold 13px "Trebuchet MS", Verdana, Arial !important;
    }

    b, b > span {
      font-weight: bold !important;
    }

    strong, strong > span {
      font-weight: bold !important;
    }

    #lblError {
      padding: 20px;
      background-color: rgba(255, 0, 0, 0.62);
      border-radius: 5px;
      font-size: 20px;
      font-weight: bold;
      color: #fff;
      width: 30%;
      margin: auto;
      margin-top: 2%;
    }
  </style>
</head>
<body class="masterpageDefault" style="overflow: auto; background:#fff;" text="#000000" bgcolor="#ffffff" topmargin="0" rightmargin="0">
  <div id="lblError" runat="server" visible="false">
    Boleto Inválido!
    <div style="display:none">
      <br /><br />
      <span id="lista_erros" runat="server"></span>
    </div>
  </div>
  <div id="moldura" runat="server">
    <table width="666" cellspacing="0" cellpadding="0" border="0">
      <tr>
        <td valign="top" class="cp">
          <div align="CENTER">
            Instruções
de Impressão
          </div>
        </td>
      </tr>
      <tr>
        <td valign="top" class="cp">
          <div align="left">
            <p>
              <li>Imprima em impressora jato de tinta (ink jet) ou laser em qualidade normal ou alta (Não use modo econômico).<br />
                <li>Utilize folha A4 (210 x 297 mm) ou Carta (216 x 279 mm) e margens mínimas à esquerda e à direita do formulário.<br />
                  <li>Corte na linha indicada. Não rasure, risque, fure ou dobre a região onde se encontra o código de barras.<br />
                    <li>Caso não apareça o código de barras no final, clique em F5 para atualizar esta tela.
                      <li>Caso tenha problemas ao imprimir, copie a seqüencia numérica abaixo e pague no caixa eletrônico ou no internet banking:<br />
                        <br />
                        <span class="ld2">&nbsp;&nbsp;&nbsp;&nbsp;Linha Digitável: &nbsp;<font class="ld2" id="linha_digitavel" runat="server"></font><br />
                          &nbsp;&nbsp;&nbsp;&nbsp;Valor: &nbsp;&nbsp;R$ <font class="ld2" id="valor_cobrado2" runat="server"></font><br />
                        </span>
          </div>
        </td>
      </tr>
    </table>
    <br />
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tbody>
        <tr>
          <td class="ct" width="666">
            <img height="1" src="Images/6.png" width="665" border="0"></td>
        </tr>
        <tr>
          <td class="ct" width="666">
            <div align="right">
              <b class="cp">Recibo
do Sacado</b>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
    <table width="666" cellspacing="5" cellpadding="0" border="0">
      <tr>
        <td width="41"></td>
      </tr>
    </table>
    <br />
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tr>
        <td class="cp" width="150">
          <span class="campo">
            <img
              src="Images/logoitau.jpg" width="150" height="40"
              border="0"></span></td>
        <td width="3" valign="bottom">
          <img height="22" src="Images/3.png" width="2" border="0"></td>
        <td class="cpt" width="58" valign="bottom">
          <div align="center"><font class="bc">341-7</font></div>
        </td>
        <td width="3" valign="bottom">
          <img height="22" src="Images/3.png" width="2" border="0"></td>
        <td class="ld" align="right" width="453" valign="bottom"><span class="ld">
          <span class="campotitulo" id="linha_digitavel2" runat="server"></span></span></td>
      </tr>
      <tbody>
        <tr>
          <td colspan="5">
            <img height="2" src="Images/2.png" width="666" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="298" height="13">Cedente</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="126" height="13">Agência/Código
do Cedente</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="34" height="13">Espécie</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="53" height="13">Quantidade</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="120" height="13">Nosso
número</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="298" height="12">
            <span class="campo" id="cedente" runat="server"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="126" height="12">
            <span class="campo" id="agencia_codcedente" runat="server"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="34" height="12"><span class="campo">R$</span>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="53" height="12"><span class="campo"></span>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="120" height="12">
            <span class="campo" id="nosso_numero" runat="server"></span></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="298" height="1">
            <img height="1" src="Images/2.png" width="298" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="126" height="1">
            <img height="1" src="Images/2.png" width="126" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="34" height="1">
            <img height="1" src="Images/2.png" width="34" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="53" height="1">
            <img height="1" src="Images/2.png" width="53" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="120" height="1">
            <img height="1" src="Images/2.png" width="120" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" colspan="3" height="13">Número
do documento</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="132" height="13">CPF/CNPJ</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="134" height="13">Vencimento</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="180" height="13">Valor
documento</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" colspan="3" height="12">
            <span class="campo" id="numero_documento" runat="server"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="132" height="12">
            <span class="campo"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="134" height="12">
            <span class="campo" id="data_vencimento" runat="server"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="180" height="12">
            <span class="campo" id="valor_cobrado" runat="server"></span></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="113" height="1">
            <img height="1" src="Images/2.png" width="113" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="72" height="1">
            <img height="1" src="Images/2.png" width="72" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="132" height="1">
            <img height="1" src="Images/2.png" width="132" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="134" height="1">
            <img height="1" src="Images/2.png" width="134" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="180" height="1">
            <img height="1" src="Images/2.png" width="180" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="113" height="13">(-)
Desconto / Abatimentos</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="112" height="13">(-)
Outras deduções</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="113" height="13">(+)
Mora / Multa</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="113" height="13">(+)
Outros acréscimos</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="180" height="13">(=)
Valor cobrado</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="113" height="12"></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="112" height="12"></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="113" height="12"></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="113" height="12"></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="180" height="12"></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="113" height="1">
            <img height="1" src="Images/2.png" width="113" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="112" height="1">
            <img height="1" src="Images/2.png" width="112" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="113" height="1">
            <img height="1" src="Images/2.png" width="113" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="113" height="1">
            <img height="1" src="Images/2.png" width="113" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="180" height="1">
            <img height="1" src="Images/2.png" width="180" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="659" height="13">Sacado</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="659" height="12">
            <span class="campo" id="sacado" runat="server"></span></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="659" height="1">
            <img height="1" src="Images/2.png" width="659" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" width="7" height="12"></td>
          <td class="ct" width="564">Demonstrativo</td>
          <td class="ct" width="7" height="12"></td>
          <td class="ct" width="88">Autenticação
mecânica</td>
        </tr>
        <tr>
          <td width="7"></td>
          <td class="cp" width="564">
            <span class="campo" id="demonstrativo1" runat="server"></span><br />
            <span class="campo" id="demonstrativo2" runat="server"></span><br />
            <span class="campo" id="demonstrativo3" runat="server"></span><br />
            <span class="campo" id="demonstrativo4" runat="server"></span><br />
          </td>
          <td width="7"></td>
          <td width="88"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tbody>
        <tr>
          <td width="7"></td>
          <td width="500" class="cp">
            <br />
            <br />
            <br />
          </td>
          <td width="159"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tr>
        <td class="ct" width="666"></td>
      </tr>
      <tbody>
        <tr>
          <td class="ct" width="666">
            <div align="right">Corte na linha pontilhada</div>
          </td>
        </tr>
        <tr>
          <td class="ct" width="666">
            <img height="1" src="Images/6.png" width="665" border="0"></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tr>
        <td class="cp" width="150">
          <span class="campo">
            <img
              src="Images/logoitau.jpg" width="150" height="40"
              border="0"></span></td>
        <td width="3" valign="bottom">
          <img height="22" src="Images/3.png" width="2" border="0"></td>
        <td class="cpt" width="58" valign="bottom">
          <div align="center"><font class="bc">341-7</font></div>
        </td>
        <td width="3" valign="bottom">
          <img height="22" src="Images/3.png" width="2" border="0"></td>
        <td class="ld" align="right" width="453" valign="bottom"><span class="ld">
          <span class="campotitulo" id="linha_digitavel3" runat="server"></span></span></td>
      </tr>
      <tbody>
        <tr>
          <td colspan="5">
            <img height="2" src="Images/2.png" width="666" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="472" height="13">Local
de pagamento</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="180" height="13">Vencimento</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="472" height="12">Pagável
em qualquer Banco até o vencimento</td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="180" height="12">
            <span class="campo" id="data_vencimento2" runat="server"></span></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="472" height="1">
            <img height="1" src="Images/2.png" width="472" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="180" height="1">
            <img height="1" src="Images/2.png" width="180" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="472" height="13">Cedente</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="180" height="13">Agência/Código
cedente</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="472" height="12">
            <span class="campo" id="cedente2" runat="server"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="180" height="12">
            <span class="campo" id="agencia_codcedente2" runat="server"></span></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="472" height="1">
            <img height="1" src="Images/2.png" width="472" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="180" height="1">
            <img height="1" src="Images/2.png" width="180" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="113" height="13">Data
do documento</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="153" height="13">N<u>o</u>
            documento</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="62" height="13">Espécie
doc.</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="34" height="13">Aceite</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="82" height="13">Data
processamento</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="180" height="13">Nosso
número</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="113" height="12">
            <div align="left">
              <span class="campo" id="data_documento" runat="server"></span>
            </div>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="153" height="12">
            <span class="campo" id="numero_documento2" runat="server"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="62" height="12">
            <div align="left">
              <span class="campo" id="especie_documento" runat="server"></span>
            </div>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="34" height="12">
            <div align="left">
              <span class="campo" id="aceite_documento" runat="server"></span>
            </div>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="82" height="12">
            <div align="left">
              <span class="campo" id="data_processamento" runat="server"></span>
            </div>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="180" height="12">
            <span class="campo" id="nosso_numero2" runat="server"></span></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="113" height="1">
            <img height="1" src="Images/2.png" width="113" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="153" height="1">
            <img height="1" src="Images/2.png" width="153" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="62" height="1">
            <img height="1" src="Images/2.png" width="62" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="34" height="1">
            <img height="1" src="Images/2.png" width="34" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="82" height="1">
            <img height="1" src="Images/2.png" width="82" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="180" height="1">
            <img height="1" src="Images/2.png" width="180" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" colspan="3" height="13">Uso
do banco</td>
          <td class="ct" valign="top" height="13" width="7">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="83" height="13">Carteira</td>
          <td class="ct" valign="top" height="13" width="7">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="53" height="13">Espécie</td>
          <td class="ct" valign="top" height="13" width="7">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="123" height="13">Quantidade</td>
          <td class="ct" valign="top" height="13" width="7">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="72" height="13">Valor Documento</td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="180" height="13">(=)
Valor documento</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td valign="top" class="cp" height="12" colspan="3">
            <div align="left">
            </div>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="83">
            <div align="left">
              <span class="campo" id="carteira" runat="server"></span>
            </div>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="53">
            <div align="left">
              <span class="campo">R$</span>
            </div>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="123"><span class="campo"></span>
          </td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="72">
            <span class="campo"></span></td>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" align="right" width="180" height="12">
            <span class="campo" id="valor_documento" runat="server"></span></td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="75" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="31" height="1">
            <img height="1" src="Images/2.png" width="31" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="83" height="1">
            <img height="1" src="Images/2.png" width="83" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="53" height="1">
            <img height="1" src="Images/2.png" width="53" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="123" height="1">
            <img height="1" src="Images/2.png" width="123" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="72" height="1">
            <img height="1" src="Images/2.png" width="72" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="180" height="1">
            <img height="1" src="Images/2.png" width="180" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tbody>
        <tr>
          <td align="right" width="10">
            <table cellspacing="0" cellpadding="0" border="0" align="left">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="1" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
          <td valign="top" width="468" rowspan="5"><font class="ct">Instruções
(Texto de responsabilidade do cedente)</font><br />
            <br />
            <span class="cp">
              <font class="campo" id="instrucoes1" runat="server"></font><br />
              <font class="campo" id="instrucoes2" runat="server"></font><br />
              <font class="campo" id="instrucoes3" runat="server"></font><br />
              <font class="campo" id="instrucoes4" runat="server"></font>
              <br /><br />
            </span>
          </td>
          <td align="right" width="188">
            <table cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                  <td class="ct" valign="top" width="180" height="13">(-)
Desconto / Abatimentos</td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                  <td class="cp" valign="top" align="right" width="180" height="12"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="7" border="0"></td>
                  <td valign="top" width="180" height="1">
                    <img height="1" src="Images/2.png" width="180" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr>
          <td align="right" width="10">
            <table cellspacing="0" cellpadding="0" border="0" align="left">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="1" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
          <td align="right" width="188">
            <table cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                  <td class="ct" valign="top" width="180" height="13">(-)
Outras deduções</td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                  <td class="cp" valign="top" align="right" width="180" height="12"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="7" border="0"></td>
                  <td valign="top" width="180" height="1">
                    <img height="1" src="Images/2.png" width="180" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr>
          <td align="right" width="10">
            <table cellspacing="0" cellpadding="0" border="0" align="left">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="1" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
          <td align="right" width="188">
            <table cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                  <td class="ct" valign="top" width="180" height="13">(+)
Mora / Multa</td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                  <td class="cp" valign="top" align="right" width="180" height="12"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="7" border="0"></td>
                  <td valign="top" width="180" height="1">
                    <img height="1" src="Images/2.png" width="180" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr>
          <td align="right" width="10">
            <table cellspacing="0" cellpadding="0" border="0" align="left">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="1" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
          <td align="right" width="188">
            <table cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                  <td class="ct" valign="top" width="180" height="13">(+)
Outros acréscimos</td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                  <td class="cp" valign="top" align="right" width="180" height="12"></td>
                </tr>
                <tr>
                  <td valign="top" width="7" height="1">
                    <img height="1" src="Images/2.png" width="7" border="0"></td>
                  <td valign="top" width="180" height="1">
                    <img height="1" src="Images/2.png" width="180" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr>
          <td align="right" width="10">
            <table cellspacing="0" cellpadding="0" border="0" align="left">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                </tr>
              </tbody>
            </table>
          </td>
          <td align="right" width="188">
            <table cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td class="ct" valign="top" width="7" height="13">
                    <img height="13" src="Images/1.png" width="1" border="0"></td>
                  <td class="ct" valign="top" width="180" height="13">(=)
Valor cobrado</td>
                </tr>
                <tr>
                  <td class="cp" valign="top" width="7" height="12">
                    <img height="12" src="Images/1.png" width="1" border="0"></td>
                  <td class="cp" valign="top" align="right" width="180" height="12"></td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tbody>
        <tr>
          <td valign="top" width="666" height="1">
            <img height="1" src="Images/2.png" width="666" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="659" height="13">Sacado</td>
        </tr>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="659" height="12"><span class="campo" id="nome_cliente2" runat="server"></span>
          </td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="cp" valign="top" width="7" height="12">
            <img height="12" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="659" height="12"><span class="campo" id="endereco_cliente" runat="server"></span>
          </td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="cp" valign="top" width="472" height="13">
            <span class="campo" id="cidade_estado_cep_cliente" runat="server"></span></td>
          <td class="ct" valign="top" width="7" height="13">
            <img height="13" src="Images/1.png" width="1" border="0"></td>
          <td class="ct" valign="top" width="180" height="13">Cód.
baixa</td>
        </tr>
        <tr>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="472" height="1">
            <img height="1" src="Images/2.png" width="472" border="0"></td>
          <td valign="top" width="7" height="1">
            <img height="1" src="Images/2.png" width="7" border="0"></td>
          <td valign="top" width="180" height="1">
            <img height="1" src="Images/2.png" width="180" border="0"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" border="0" width="666">
      <tbody>
        <tr>
          <td class="ct" width="7" height="12"></td>
          <td class="ct" width="409">Sacador/Avalista</td>
          <td class="ct" width="250">
            <div align="right">
              Autenticação
mecânica - <b class="cp">Ficha de Compensação</b>
            </div>
          </td>
        </tr>
        <tr>
          <td class="ct" colspan="3"></td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tbody>
        <tr>
          <td valign="bottom" align="left" height="50" id="html_barras" runat="server">
          </td>
        </tr>
      </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="666" border="0">
      <tr>
        <td class="ct" width="666"></td>
      </tr>
      <tbody>
        <tr>
          <td class="ct" width="666">
            <div align="right">
              Corte
na linha pontilhada
            </div>
          </td>
        </tr>
        <tr>
          <td class="ct" width="666">
            <img height="1" src="Images/6.png" width="665" border="0"></td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>
