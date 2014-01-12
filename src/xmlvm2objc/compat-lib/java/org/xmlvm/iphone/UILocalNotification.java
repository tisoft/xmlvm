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

package org.xmlvm.iphone;

import java.util.Map;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UILocalNotification {

    private String alertAction;
    private String alertBody;
    private String alertLaunchImage;
    private int applicationIconBadgeNumber;
    private NSDate fireDate;
    private boolean hasAction;
    private NSCalendar repeatCalendar;
    private int repeatInterval;
    private String soundName;
    private NSTimeZone timeZone;
    private Map<String, Object> userInfo;

    public String getAlertAction() {
        return alertAction;
    }

    public void setAlertAction(String alertAction) {
        this.alertAction = alertAction;
    }

    public String getAlertBody() {
        return alertBody;
    }

    public void setAlertBody(String alertBody) {
        this.alertBody = alertBody;
    }

    public String getAlertLaunchImage() {
        return alertLaunchImage;
    }

    public void setAlertLaunchImage(String alertLaunchImage) {
        this.alertLaunchImage = alertLaunchImage;
    }

    public int getApplicationIconBadgeNumber() {
        return applicationIconBadgeNumber;
    }

    public void setApplicationIconBadgeNumber(int applicationIconBadgeNumber) {
        this.applicationIconBadgeNumber = applicationIconBadgeNumber;
    }

    public NSDate getFireDate() {
        return fireDate;
    }

    public void setFireDate(NSDate fireDate) {
        this.fireDate = fireDate;
    }

    public boolean isHasAction() {
        return hasAction;
    }

    public void setHasAction(boolean hasAction) {
        this.hasAction = hasAction;
    }

    public NSCalendar getRepeatCalendar() {
        return repeatCalendar;
    }

    public void setRepeatCalendar(NSCalendar repeatCalendar) {
        this.repeatCalendar = repeatCalendar;
    }

    public int getRepeatInterval() {
        return repeatInterval;
    }

    public void setRepeatInterval(int repeatInterval) {
        this.repeatInterval = repeatInterval;
    }

    public String getSoundName() {
        return soundName;
    }

    public void setSoundName(String soundName) {
        this.soundName = soundName;
    }

    public NSTimeZone getTimeZone() {
        return timeZone;
    }

    public void setTimeZone(NSTimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public Map<String, Object> getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(Map<String, Object> userInfo) {
        this.userInfo = userInfo;
    }

}
