<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BoletoAspNet._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>O projeto ASP.NET de boleto bancário open-source</h2>
            </hgroup>
            <p>
                Este projeto foi criado por André Fernandes desde Janeiro/2018 e teve origem do Projeto BoletoPhp criado por Elizeu Alcantara, que por sua vez teve origem do Projeto BBBoletoFree que tiveram colaborações de Daniel William Schultz e Leandro Maniezo, que por sua vez foi derivado do PHPBoleto de João Prado Maia e Pablo Martins F. Costa.
            </p>
          <p>
            EM BREVE
          </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Boletos disponíveis:</h3>
    <ol class="round">
        <li class="one">
            <h5>Itaú</h5>
             (Carteira 175 / 174 / 178 / 104 / 109 - Sem Registro)
        </li>
        <li class="two">
            <h5>Bancoob</h5>
             (Carteira 01 [SICOOB] - Sem registro)
        </li>
        <%--<li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>--%>
    </ol>
</asp:Content>
