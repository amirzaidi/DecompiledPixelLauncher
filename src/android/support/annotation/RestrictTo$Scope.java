// 
// Decompiled by Procyon v0.5.30
// 

package android.support.annotation;

public enum RestrictTo$Scope
{
    afs("SUBCLASSES", n), 
    afu("TESTS", n2), 
    afv("GROUP_ID", n3), 
    afw("LIBRARY", 0), 
    afx("LIBRARY_GROUP", n4);
    
    static {
        final int n = 4;
        final int n2 = 3;
        final int n3 = 2;
        final int n4 = 1;
        final RestrictTo$Scope[] aft2 = new RestrictTo$Scope[5];
        aft2[0] = RestrictTo$Scope.afw;
        aft2[n4] = RestrictTo$Scope.afx;
        aft2[n3] = RestrictTo$Scope.afv;
        aft2[n2] = RestrictTo$Scope.afu;
        aft2[n] = RestrictTo$Scope.afs;
        aft = aft2;
    }
    
    private RestrictTo$Scope(final String s, final int n) {
    }
}
