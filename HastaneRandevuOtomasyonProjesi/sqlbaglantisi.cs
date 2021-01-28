using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace HastaneRandevuOtomasyonProjesi
{
    class sqlbaglantisi
    {
        public SqlConnection baglanti() {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-387VI6I\\MSSQLSERVER01;Initial Catalog=HastaneProje;Integrated Security=True");
            baglan.Open();
       return baglan;
        }
    }
}
