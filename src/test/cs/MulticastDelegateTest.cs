using System;
class MulticastDelegateTest
    {
    event TestSingleDelegate onEvent;
    void TriggerEvent()
        {
        onEvent += new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent += new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent += new TestSingleDelegate(Program_onEvent2);
        onEvent();
        onEvent += new TestSingleDelegate(Program_onEvent2);
        onEvent();
        }

    void SubtractEvents()
        {
        onEvent -= new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent -= new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent -= new TestSingleDelegate(Program_onEvent2);
        onEvent();
        onEvent -= new TestSingleDelegate(Program_onEvent2);
        }
    public void Program_onEvent()
        {
        Console.WriteLine("Got called");
        }

    public void Program_onEvent2()
        {
        Console.WriteLine("Got called 2");
        }

    static void Main()
        {
        MulticastDelegateTest p = new MulticastDelegateTest();
        p.TriggerEvent();
        p.SubtractEvents();
        }
    delegate void TestSingleDelegate();
    }
