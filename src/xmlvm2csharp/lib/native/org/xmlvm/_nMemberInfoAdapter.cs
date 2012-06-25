namespace org.xmlvm {
    public interface _nIJavaClient {
        void @this(java.lang.Object memberInfoAdapter);
    }

    public class _nMemberInfoAdapter<A,C> : global::java.lang.Object 
            where C : org.xmlvm._nIJavaClient, new() {
        private A memberInfoAdaptee;
        private C javaClient;

        private _nMemberInfoAdapter(A memberInfoAdaptee) {
            this.memberInfoAdaptee = memberInfoAdaptee;
            this.javaClient = new C();
            this.javaClient.@this(this);
        }

        public void setJavaClient(C javaClient) {
            this.javaClient = javaClient;
        }

        public A getMemberInfoAdaptee() {
            return this.memberInfoAdaptee;
        }

        public C getJavaClient() {
            return this.javaClient;
        }

        private static global::System.Collections.Generic.Dictionary<A, _nMemberInfoAdapter<A,C>> adapteeTable;

        static _nMemberInfoAdapter() {
            adapteeTable = new System.Collections.Generic.Dictionary<A, _nMemberInfoAdapter<A, C>>(); 
        }

        // enforces a bijection Adaptee-->Adapter:
        public static _nMemberInfoAdapter<A,C> getMemberInfoAdapter(A memberInfoAdaptee) {
            _nMemberInfoAdapter<A,C> result;
            if(!adapteeTable.TryGetValue(memberInfoAdaptee, out result)) {
                result = new _nMemberInfoAdapter<A,C>(memberInfoAdaptee);
                adapteeTable.Add(memberInfoAdaptee, result);
            }
            return result;
        }

        public static C getJavaClient(A memberInfoAdaptee) {
            return getMemberInfoAdapter(memberInfoAdaptee).getJavaClient();
        }

    }
}
