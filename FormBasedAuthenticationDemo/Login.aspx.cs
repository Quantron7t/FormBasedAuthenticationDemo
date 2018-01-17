using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormBasedAuthenticationDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User!=null && HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (ValidateCredentials())
            {
                FormsAuthentication.RedirectFromLoginPage(UsernameText.Text, false);
            }
        }

        private Boolean ValidateCredentials()
        {
            string connectionString = "Data Source=(local);Initial Catalog=Demo;Integrated Security=true;";
            string query = "Select Count(*) from Users where username=@username and password=@password";
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand(query,sqlConnection);
                sqlCommand.Parameters.AddWithValue("@username", UsernameText.Text);
                sqlCommand.Parameters.AddWithValue("@password", PasswordText.Text);
                if ((int)sqlCommand.ExecuteScalar() > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}