﻿namespace TTN_QL_HSGV.GUI.TimKiem
{
    partial class ChiTiet
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.buttonLoc = new System.Windows.Forms.Button();
            this.comboBoxGiaoVien = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.comboBoxLop = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBoxBuoi = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.comboBoxThu = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.buttonQuayLai = new System.Windows.Forms.Button();
            this.buttonChiTiet = new System.Windows.Forms.Button();
            this.textBoxTongSo = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridViewDS_HS = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDS_HS)).BeginInit();
            this.SuspendLayout();
            // 
            // buttonLoc
            // 
            this.buttonLoc.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonLoc.Location = new System.Drawing.Point(763, 71);
            this.buttonLoc.Name = "buttonLoc";
            this.buttonLoc.Size = new System.Drawing.Size(59, 30);
            this.buttonLoc.TabIndex = 81;
            this.buttonLoc.Text = "Lọc";
            this.buttonLoc.UseVisualStyleBackColor = true;
            // 
            // comboBoxGiaoVien
            // 
            this.comboBoxGiaoVien.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxGiaoVien.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxGiaoVien.FormattingEnabled = true;
            this.comboBoxGiaoVien.Location = new System.Drawing.Point(573, 73);
            this.comboBoxGiaoVien.Name = "comboBoxGiaoVien";
            this.comboBoxGiaoVien.Size = new System.Drawing.Size(184, 28);
            this.comboBoxGiaoVien.TabIndex = 80;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(475, 77);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(92, 20);
            this.label6.TabIndex = 79;
            this.label6.Text = "Giáo Viên :";
            // 
            // comboBoxLop
            // 
            this.comboBoxLop.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxLop.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxLop.FormattingEnabled = true;
            this.comboBoxLop.Location = new System.Drawing.Point(365, 73);
            this.comboBoxLop.Name = "comboBoxLop";
            this.comboBoxLop.Size = new System.Drawing.Size(104, 28);
            this.comboBoxLop.TabIndex = 78;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(312, 76);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(47, 20);
            this.label5.TabIndex = 77;
            this.label5.Text = "Lớp :";
            // 
            // comboBoxBuoi
            // 
            this.comboBoxBuoi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxBuoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxBuoi.FormattingEnabled = true;
            this.comboBoxBuoi.Items.AddRange(new object[] {
            "Sáng",
            "Chiều",
            "None"});
            this.comboBoxBuoi.Location = new System.Drawing.Point(222, 73);
            this.comboBoxBuoi.Name = "comboBoxBuoi";
            this.comboBoxBuoi.Size = new System.Drawing.Size(84, 28);
            this.comboBoxBuoi.TabIndex = 76;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(169, 77);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 20);
            this.label4.TabIndex = 75;
            this.label4.Text = "Buổi :";
            // 
            // comboBoxThu
            // 
            this.comboBoxThu.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxThu.FormattingEnabled = true;
            this.comboBoxThu.Items.AddRange(new object[] {
            "Thứ 2",
            "Thứ 3",
            "Thứ 4",
            "Thứ 5",
            "Thứ 6",
            "Thứ 7",
            "Chủ Nhật",
            "None"});
            this.comboBoxThu.Location = new System.Drawing.Point(63, 73);
            this.comboBoxThu.Name = "comboBoxThu";
            this.comboBoxThu.Size = new System.Drawing.Size(100, 28);
            this.comboBoxThu.TabIndex = 74;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(10, 76);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(47, 20);
            this.label3.TabIndex = 73;
            this.label3.Text = "Thứ :";
            // 
            // buttonQuayLai
            // 
            this.buttonQuayLai.AutoSize = true;
            this.buttonQuayLai.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonQuayLai.Location = new System.Drawing.Point(464, 462);
            this.buttonQuayLai.Name = "buttonQuayLai";
            this.buttonQuayLai.Size = new System.Drawing.Size(119, 30);
            this.buttonQuayLai.TabIndex = 72;
            this.buttonQuayLai.Text = "Quay Lại";
            this.buttonQuayLai.UseVisualStyleBackColor = true;
            this.buttonQuayLai.Click += new System.EventHandler(this.buttonQuayLai_Click);
            // 
            // buttonChiTiet
            // 
            this.buttonChiTiet.AutoSize = true;
            this.buttonChiTiet.Enabled = false;
            this.buttonChiTiet.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonChiTiet.Location = new System.Drawing.Point(269, 462);
            this.buttonChiTiet.Name = "buttonChiTiet";
            this.buttonChiTiet.Size = new System.Drawing.Size(115, 30);
            this.buttonChiTiet.TabIndex = 71;
            this.buttonChiTiet.Text = "Chi Tiết";
            this.buttonChiTiet.UseVisualStyleBackColor = true;
            this.buttonChiTiet.Click += new System.EventHandler(this.buttonChiTiet_Click);
            // 
            // textBoxTongSo
            // 
            this.textBoxTongSo.Enabled = false;
            this.textBoxTongSo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxTongSo.Location = new System.Drawing.Point(689, 430);
            this.textBoxTongSo.Name = "textBoxTongSo";
            this.textBoxTongSo.Size = new System.Drawing.Size(133, 27);
            this.textBoxTongSo.TabIndex = 69;
            this.textBoxTongSo.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(597, 433);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 20);
            this.label2.TabIndex = 68;
            this.label2.Text = "Tổng Số  :";
            // 
            // dataGridViewDS_HS
            // 
            this.dataGridViewDS_HS.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewDS_HS.Location = new System.Drawing.Point(14, 107);
            this.dataGridViewDS_HS.Name = "dataGridViewDS_HS";
            this.dataGridViewDS_HS.RowTemplate.Height = 24;
            this.dataGridViewDS_HS.Size = new System.Drawing.Size(808, 320);
            this.dataGridViewDS_HS.TabIndex = 67;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(167, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(499, 32);
            this.label1.TabIndex = 66;
            this.label1.Text = "Chi Tiết Lịch Của Người Cần Tìm Kiếm";
            // 
            // ChiTiet
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(832, 503);
            this.Controls.Add(this.buttonLoc);
            this.Controls.Add(this.comboBoxGiaoVien);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.comboBoxLop);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.comboBoxBuoi);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.comboBoxThu);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.buttonQuayLai);
            this.Controls.Add(this.buttonChiTiet);
            this.Controls.Add(this.textBoxTongSo);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridViewDS_HS);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "ChiTiet";
            this.Text = "ChiTiet";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDS_HS)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonLoc;
        private System.Windows.Forms.ComboBox comboBoxGiaoVien;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox comboBoxLop;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox comboBoxBuoi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBoxThu;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button buttonQuayLai;
        private System.Windows.Forms.Button buttonChiTiet;
        private System.Windows.Forms.TextBox textBoxTongSo;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridViewDS_HS;
        private System.Windows.Forms.Label label1;
    }
}