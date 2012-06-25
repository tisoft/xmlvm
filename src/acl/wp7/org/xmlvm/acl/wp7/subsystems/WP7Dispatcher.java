/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.acl.wp7.subsystems;

import org.xmlvm.acl.common.subsystems.CommonDispatcher;

import Compatlib.System.Action;
import Compatlib.System.Object;
import Compatlib.System.ComponentModel.BackgroundWorker;
import Compatlib.System.ComponentModel.DoWorkEventArgs;
import Compatlib.System.Threading.Thread;
import Compatlib.System.Windows.Deployment;
import android.internal.Assert;

/**
 *
 */
public class WP7Dispatcher extends Object implements CommonDispatcher {

    private BackgroundWorker timerHandler = new BackgroundWorker();
    Runnable                 toRun        = null;
    private long             delay;


    @Override
    public boolean postDelayed(Runnable r, long delayMillis) {
        // TODO: Implement this
        Assert.NOT_IMPLEMENTED();
        return false;
        // this.toRun = r;
        // if(delayMillis>0) {
        // this.delay = delayMillis;
        // timerHandler.DoWork.__add(new DoWorkEventHandler(this, new
        // Compatlib.System.String("run")));
        // timerHandler.setWorkerSupportsCancellation(true);
        // timerHandler.RunWorkerAsync((int) delayMillis);
        // } else {
        // Deployment.getCurrent().getDispatcher().BeginInvoke(new Action() {
        //
        // @Override
        // public void invoke() {
        // toRun.run();
        // }
        // });
        // }
    }

    @Override
    public void post(Runnable r) {
        // TODO: Implement this
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public void removeCallbacks(Runnable r) {
        // TODO: Implement this
        Assert.NOT_IMPLEMENTED();
        // timerHandler.CancelAsync();
    }

    public void run(Object sender, DoWorkEventArgs args) {
        Thread.Sleep((int) this.delay);
        Deployment.getCurrent().getDispatcher().BeginInvoke(new Action() {

            @Override
            public void invoke() {
                toRun.run();
            }
        });
    }

}
