using System;
using System.Windows.Forms;

namespace CalendarDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnShowDate_Click(object sender, EventArgs e)
        {
            DateTime selectedDate = dateTimePicker1.Value;

            lblDate.Text = "Selected Date: " +
                           selectedDate.ToString("dd-MM-yyyy");
        }
    }
}