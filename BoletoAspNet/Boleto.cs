using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BoletoAspNet
{
  [Serializable]
  public class Boleto
  {
    public string MascaraLinhaDigitavel(string valor)
    {
      string parte1 = valor.Substring(0, 5);
      string parte2 = valor.Substring(5, 5);
      string parte3 = valor.Substring(10, 5);
      string parte4 = valor.Substring(15, 6);
      string parte5 = valor.Substring(21, 5);
      string parte6 = valor.Substring(26, 6);
      string parte7 = valor.Substring(32, 1);
      string parte8 = valor.Substring(33, 14);

      return string.Format("{0}.{1} {2}.{3} {4}.{5} {6} {7}", parte1, parte2, parte3, parte4, parte5, parte6, parte7, parte8);
    }

    public string esquerda(string entra, int comp)
    {
      return entra.Substring(0, comp);
    }

    public string direita(string entra, int comp)
    {
      return entra.Substring((entra.Length - comp), comp);
    }

    public string fbarcode(string valor)
    {
      string fino = "1";
      string largo = "3";
      string altura = "50";

      string[] barcodes = new string[100];
      barcodes[0] = "00110";
      barcodes[1] = "10001";
      barcodes[2] = "01001";
      barcodes[3] = "11000";
      barcodes[4] = "00101";
      barcodes[5] = "10100";
      barcodes[6] = "01100";
      barcodes[7] = "00011";
      barcodes[8] = "10010";
      barcodes[9] = "01010";

      string texto = "";
      for (int f1 = 9; f1 >= 0; f1--)
      {
        for (int f2 = 9; f2 >= 0; f2--)
        {
          int f = (f1 * 10) + f2;
          texto = "";
          for (int i = 1; i < 6; i++)
          {
            texto += string.Concat(barcodes[f1].Substring((i - 1), 1), barcodes[f2].Substring((i - 1), 1));
          }
          barcodes[f] = texto;
        }
      }

      string barras = string.Format(@"<img src=http://localhost/SSI/Mediato/Images//boleto/p.png width={0} height={1} border=0><img 
                                      src=http://localhost/SSI/Mediato/Images//boleto/b.png width={0} height={1} border=0><img 
                                      src=http://localhost/SSI/Mediato/Images//boleto/p.png width={0} height={1} border=0><img 
                                      src=http://localhost/SSI/Mediato/Images//boleto/b.png width={0} height={1} border=0><img ", fino, altura);

      texto = valor;
      if ((texto.Length % 2) != 0)
      {
        texto = string.Concat("0", texto);
      }

      int i2 = 0;
      while (texto.Length > 0)
      {
        i2 = int.Parse(esquerda(texto, 2));
        texto = direita(texto, (texto.Length - 2));
        string findice = barcodes[i2];
        for (int i3 = 1; i3 < 11; i3 += 2)
        {
          string f1_larg = "";
          if (findice.Substring((i3 - 1), 1) == "0")
          {
            f1_larg = fino;
          }
          else
          {
            f1_larg = largo;
          }

          barras = string.Concat(barras, string.Format("src=http://localhost/SSI/Mediato/Images//boleto/p.png width={0} height={1} border=0><img ", f1_larg, altura));

          string f2_larg = "";
          if (findice.Substring(i3, 1) == "0")
          {
            f2_larg = fino;
          }
          else
          {
            f2_larg = largo;
          }

          barras = string.Concat(barras, string.Format("src=http://localhost/SSI/Mediato/Images//boleto/b.png width={0} height={1} border=0><img ", f2_larg, altura));
        }
      }

      barras = string.Concat(barras, string.Format(@"src=http://localhost/SSI/Mediato/Images//boleto/p.png width={0} height={2} border=0><img 
                                                     src=http://localhost/SSI/Mediato/Images//boleto/b.png width={1} height={2} border=0><img 
                                                     src=http://localhost/SSI/Mediato/Images//boleto/p.png width=1 height={2} border=0>", largo, fino, altura));

      return barras;
    }
  }

  public class DadosBoleto
  {
    public string dbNomePessoa { get; set; }
    public string dbCnpjPessoa { get; set; }
    public string dbEmailPessoa { get; set; }
    public string dbEnderecoPessoa { get; set; }
    public string dbNumeroPessoa { get; set; }
    public string dbComplementoPessoa { get; set; }
    public string dbBairroPessoa { get; set; }
    public string dbCepPessoa { get; set; }
    public string dbCidadePessoa { get; set; }
    public string dbUfPessoa { get; set; }
    public string dbTelefonePessoa { get; set; }

    public string dbDataEmissao { get; set; }
    public string dbDataValidade { get; set; }
    public string dbValorOriginal { get; set; }

    public string dbNumeroDocumento { get; set; }
    public string dbCodigoBarra { get; set; }
    public string dbLinhaDigitavel { get; set; }

    public string db_nosso_numero { get; set; }

    public string dbDemonstrativo1 { get; set; }
    public string dbDemonstrativo2 { get; set; }
    public string dbDemonstrativo3 { get; set; }
    public string dbDemonstrativo4 { get; set; }

    public string dbInstrucoes1 { get; set; }
    public string dbInstrucoes2 { get; set; }
    public double juros { get; set; }
    public string dbInstrucoes3 { get; set; }
    public double multa { get; set; }
    public string dbInstrucoes4 { get; set; }

    public string dbCarteira { get; set; }
    public string dbEspecieDoc { get; set; }
    public string dbAceiteDoc { get; set; }

    public string dbCedente { get; set; }
    public string dbAgencia { get; set; }
    public string dbConta { get; set; }
    public string dbConta_dv { get; set; }
  }
}