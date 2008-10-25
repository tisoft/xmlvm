using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;


    public partial class FireWorks : Form
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        public static void Main()
        {
            Application.Run(new FireWorks());
        }

        public FireWorks()
        {
            InitializeComponent();
        }

        public void Add(PictureBox p)
        {
            this.Controls.Add(p);
        }

        public static int        SPARK_WIDTH      = 19;
        public static int        SPARK_HEIGHT     = 20;
        public static int        SPARK_COUNT      = 20;
        public static int        BOMB_COUNT       = 4;

        public static int        WINDOW_WIDTH     = 800;
        public static int        WINDOW_HEIGHT    = 600;

        public const float              G                = 9.81f;       // m/(s*s)
        public const float              t                = 0.25f;       // s
        public const float              dV               = t * G;       // m/s

        int                      counter          = 0;
        int                      pointer          = 0;

        Bomb[]                   bombs;

        private void FireWorks_Load(object sender, EventArgs e)
        {

            this.Text = "XML11 - FireWorks";
            this.Width = WINDOW_WIDTH;
            this.Height = WINDOW_HEIGHT;
            this.BackColor = Color.Black;


            
            bombs = new Bomb[BOMB_COUNT];
            for (int i = 0; i < bombs.Length; ++i)
            {
                bombs[i] = new Bomb(this);
            }


            Timer timer = new Timer();
            timer.Tick += new EventHandler(actionPerformed);
            timer.Interval = 60;
            timer.Enabled = true;
        }

        void actionPerformed(object sender, EventArgs e)
        {
            Random r = new Random();

            if (counter-- <= 0) {
                counter = 15;

      

                pointer = (pointer + 1) % bombs.Length;

                int x = ((int) (r.NextDouble() * 600.0)) + 100;
                int y = ((int) (r.NextDouble() * 400.0));
                bombs[pointer].init(x, y);
            }

            for (int i = 0; i < bombs.Length; ++i) {
                bombs[i].calcNextStep(t, dV);
            }
        }

    }


    class Spark
    {

        public PictureBox panel;
        public float x;
        public float y;
        public float vx;
        public float vy;
    }
    class Bomb
    {

        Spark[] sparks;
        FireWorks parent;

        public Bomb()
        {
        }
        // TODO: Auto gen
        public static Bomb __NEW(FireWorks parent)
        {
            Bomb toRet = new Bomb();
            InitBomb(toRet,parent);
            return toRet;
        }
        public Bomb(FireWorks parent)
        {
            InitBomb(this, parent);
        }

        static void InitBomb(Bomb b,FireWorks parent)
        {
            b.parent = parent;
            b.sparks = new Spark[FireWorks.SPARK_COUNT];


            for (int i = 0; i < b.sparks.Length; ++i)
            {
                b.sparks[i] = new Spark();
                b.sparks[i].panel = new PictureBox();
                b.sparks[i].panel.Image = Image.FromFile("spark.gif");

                //sparks[i].panel.Image = new Bitmap(typeof(FireWorks),"spark.gif");

                b.parent.Add(b.sparks[i].panel);

            }
        }


        public void init(int x, int y)
        {
            Random r = new Random();
            for (int i = 0; i < sparks.Length; ++i)
            {

                sparks[i].x = x;
                sparks[i].y = y;

                sparks[i].vx = (float)(r.NextDouble()* 60) - 30;
                sparks[i].vy = (float)(r.NextDouble()* 60) - 30;
            }
        }



        public void calcNextStep(float secondsPassed, float dV)
        {

            for (int i = 0; i < sparks.Length; ++i)
            {
                if ((sparks[i].x < FireWorks.WINDOW_WIDTH) && 
                    (sparks[i].x > -20)
                        && (sparks[i].y < FireWorks.WINDOW_WIDTH)
                        && (sparks[i].y > -20))
                {
                    
                    // Calculate new positions
                    sparks[i].vy += dV;
                    sparks[i].y += secondsPassed * sparks[i].vy;
                    sparks[i].x += secondsPassed * sparks[i].vx;

                    // Update the position
                    sparks[i].panel.SetBounds
                        ((int)sparks[i].x, (int)sparks[i].y,
                            FireWorks.SPARK_WIDTH, FireWorks.SPARK_HEIGHT);
                     
                }
            }

        }
    }
