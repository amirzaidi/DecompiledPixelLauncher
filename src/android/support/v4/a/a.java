// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class a implements Cloneable
{
    private static final Object UQ;
    private int[] UR;
    private Object[] US;
    private boolean UT;
    private int mSize;
    
    static {
        UQ = new Object();
    }
    
    public a() {
        this(10);
    }
    
    public a(final int n) {
        this.UT = false;
        if (n != 0) {
            final int ahO = s.ahO(n);
            this.UR = new int[ahO];
            this.US = new Object[ahO];
        }
        else {
            this.UR = s.VQ;
            this.US = s.VS;
        }
        this.mSize = 0;
    }
    
    private void agA() {
        final int mSize = this.mSize;
        final int[] ur = this.UR;
        final Object[] us = this.US;
        int i = 0;
        int mSize2 = 0;
        while (i < mSize) {
            final Object o = us[i];
            if (o != a.UQ) {
                if (i != mSize2) {
                    ur[mSize2] = ur[i];
                    us[mSize2] = o;
                    us[i] = null;
                }
                ++mSize2;
            }
            ++i;
        }
        this.UT = false;
        this.mSize = mSize2;
    }
    
    public void agB(final int n) {
        final int ahS = s.ahS(this.UR, this.mSize, n);
        if (ahS >= 0 && this.US[ahS] != a.UQ) {
            this.US[ahS] = a.UQ;
            this.UT = true;
        }
    }
    
    public Object agC(final int n, final Object o) {
        final int ahS = s.ahS(this.UR, this.mSize, n);
        if (ahS >= 0 && this.US[ahS] != a.UQ) {
            return this.US[ahS];
        }
        return o;
    }
    
    public Object agD(final int n) {
        if (this.UT) {
            this.agA();
        }
        return this.US[n];
    }
    
    public void agE(final int n) {
        this.agB(n);
    }
    
    public Object agF(final int n) {
        return this.agC(n, null);
    }
    
    public int agG(final int n) {
        if (this.UT) {
            this.agA();
        }
        return this.UR[n];
    }
    
    public int agH(final int n) {
        if (this.UT) {
            this.agA();
        }
        return s.ahS(this.UR, this.mSize, n);
    }
    
    public void agI(final int n, final Object o) {
        final int ahS = s.ahS(this.UR, this.mSize, n);
        if (ahS < 0) {
            int n2 = ~ahS;
            if (n2 < this.mSize && this.US[n2] == a.UQ) {
                this.UR[n2] = n;
                this.US[n2] = o;
                return;
            }
            if (this.UT && this.mSize >= this.UR.length) {
                this.agA();
                n2 = ~s.ahS(this.UR, this.mSize, n);
            }
            if (this.mSize >= this.UR.length) {
                final int ahO = s.ahO(this.mSize + 1);
                final int[] ur = new int[ahO];
                final Object[] us = new Object[ahO];
                System.arraycopy(this.UR, 0, ur, 0, this.UR.length);
                System.arraycopy(this.US, 0, us, 0, this.US.length);
                this.UR = ur;
                this.US = us;
            }
            if (this.mSize - n2 != 0) {
                System.arraycopy(this.UR, n2, this.UR, n2 + 1, this.mSize - n2);
                System.arraycopy(this.US, n2, this.US, n2 + 1, this.mSize - n2);
            }
            this.UR[n2] = n;
            this.US[n2] = o;
            ++this.mSize;
        }
        else {
            this.US[ahS] = o;
        }
    }
    
    public void clear() {
        final int mSize = this.mSize;
        final Object[] us = this.US;
        for (int i = 0; i < mSize; ++i) {
            us[i] = null;
        }
        this.mSize = 0;
        this.UT = false;
    }
    
    public a clone() {
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
        //     8: checkcast       Landroid/support/v4/a/a;
        //    11: astore_2       
        //    12: aload_0        
        //    13: getfield        android/support/v4/a/a.UR:[I
        //    16: astore_1       
        //    17: aload_1        
        //    18: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    21: astore_1       
        //    22: aload_1        
        //    23: checkcast       [I
        //    26: astore_1       
        //    27: aload_2        
        //    28: aload_1        
        //    29: putfield        android/support/v4/a/a.UR:[I
        //    32: aload_0        
        //    33: getfield        android/support/v4/a/a.US:[Ljava/lang/Object;
        //    36: astore_1       
        //    37: aload_1        
        //    38: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    41: astore_1       
        //    42: aload_1        
        //    43: checkcast       [Ljava/lang/Object;
        //    46: astore_1       
        //    47: aload_2        
        //    48: aload_1        
        //    49: putfield        android/support/v4/a/a.US:[Ljava/lang/Object;
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
        if (this.UT) {
            this.agA();
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
                sb.append(this.agG(i));
                sb.append('=');
                final Object agD = this.agD(i);
                if (agD == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(agD);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}
