
package System;

import java.text.SimpleDateFormat;
import java.util.Date;



// TODO DateTime implements a bunch of interfaces
public class DateTime
    extends ValueType
{

    private Date date = null;



    public DateTime()
    {
        date = new Date();
    }



    public static DateTime get_Now()
    {
        return new DateTime();
    }



    public String ToString(String format)
    {
        SimpleDateFormat formatter = new SimpleDateFormat(format.value);
        return new String(formatter.format(date));
    }
}
