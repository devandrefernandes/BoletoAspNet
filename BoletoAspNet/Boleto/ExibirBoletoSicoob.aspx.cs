using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Diagnostics;

namespace BoletoAspNet
{
  public partial class ExibirBoletoSicoob : Page
  {
    protected override void OnPreInit(EventArgs e)
    {
      base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
      //try
      //{
      //  string lanc = Request.QueryString["lanc"];
      //  string cgc = Request.QueryString["cgc"];
      //  if (string.IsNullOrEmpty(lanc) || string.IsNullOrEmpty(cgc))
      //    throw new Exception("Boleto inválido!");

      //  cedente.InnerText = data.dbCedente;
      //  cedente2.InnerText = data.dbCedente;
      //  carteira.InnerText = data.dbCarteira;
      //  agencia_codcedente.InnerText = string.Concat(data.dbAgencia, "-/", data.dbConta, "-", data.dbConta_dv);
      //  agencia_codcedente2.InnerText = string.Concat(data.dbAgencia, "-/", data.dbConta, "-", data.dbConta_dv);
      //  nosso_numero.InnerText = data.db_nosso_numero;
      //  nosso_numero2.InnerText = data.db_nosso_numero;
      //  data_documento.InnerText = data.dbDataEmissao;
      //  data_processamento.InnerText = data.dbDataEmissao;
      //  data_vencimento.InnerText = data.dbDataValidade;
      //  data_vencimento2.InnerText = data.dbDataValidade;
      //  especie_documento.InnerText = data.dbEspecieDoc;
      //  aceite_documento.InnerText = data.dbAceiteDoc;
      //  numero_documento.InnerText = data.dbNumeroDocumento;
      //  numero_documento2.InnerText = data.dbNumeroDocumento;
      //  //valor_cobrado.InnerText = data.dbValorOriginal;
      //  valor_cobrado2.InnerText = data.dbValorOriginal;
      //  valor_documento.InnerText = data.dbValorOriginal;

      //  sacado.InnerText = data.dbNomePessoa;
      //  nome_cliente2.InnerText = data.dbNomePessoa;
      //  endereco_cliente.InnerText = string.Concat(data.dbEnderecoPessoa, ",", data.dbNumeroPessoa, " ", data.dbComplementoPessoa, " ", data.dbBairroPessoa);
      //  cidade_estado_cep_cliente.InnerText = string.Concat(data.dbCidadePessoa, " - ", data.dbUfPessoa, " - CEP:", data.dbCepPessoa);

      //  Boleto funtionsBoleto = new Boleto();
      //  html_barras.InnerHtml = funtionsBoleto.fbarcode(data.dbCodigoBarra);
      //  linha_digitavel.InnerText = funtionsBoleto.MascaraLinhaDigitavel(data.dbLinhaDigitavel);
      //  linha_digitavel2.InnerText = funtionsBoleto.MascaraLinhaDigitavel(data.dbLinhaDigitavel);
      //  //linha_digitavel3.InnerText = funtionsBoleto.MascaraLinhaDigitavel(data.dbLinhaDigitavel);

      //  //demonstrativo1.InnerHtml = data.dbDemonstrativo1;
      //  //demonstrativo2.InnerHtml = data.dbDemonstrativo2;
      //  //demonstrativo3.InnerHtml = data.dbDemonstrativo3;
      //  //demonstrativo4.InnerHtml = data.dbDemonstrativo4;

      //  instrucoes1.InnerHtml = data.dbInstrucoes1;
      //  instrucoes2.InnerHtml = data.dbInstrucoes2;
      //  instrucoes3.InnerHtml = data.dbInstrucoes3;
      //  instrucoes4.InnerHtml = data.dbInstrucoes4;
      //}
      //catch(Exception ex)
      //{
      //  var st = new StackTrace(ex, true);
      //  var frame = st.GetFrame(0);
      //  var line = frame.GetFileLineNumber();

      //  lista_erros.InnerHtml = string.Format("Msg.: {0} <br /> Linha: {1}", ex.Message, line);
        
      //  if (ex.Message == "linha_digitavel")
      //    lblError.InnerText = "Linha digitável inválida.";
        
      //  moldura.Visible = false;
      //  lblError.Visible = true;
      //}
    }

    private void Render()
    {

    }
  }
}