// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class m implements Cloneable
{
    private static final Object VG;
    private long[] VH;
    private Object[] VI;
    private boolean VJ;
    private int mSize;
    
    static {
        VG = new Object();
    }
    
    public m() {
        this(10);
    }
    
    public m(final int n) {
        this.VJ = false;
        if (n != 0) {
            final int ahQ = s.ahQ(n);
            this.VH = new long[ahQ];
            this.VI = new Object[ahQ];
        }
        else {
            this.VH = s.VR;
            this.VI = s.VS;
        }
        this.mSize = 0;
    }
    
    private void ahG() {
        final int mSize = this.mSize;
        final long[] vh = this.VH;
        final Object[] vi = this.VI;
        int i = 0;
        int mSize2 = 0;
        while (i < mSize) {
            final Object o = vi[i];
            if (o != m.VG) {
                if (i != mSize2) {
                    vh[mSize2] = vh[i];
                    vi[mSize2] = o;
                    vi[i] = null;
                }
                ++mSize2;
            }
            ++i;
        }
        this.VJ = false;
        this.mSize = mSize2;
    }
    
    public void ahH(final long n, final Object o) {
        final int ahT = s.ahT(this.VH, this.mSize, n);
        if (ahT < 0) {
            int n2 = ~ahT;
            if (n2 < this.mSize && this.VI[n2] == m.VG) {
                this.VH[n2] = n;
                this.VI[n2] = o;
                return;
            }
            if (this.VJ && this.mSize >= this.VH.length) {
                this.ahG();
                n2 = ~s.ahT(this.VH, this.mSize, n);
            }
            if (this.mSize >= this.VH.length) {
                final int ahQ = s.ahQ(this.mSize + 1);
                final long[] vh = new long[ahQ];
                final Object[] vi = new Object[ahQ];
                System.arraycopy(this.VH, 0, vh, 0, this.VH.length);
                System.arraycopy(this.VI, 0, vi, 0, this.VI.length);
                this.VH = vh;
                this.VI = vi;
            }
            if (this.mSize - n2 != 0) {
                System.arraycopy(this.VH, n2, this.VH, n2 + 1, this.mSize - n2);
                System.arraycopy(this.VI, n2, this.VI, n2 + 1, this.mSize - n2);
            }
            this.VH[n2] = n;
            this.VI[n2] = o;
            ++this.mSize;
        }
        else {
            this.VI[ahT] = o;
        }
    }
    
    public void ahI(final int n) {
        if (this.VI[n] != m.VG) {
            this.VI[n] = m.VG;
            this.VJ = true;
        }
    }
    
    public long ahJ(final int n) {
        if (this.VJ) {
            this.ahG();
        }
        return this.VH[n];
    }
    
    public Object ahK(final int n) {
        if (this.VJ) {
            this.ahG();
        }
        return this.VI[n];
    }
    
    public Object ahL(final long n) {
        return this.ahM(n, null);
    }
    
    public Object ahM(final long n, final Object o) {
        final int ahT = s.ahT(this.VH, this.mSize, n);
        if (ahT >= 0 && this.VI[ahT] != m.VG) {
            return this.VI[ahT];
        }
        return o;
    }
    
    public void clear() {
        final int mSize = this.mSize;
        final Object[] vi = this.VI;
        for (int i = 0; i < mSize; ++i) {
            vi[i] = null;
        }
        this.mSize = 0;
        this.VJ = false;
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
        //    13: getfield        android/support/v4/a/m.VH:[J
        //    16: astore_1       
        //    17: aload_1        
        //    18: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    21: astore_1       
        //    22: aload_1        
        //    23: checkcast       [J
        //    26: astore_1       
        //    27: aload_2        
        //    28: aload_1        
        //    29: putfield        android/support/v4/a/m.VH:[J
        //    32: aload_0        
        //    33: getfield        android/support/v4/a/m.VI:[Ljava/lang/Object;
        //    36: astore_1       
        //    37: aload_1        
        //    38: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    41: astore_1       
        //    42: aload_1        
        //    43: checkcast       [Ljava/lang/Object;
        //    46: astore_1       
        //    47: aload_2        
        //    48: aload_1        
        //    49: putfield        android/support/v4/a/m.VI:[Ljava/lang/Object;
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
        if (this.VJ) {
            this.ahG();
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
                sb.append(this.ahJ(i));
                sb.append('=');
                final Object ahK = this.ahK(i);
                if (ahK == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(ahK);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}
