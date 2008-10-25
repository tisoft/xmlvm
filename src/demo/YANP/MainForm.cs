using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace YANP
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }


        string documentName = "Untitled";
        string fileName = null;
        bool isSaveRequired = false;
        private void UpdateTitle()
        {
            this.Text = documentName + " - " + "Yet Another Notepad";
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            UpdateTitle();
        }

        private void OnSaveAs()
        {

            SaveFileDialog saveDialog = new SaveFileDialog();
            saveDialog.DefaultExt = ".txt";
            saveDialog.Title = "Save As";
            saveDialog.Filter = "Text Files|*.txt|All Files|*.*";
            DialogResult result = saveDialog.ShowDialog();
            DialogResult okResult = DialogResult.OK;
            if (result == okResult)
            {
                fileName = saveDialog.FileName;
                documentName = new FileInfo(fileName).Name;
                OnSave();
            }
        }

        private void OnSave()
        {
            if (fileName == null)
            {
                OnSaveAs();
            }
            else
            {
                File.WriteAllText(fileName, txtMain.Text);
                isSaveRequired = false;
            }
        }

        private void SetToDefaultNewDoc()
        {
            txtMain.Text = "";
            documentName = "Untitled";
            isSaveRequired = false;
            fileName = null;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>Return whether ok to continue</returns>
        private bool PromptForSave()
        {
            MessageBoxButtons btn = MessageBoxButtons.YesNoCancel;
            MessageBoxIcon icon = MessageBoxIcon.Warning;
            MessageBoxDefaultButton defaultBtn = MessageBoxDefaultButton.Button1;

            DialogResult result = MessageBox.Show(
                "Do you want to save changes to " + documentName,
                "Yet Another Notepad",
                btn,
                icon,
                defaultBtn);
            DialogResult yesResult = DialogResult.Yes;
            DialogResult noResult = DialogResult.No;
            DialogResult cancelResult = DialogResult.Cancel;
            if (result == yesResult)
            {
            
                if (fileName != null)
                {
                    OnSave();
                }
                else
                {
                    OnSaveAs();
                }
                return true;
                
            }
            else if (result == noResult)
            {
                isSaveRequired = false;
                return true;
            }
            else if (result == cancelResult)
            {
                return false;
            }
            else
            {
                Console.WriteLine("Borked");
                return false;
            }
            
        }
        void ExplodeTheThing()
        {
            bool theBool = true;
            if (theBool)
            {
                if (theBool)
                {
                    if (!theBool)
                    {
                      
                    }

                }
            }
        }
        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            if (isSaveRequired)
            {
                if(PromptForSave())
                {
              
                    SetToDefaultNewDoc();                
                }
            }
            else
            {
                SetToDefaultNewDoc();
            }
            

        }
        private void txtMain_TextChanged(object sender, EventArgs e)
        {
            isSaveRequired = true;
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OnSave();
        }

        private void exiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            if (isSaveRequired)
            {
                if (PromptForSave())
                {
                    SetToDefaultNewDoc();
                    Application.Exit();
                    
                }
            }
            else
            {
                Application.Exit();
            }
        }

        private void DoOpen()
        {
            OpenFileDialog open = new OpenFileDialog();
            open.Title = "Open";
            open.DefaultExt = ".txt";
            open.Filter = "Text Files|*.txt|All Files|*.*";
            DialogResult result = open.ShowDialog();
            DialogResult desiredResult = DialogResult.OK;

            if (desiredResult == result)
            {
               FileInfo fName = new FileInfo(open.FileName);
               SetToDefaultNewDoc();
               fileName = open.FileName;
               documentName = fName.Name;
               StreamReader sr = new StreamReader(open.FileName);
               txtMain.Text = sr.ReadToEnd();
               sr.Close();
               UpdateTitle();                
            }
        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (isSaveRequired)
            {
                if (PromptForSave())
                {
                    DoOpen();
                }
            }
            else
            {
                DoOpen();
            }
        }

        private void saveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OnSaveAs();
        }
    }
}
