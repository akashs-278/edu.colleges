using System;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Windows.Forms;

namespace Program8
{
    public partial class Form1 : Form
    {
        private string GetConnectionString()
        {
            // Database file is expected to be in the same folder as the executable
            var dbPath = Path.Combine(Application.StartupPath, "Database1.accdb");
            return $"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={dbPath};Persist Security Info=False;";
        }

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            var dbPath = Path.Combine(Application.StartupPath, "Database1.accdb");
            if (!File.Exists(dbPath))
            {
                button1.Enabled = false;
                button2.Enabled = false;
                if (this.labelStatus != null)
                    this.labelStatus.Text = "Database1.accdb not found in application folder. Database operations are disabled.";
                MessageBox.Show("Database1.accdb not found. Please create the database as described in Program8\\Database-Instructions.txt. The app will run but database operations are disabled.", "Database missing", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                button1.Enabled = true;
                button2.Enabled = true;
                if (this.labelStatus != null)
                    this.labelStatus.Text = $"Using database: {dbPath}";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Display
            try
            {
                using (var conn = new OleDbConnection(GetConnectionString()))
                {
                    conn.Open();
                    using (var da = new OleDbDataAdapter("SELECT * FROM DataBase1", conn))
                    {
                        var dt = new DataTable();
                        da.Fill(dt);
                        dataGridView1.DataSource = dt;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error displaying data: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            // Insert
            try
            {
                using (var conn = new OleDbConnection(GetConnectionString()))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandText = "INSERT INTO DataBase1 ([Id], [Name], [Age]) VALUES (@ID, @Name, @Age)";
                        cmd.Parameters.AddWithValue("@ID", txtID.Text);
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        // Corrected: Age should be assigned to @Age (lab PDF had a typo)
                        cmd.Parameters.AddWithValue("@Age", txtAge.Text);
                        var rows = cmd.ExecuteNonQuery();
                        MessageBox.Show("Record inserted", "Info", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        txtID.Text = string.Empty;
                        txtName.Text = string.Empty;
                        txtAge.Text = string.Empty;
                    }
                }

                // Refresh the grid
                button1_Click(sender, e);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error inserting record: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
