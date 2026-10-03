using System.Reflection.Emit;

namespace ControlsDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            label7.Visible = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            label7.Visible = true;
            if (radioButton1.Checked)
                label7.Text = "Congratulations! Mr." + textBox1.Text + "\nYou are Registered.";
            else
                label7.Text = "Congratulations! Ms." + textBox1.Text + "\nYou are Registered.";
        }
    }
}
