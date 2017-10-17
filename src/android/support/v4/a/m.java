// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class m implements Cloneable
{
    private static final Object Xp;
    private long[] Xq;
    private Object[] Xr;
    private boolean Xs;
    private int mSize;
    
    static {
        Xp = new Object();
    }
    
    public m() {
        this(10);
    }
    
    public m(final int n) {
        this.Xs = false;
        if (n != 0) {
            final int aja = s.aja(n);
            this.Xq = new long[aja];
            this.Xr = new Object[aja];
        }
        else {
            this.Xq = s.XA;
            this.Xr = s.XB;
        }
        this.mSize = 0;
    }
    
    private void aiQ() {
        final int mSize = this.mSize;
        final long[] xq = this.Xq;
        final Object[] xr = this.Xr;
        int i = 0;
        int mSize2 = 0;
        while (i < mSize) {
            final Object o = xr[i];
            if (o != m.Xp) {
                if (i != mSize2) {
                    xq[mSize2] = xq[i];
                    xr[mSize2] = o;
                    xr[i] = null;
                }
                ++mSize2;
            }
            ++i;
        }
        this.Xs = false;
        this.mSize = mSize2;
    }
    
    public void aiR(final long n, final Object o) {
        final int ajd = s.ajd(this.Xq, this.mSize, n);
        if (ajd < 0) {
            int n2 = ~ajd;
            if (n2 < this.mSize && this.Xr[n2] == m.Xp) {
                this.Xq[n2] = n;
                this.Xr[n2] = o;
                return;
            }
            if (this.Xs && this.mSize >= this.Xq.length) {
                this.aiQ();
                n2 = ~s.ajd(this.Xq, this.mSize, n);
            }
            if (this.mSize >= this.Xq.length) {
                final int aja = s.aja(this.mSize + 1);
                final long[] xq = new long[aja];
                final Object[] xr = new Object[aja];
                System.arraycopy(this.Xq, 0, xq, 0, this.Xq.length);
                System.arraycopy(this.Xr, 0, xr, 0, this.Xr.length);
                this.Xq = xq;
                this.Xr = xr;
            }
            if (this.mSize - n2 != 0) {
                System.arraycopy(this.Xq, n2, this.Xq, n2 + 1, this.mSize - n2);
                System.arraycopy(this.Xr, n2, this.Xr, n2 + 1, this.mSize - n2);
            }
            this.Xq[n2] = n;
            this.Xr[n2] = o;
            ++this.mSize;
        }
        else {
            this.Xr[ajd] = o;
        }
    }
    
    public void aiS(final int n) {
        if (this.Xr[n] != m.Xp) {
            this.Xr[n] = m.Xp;
            this.Xs = true;
        }
    }
    
    public long aiT(final int n) {
        if (this.Xs) {
            this.aiQ();
        }
        return this.Xq[n];
    }
    
    public Object aiU(final int n) {
        if (this.Xs) {
            this.aiQ();
        }
        return this.Xr[n];
    }
    
    public Object aiV(final long n) {
        return this.aiW(n, null);
    }
    
    public Object aiW(final long n, final Object o) {
        final int ajd = s.ajd(this.Xq, this.mSize, n);
        if (ajd >= 0 && this.Xr[ajd] != m.Xp) {
            return this.Xr[ajd];
        }
        return o;
    }
    
    public void clear() {
        final int mSize = this.mSize;
        final Object[] xr = this.Xr;
        for (int i = 0; i < mSize; ++i) {
            xr[i] = null;
        }
        this.mSize = 0;
        this.Xs = false;
    }
    
    public m clone() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: invokespecial   java/lang/Object.clone:()Ljava/lang/Object;
        //     6: astore_2       
        //     7: aload_2        
        //     8: checkcast       Landroid/support/v4/a/m;
        //    11: astore_2       
        //    12: aload_0        
        //    13: getfield        android/support/v4/a/m.Xq:[J
        //    16: astore_1       
        //    17: aload_1        
        //    18: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    21: astore_1       
        //    22: aload_1        
        //    23: checkcast       [J
        //    26: astore_1       
        //    27: aload_2        
        //    28: aload_1        
        //    29: putfield        android/support/v4/a/m.Xq:[J
        //    32: aload_0        
        //    33: getfield        android/support/v4/a/m.Xr:[Ljava/lang/Object;
        //    36: astore_1       
        //    37: aload_1        
        //    38: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    41: astore_1       
        //    42: aload_1        
        //    43: checkcast       [Ljava/lang/Object;
        //    46: astore_1       
        //    47: aload_2        
        //    48: aload_1        
        //    49: putfield        android/support/v4/a/m.Xr:[Ljava/lang/Object;
        //    52: aload_2        
        //    53: areturn        
        //    54: astore_2       
        //    55: aconst_null    
        //    56: astore_2       
        //    57: goto            52
        //    60: astore_1       
        //    61: goto            52
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                  
        //  -----  -----  -----  -----  --------------------------------------
        //  2      6      54     60     Ljava/lang/CloneNotSupportedException;
        //  7      11     54     60     Ljava/lang/CloneNotSupportedException;
        //  12     16     60     64     Ljava/lang/CloneNotSupportedException;
        //  17     21     60     64     Ljava/lang/CloneNotSupportedException;
        //  22     26     60     64     Ljava/lang/CloneNotSupportedException;
        //  28     32     60     64     Ljava/lang/CloneNotSupportedException;
        //  32     36     60     64     Ljava/lang/CloneNotSupportedException;
        //  37     41     60     64     Ljava/lang/CloneNotSupportedException;
        //  42     46     60     64     Ljava/lang/CloneNotSupportedException;
        //  48     52     60     64     Ljava/lang/CloneNotSupportedException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0052:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public int size() {
        if (this.Xs) {
            this.aiQ();
        }
        return this.mSize;
    }
    
    public String toString() {
        int i = 0;
        if (this.size() > 0) {
            final StringBuilder sb = new StringBuilder(this.mSize * 28);
            sb.append('{');
            while (i < this.mSize) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(this.aiT(i));
                sb.append('=');
                final Object aiU = this.aiU(i);
                if (aiU == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(aiU);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}
