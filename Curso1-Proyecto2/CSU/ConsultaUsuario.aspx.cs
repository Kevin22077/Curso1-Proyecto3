using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using RestSharp;

namespace Curso1_Proyecto2.CSU
{
    public partial class ConsultaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bconsultar_Click(object sender, EventArgs e)
        {
            RestClient client= new RestClient("https://randomuser.me/api/");
            string Respuesta;

            RestRequest request = new RestRequest();
            var response = client.Get(request);

            Respuesta = response.Content;

            Resultados oResultado = JsonConvert.DeserializeObject<Resultados>(Respuesta);

            Usuario oUsuario = oResultado.results[0];
            imgUsuario.ImageUrl = oUsuario.picture.large;
            ttitulo.Text = oUsuario.name.title;
            tnombres.Text = oUsuario.name.first;
            tapellidos.Text = oUsuario.name.last;
            tusuario.Text = oUsuario.login.username;
            tcontrasena.Text = oUsuario.login.password;
        }
    }
}