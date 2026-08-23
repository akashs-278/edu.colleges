using System;
using System.Windows.Forms;

namespace TrackProgressDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            progressBar1.Value = trackBar1.Value;

            lblValue.Text = "Value: " + trackBar1.Value;
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            trackBar1.Value = 50;
            progressBar1.Value = 50;

            lblValue.Text = "Value: 50";
        }
    }
}