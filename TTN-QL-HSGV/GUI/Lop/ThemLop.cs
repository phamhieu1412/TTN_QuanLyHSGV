﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TTN_QL_HSGV.GUI.HocSinh;
using TTN_QL_HSGV.GUI.GiaoVien;
using TTN_QL_HSGV.BUS;

namespace TTN_QL_HSGV.GUI.Lop
{
    public partial class ThemLop : Form
    {
        LopBUS bus;
        public ThemLop()
        {
            InitializeComponent();
            bus = new LopBUS();
        }

        // tên với giới tính vẫn là dạng lọc
        // list gv và khóa học cần thêm  "thêm mới"
        // khi click vào thêm mới thì ra 2 form thêm mưới gv và khóa học
        // khóa học ở form phụ

        private void buttonThem_Click(object sender, EventArgs e)
        {
            this.Enabled = false;
            //Truyền mã lớp qua đây, muốn biết chi tiết thì qua form bên dưới 
            ThemHocSinhVaoLop formTMHS = new ThemHocSinhVaoLop("1");
            formTMHS.FormClosed += FormTMHS_FormClosed;
            formTMHS.Show();
        }

        private void FormTMHS_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.Enabled = true;
        }

        private void buttonChiTietHS_Click(object sender, EventArgs e)
        {
            //Truyền mã hs qua đây để xem chi tiết 
            //yêu cầu nút chi tiết chỉ bật khi có 1 dòng được chọn trên datagrv
            this.Hide();
            ThongTinHocSinh formTTHS = new ThongTinHocSinh("1");
            formTTHS.FormClosed += FormTTHS_FormClosed;
            formTTHS.Show();
        }

        private void FormTTHS_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.Show();
        }

        private void buttonQuayLai_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void buttonChiTietGV_Click(object sender, EventArgs e)
        {
            this.Hide();
            ThongTinGiaoVien formTTGV = new ThongTinGiaoVien("1");
            formTTGV.FormClosed += FormTTGV_FormClosed;
            formTTGV.Show();
        }

        private void FormTTGV_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.Show();
        }

        private void ThemLop_Load(object sender, EventArgs e)
        {
            comboBoxKhoaHoc.DataSource = bus.GetDanhSachKhoaHoc();
        }
    }
}
