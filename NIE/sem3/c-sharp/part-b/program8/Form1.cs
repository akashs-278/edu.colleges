using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Xml.Linq;

namespace program8
{
    public partial class Form1 : Form
    {
        string connectionString =
            @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\CSharpLab\Database1.accdb";

        public Form1()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (OleDbConnection conn =
                   new OleDbConnection(connectionString))
            {
                conn.Open();

                string query =
                    "INSERT INTO DataBase1 (Id, Name, Age) " +
                    "VALUES (@ID, @Name, @Age)";

                OleDbCommand cmd =
                    new OleDbCommand(query, conn);

                cmd.Parameters.AddWithValue("@ID", txtID.Text);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Age", txtAge.Text);

                cmd.ExecuteNonQuery();

                MessageBox.Show("Record inserted");

                txtID.Clear();
                txtName.Clear();
                txtAge.Clear();

                button1_Click(sender, e);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (OleDbConnection conn =
                   new OleDbConnection(connectionString))
            {
                conn.Open();

                string query = "SELECT * FROM DataBase1";

                OleDbDataAdapter da =
                    new OleDbDataAdapter(query, conn);

                DataTable dt = new DataTable();

                da.Fill(dt);

                dataGridView1.AutoGenerateColumns = true;
                dataGridView1.DataSource = dt;
            }
        }
    }
}