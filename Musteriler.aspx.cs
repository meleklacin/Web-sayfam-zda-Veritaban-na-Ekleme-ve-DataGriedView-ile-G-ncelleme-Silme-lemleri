using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

namespace CRMDeneme
{
    public partial class Musteriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            div.Visible = false;
         

        }

       

        protected void Button3_Click(object sender, EventArgs e)
        {
            div.Visible = true;

        }
        protected void Button4_Click(object sender, EventArgs e)
        {//EKLEME ISLEMI
                string mAdi = TextBox1.Text;
                string fSadi = TextBox2.Text;
                int FTelefon = Convert.ToInt32(TextBox3.Text);

                string urun = TextBox4.Text;
                string pasaport = TextBox5.Text;


                SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-B5135\SQLEXPRESS;Initial Catalog=login;Integrated Security=True");
                SqlCommand ekleKomutu = new SqlCommand("INSERT INTO  musteriler (MusteriAdı,FirmaSahibiAdı,FirmaTelefon,Ürün,Pasaport) VALUES (@mAdi, @fSadi,@FTel, @urun,@pasaport)", baglanti);
                ekleKomutu.Parameters.AddWithValue("@mAdi", mAdi);
                ekleKomutu.Parameters.AddWithValue("@fSadi", fSadi);
                ekleKomutu.Parameters.AddWithValue("@FTel", FTelefon);
                ekleKomutu.Parameters.AddWithValue("@urun", urun);
                ekleKomutu.Parameters.AddWithValue("@pasaport", pasaport);
                baglanti.Open();
                ekleKomutu.ExecuteNonQuery();
                baglanti.Close();
            Response.Redirect("Musteriler.aspx");

   
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
        }
    } }
