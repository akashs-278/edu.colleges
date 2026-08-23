namespace TrackProgressDemo
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
            grpProgress = new GroupBox();
            lblValue = new Label();
            progressBar1 = new ProgressBar();
            trackBar1 = new TrackBar();
            btnStart = new Button();
            grpProgress.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)trackBar1).BeginInit();
            SuspendLayout();
            // 
            // grpProgress
            // 
            grpProgress.Controls.Add(lblValue);
            grpProgress.Controls.Add(progressBar1);
            grpProgress.Controls.Add(trackBar1);
            grpProgress.Location = new Point(75, 55);
            grpProgress.Name = "grpProgress";
            grpProgress.Size = new Size(343, 208);
            grpProgress.TabIndex = 0;
            grpProgress.TabStop = false;
            grpProgress.Text = "Progress Control";
            // 
            // lblValue
            // 
            lblValue.AutoSize = true;
            lblValue.Location = new Point(38, 131);
            lblValue.Name = "lblValue";
            lblValue.Size = new Size(47, 15);
            lblValue.TabIndex = 2;
            lblValue.Text = "Value: 0";
            // 
            // progressBar1
            // 
            progressBar1.Location = new Point(36, 85);
            progressBar1.Name = "progressBar1";
            progressBar1.Size = new Size(104, 23);
            progressBar1.TabIndex = 1;
            // 
            // trackBar1
            // 
            trackBar1.Location = new Point(36, 34);
            trackBar1.Maximum = 100;
            trackBar1.Name = "trackBar1";
            trackBar1.Size = new Size(104, 45);
            trackBar1.TabIndex = 0;
            trackBar1.Scroll += trackBar1_Scroll;
            // 
            // btnStart
            // 
            btnStart.Location = new Point(209, 269);
            btnStart.Name = "btnStart";
            btnStart.Size = new Size(75, 23);
            btnStart.TabIndex = 3;
            btnStart.Text = "Start";
            btnStart.UseVisualStyleBackColor = true;
            btnStart.Click += btnStart_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(btnStart);
            Controls.Add(grpProgress);
            Name = "Form1";
            Text = "Form1";
            grpProgress.ResumeLayout(false);
            grpProgress.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)trackBar1).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private GroupBox grpProgress;
        private Label lblValue;
        private ProgressBar progressBar1;
        private TrackBar trackBar1;
        private Button btnStart;
    }
}
