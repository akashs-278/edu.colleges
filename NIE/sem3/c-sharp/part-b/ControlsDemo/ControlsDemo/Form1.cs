using System;
using System.Windows.Forms;

namespace ControlsDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            string course = "";

            if (lstCourse.SelectedItem != null)
            {
                course = lstCourse.SelectedItem.ToString() ?? "";
            }

            string languages = "";

            if (chkCSharp.Checked)
            {
                languages += "C# ";
            }

            if (chkJava.Checked)
            {
                languages += "Java ";
            }

            string gender = "";

            if (rdoMale.Checked)
            {
                gender = "Male";
            }
            else if (rdoFemale.Checked)
            {
                gender = "Female";
            }

            lblResult.Text =
                "Course: " + course +
                Environment.NewLine +
                "Languages: " + languages +
                Environment.NewLine +
                "Gender: " + gender;
        }
    }
}