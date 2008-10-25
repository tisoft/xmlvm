
// Used to create EventBinaries.exe, so can be cross-compiled to Java

namespace System
{
    public class EventArgs
    {
        public static readonly EventArgs Empty = new EventArgs();

        public EventArgs()
        {
        }
    }
}
