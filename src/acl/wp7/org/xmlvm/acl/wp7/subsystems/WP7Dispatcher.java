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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.xmlvm.acl.common.subsystems.CommonDispatcher;

import Compatlib.System.Action;
import Compatlib.System.Object;
import Compatlib.System.ComponentModel.BackgroundWorker;
import Compatlib.System.ComponentModel.DoWorkEventArgs;
import Compatlib.System.ComponentModel.DoWorkEventHandler;
import Compatlib.System.Threading.Thread;
import Compatlib.System.Windows.Deployment;

/**
 *
 */
public class WP7Dispatcher extends Object implements CommonDispatcher {

    private Map<Runnable, List<BackgroundWorker>> scheduledRunnables = new HashMap<Runnable, List<BackgroundWorker>>();


    @Override
    public boolean postDelayed(Runnable r, long delayMillis) {
        final Runnable runnable = r;
        if (delayMillis == 0) {
            Deployment.getCurrent().getDispatcher().BeginInvoke(new Action() {

                @Override
                public void invoke() {
                    runnable.run();
                }
            });

        } else {
            BackgroundWorker worker = new BackgroundWorker();
            TimerArgs timerArgs = new TimerArgs();
            timerArgs.worker = worker;
            timerArgs.runnable = r;
            timerArgs.delay = delayMillis;

            worker.DoWork.__add(new DoWorkEventHandler(this,
                    new Compatlib.System.String("runTimer")));
            worker.setWorkerSupportsCancellation(true);
            worker.RunWorkerAsync(timerArgs);
        }

        return true;
    }

    @Override
    public void post(Runnable r) {
        postDelayed(r, 0);
    }

    @Override
    public void removeCallbacks(Runnable r) {
        List<BackgroundWorker> timers = scheduledRunnables.get(r);
        if (timers != null) {
            for (int i = 0; i < timers.size(); i++) {
                BackgroundWorker worker = timers.get(i);
                worker.CancelAsync();
            }

            timers.clear();
            scheduledRunnables.remove(r);
        }
    }

    public void runTimer(Object sender, DoWorkEventArgs args) {
        final TimerArgs timerArgs = (TimerArgs) args.Argument;
        Thread.Sleep((int) timerArgs.delay);
        Deployment.getCurrent().getDispatcher().BeginInvoke(new Action() {

            @Override
            public void invoke() {
                timerArgs.runnable.run();
            }
        });

        List<BackgroundWorker> timers = scheduledRunnables.get(timerArgs.runnable);
        if (timers != null) {
            timers.remove(timerArgs.worker);
            if (timers.size() == 0) {
                scheduledRunnables.remove(timerArgs.runnable);
            }
        }
    }


    class TimerArgs extends Object {
        public BackgroundWorker worker;
        public Runnable         runnable;
        public long             delay;
    }
}
