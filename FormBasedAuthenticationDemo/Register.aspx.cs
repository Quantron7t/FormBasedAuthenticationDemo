using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormBasedAuthenticationDemo
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            if (RegisterUser())
            {
                Response.Redirect("Login.aspx");
            }
        }

        private Boolean RegisterUser()
        {
            string connectionString = "Data Source=(local);Initial Catalog=Demo;Integrated Security=true;";
            string query = "Insert into Users values(@username,@password,@emailid);";
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                if (PasswordText.Text == RePasswordText.Text)
                {
                    sqlConnection.Open();
                    SqlCommand sqlCommand = new SqlCommand(query,sqlConnection);
                    sqlCommand.Parameters.AddWithValue("@username", UsernameText.Text);
                    sqlCommand.Parameters.AddWithValue("@password", PasswordText.Text);
                    sqlCommand.Parameters.AddWithValue("@emailid", EmailText.Text);
                    int i = sqlCommand.ExecuteNonQuery();
                    if (i > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "PasswordMismatch", "alert('Password Mismatch!');", true);
                    return false;
                }
            }
        }
    }
}