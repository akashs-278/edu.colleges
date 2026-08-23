namespace CalendarDemo
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
            lblSelect = new Label();
            dateTimePicker1 = new DateTimePicker();
            btnShowDate = new Button();
            lblDate = new Label();
            SuspendLayout();
            // 
            // lblSelect
            // 
            lblSelect.AutoSize = true;
            lblSelect.Location = new Point(31, 61);
            lblSelect.Name = "lblSelect";
            lblSelect.Size = new Size(68, 15);
            lblSelect.TabIndex = 0;
            lblSelect.Text = "Select Date:";
            // 
            // dateTimePicker1
            // 
            dateTimePicker1.Location = new Point(31, 95);
            dateTimePicker1.Name = "dateTimePicker1";
            dateTimePicker1.Size = new Size(200, 23);
            dateTimePicker1.TabIndex = 1;
            // 
            // btnShowDate
            // 
            btnShowDate.Location = new Point(92, 135);
            btnShowDate.Name = "btnShowDate";
            btnShowDate.Size = new Size(75, 23);
            btnShowDate.TabIndex = 2;
            btnShowDate.Text = "Show Date";
            btnShowDate.UseVisualStyleBackColor = true;
            btnShowDate.Click += btnShowDate_Click;
            // 
            // lblDate
            // 
            lblDate.AutoSize = true;
            lblDate.Location = new Point(31, 175);
            lblDate.Name = "lblDate";
            lblDate.Size = new Size(81, 15);
            lblDate.TabIndex = 3;
            lblDate.Text = "Selected Date:";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(lblDate);
            Controls.Add(btnShowDate);
            Controls.Add(dateTimePicker1);
            Controls.Add(lblSelect);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblSelect;
        private DateTimePicker dateTimePicker1;
        private Button btnShowDate;
        private Label lblDate;
    }
}
