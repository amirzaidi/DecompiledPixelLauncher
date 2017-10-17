// 
// Decompiled by Procyon v0.5.30
// 

package android.support.annotation;

public enum RestrictTo$Scope
{
    agu("SUBCLASSES", n), 
    agw("TESTS", n2), 
    agx("GROUP_ID", n3), 
    agy("LIBRARY", 0), 
    agz("LIBRARY_GROUP", n4);
    
    static {
        final int n = 4;
        final int n2 = 3;
        final int n3 = 2;
        final int n4 = 1;
        final RestrictTo$Scope[] agv2 = new RestrictTo$Scope[5];
        agv2[0] = RestrictTo$Scope.agy;
        agv2[n4] = RestrictTo$Scope.agz;
        agv2[n3] = RestrictTo$Scope.agx;
        agv2[n2] = RestrictTo$Scope.agw;
        agv2[n] = RestrictTo$Scope.agu;
        agv = agv2;
    }
    
    private RestrictTo$Scope(final String s, final int n) {
    }
}
