namespace ControlsDemo
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            btnSubmit = new Button();
            chkCSharp = new CheckBox();
            chkJava = new CheckBox();
            lstCourse = new ListBox();
            lblCourse = new Label();
            lblResult = new Label();
            rdoMale = new RadioButton();
            rdoFemale = new RadioButton();
            SuspendLayout();
            // 
            // btnSubmit
            // 
            btnSubmit.Location = new Point(65, 323);
            btnSubmit.Name = "btnSubmit";
            btnSubmit.Size = new Size(75, 23);
            btnSubmit.TabIndex = 0;
            btnSubmit.Text = "Submit";
            btnSubmit.UseVisualStyleBackColor = true;
            btnSubmit.Click += btnSubmit_Click;
            // 
            // chkCSharp
            // 
            chkCSharp.AutoSize = true;
            chkCSharp.Location = new Point(41, 186);
            chkCSharp.Name = "chkCSharp";
            chkCSharp.Size = new Size(41, 19);
            chkCSharp.TabIndex = 1;
            chkCSharp.Text = "C#";
            chkCSharp.UseVisualStyleBackColor = true;
            // 
            // chkJava
            // 
            chkJava.AutoSize = true;
            chkJava.Location = new Point(41, 211);
            chkJava.Name = "chkJava";
            chkJava.Size = new Size(48, 19);
            chkJava.TabIndex = 2;
            chkJava.Text = "Java";
            chkJava.UseVisualStyleBackColor = true;
            // 
            // lstCourse
            // 
            lstCourse.FormattingEnabled = true;
            lstCourse.Items.AddRange(new object[] { "C#", "Java", "Python" });
            lstCourse.Location = new Point(41, 70);
            lstCourse.Name = "lstCourse";
            lstCourse.Size = new Size(120, 94);
            lstCourse.TabIndex = 3;
            // 
            // lblCourse
            // 
            lblCourse.AutoSize = true;
            lblCourse.Location = new Point(41, 35);
            lblCourse.Name = "lblCourse";
            lblCourse.Size = new Size(78, 15);
            lblCourse.TabIndex = 4;
            lblCourse.Text = "Select Course";
            // 
            // lblResult
            // 
            lblResult.AutoSize = true;
            lblResult.Location = new Point(41, 363);
            lblResult.Name = "lblResult";
            lblResult.Size = new Size(39, 15);
            lblResult.TabIndex = 5;
            lblResult.Text = "Result";
            // 
            // rdoMale
            // 
            rdoMale.AutoSize = true;
            rdoMale.Location = new Point(41, 263);
            rdoMale.Name = "rdoMale";
            rdoMale.Size = new Size(51, 19);
            rdoMale.TabIndex = 6;
            rdoMale.TabStop = true;
            rdoMale.Text = "Male";
            rdoMale.UseVisualStyleBackColor = true;
            // 
            // rdoFemale
            // 
            rdoFemale.AutoSize = true;
            rdoFemale.Location = new Point(41, 288);
            rdoFemale.Name = "rdoFemale";
            rdoFemale.Size = new Size(63, 19);
            rdoFemale.TabIndex = 7;
            rdoFemale.TabStop = true;
            rdoFemale.Text = "Female";
            rdoFemale.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(rdoFemale);
            Controls.Add(rdoMale);
            Controls.Add(lblResult);
            Controls.Add(lblCourse);
            Controls.Add(lstCourse);
            Controls.Add(chkJava);
            Controls.Add(chkCSharp);
            Controls.Add(btnSubmit);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button btnSubmit;
        private CheckBox chkCSharp;
        private CheckBox chkJava;
        private ListBox lstCourse;
        private Label lblCourse;
        private Label lblResult;
        private RadioButton rdoMale;
        private RadioButton rdoFemale;
    }
}
