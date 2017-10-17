// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class a implements Cloneable
{
    private static final Object Wz;
    private int[] WA;
    private Object[] WB;
    private boolean WC;
    private int mSize;
    
    static {
        Wz = new Object();
    }
    
    public a() {
        this(10);
    }
    
    public a(final int n) {
        this.WC = false;
        if (n != 0) {
            final int aiY = s.aiY(n);
            this.WA = new int[aiY];
            this.WB = new Object[aiY];
        }
        else {
            this.WA = s.Xz;
            this.WB = s.XB;
        }
        this.mSize = 0;
    }
    
    private void ahL() {
        final int mSize = this.mSize;
        final int[] wa = this.WA;
        final Object[] wb = this.WB;
        int i = 0;
        int mSize2 = 0;
        while (i < mSize) {
            final Object o = wb[i];
            if (o != a.Wz) {
                if (i != mSize2) {
                    wa[mSize2] = wa[i];
                    wb[mSize2] = o;
                    wb[i] = null;
                }
                ++mSize2;
            }
            ++i;
        }
        this.WC = false;
        this.mSize = mSize2;
    }
    
    public void ahM(final int n) {
        final int ajc = s.ajc(this.WA, this.mSize, n);
        if (ajc >= 0 && this.WB[ajc] != a.Wz) {
            this.WB[ajc] = a.Wz;
            this.WC = true;
        }
    }
    
    public Object ahN(final int n, final Object o) {
        final int ajc = s.ajc(this.WA, this.mSize, n);
        if (ajc >= 0 && this.WB[ajc] != a.Wz) {
            return this.WB[ajc];
        }
        return o;
    }
    
    public Object ahO(final int n) {
        if (this.WC) {
            this.ahL();
        }
        return this.WB[n];
    }
    
    public void ahP(final int n) {
        this.ahM(n);
    }
    
    public int ahQ(final int n) {
        if (this.WC) {
            this.ahL();
        }
        return this.WA[n];
    }
    
    public int ahR(final int n) {
        if (this.WC) {
            this.ahL();
        }
        return s.ajc(this.WA, this.mSize, n);
    }
    
    public void ahS(final int n, final Object o) {
        final int ajc = s.ajc(this.WA, this.mSize, n);
        if (ajc < 0) {
            int n2 = ~ajc;
            if (n2 < this.mSize && this.WB[n2] == a.Wz) {
                this.WA[n2] = n;
                this.WB[n2] = o;
                return;
            }
            if (this.WC && this.mSize >= this.WA.length) {
                this.ahL();
                n2 = ~s.ajc(this.WA, this.mSize, n);
            }
            if (this.mSize >= this.WA.length) {
                final int aiY = s.aiY(this.mSize + 1);
                final int[] wa = new int[aiY];
                final Object[] wb = new Object[aiY];
                System.arraycopy(this.WA, 0, wa, 0, this.WA.length);
                System.arraycopy(this.WB, 0, wb, 0, this.WB.length);
                this.WA = wa;
                this.WB = wb;
            }
            if (this.mSize - n2 != 0) {
                System.arraycopy(this.WA, n2, this.WA, n2 + 1, this.mSize - n2);
                System.arraycopy(this.WB, n2, this.WB, n2 + 1, this.mSize - n2);
            }
            this.WA[n2] = n;
            this.WB[n2] = o;
            ++this.mSize;
        }
        else {
            this.WB[ajc] = o;
        }
    }
    
    public void clear() {
        final int mSize = this.mSize;
        final Object[] wb = this.WB;
        for (int i = 0; i < mSize; ++i) {
            wb[i] = null;
        }
        this.mSize = 0;
        this.WC = false;
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
        //    13: getfield        android/support/v4/a/a.WA:[I
        //    16: astore_1       
        //    17: aload_1        
        //    18: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    21: astore_1       
        //    22: aload_1        
        //    23: checkcast       [I
        //    26: astore_1       
        //    27: aload_2        
        //    28: aload_1        
        //    29: putfield        android/support/v4/a/a.WA:[I
        //    32: aload_0        
        //    33: getfield        android/support/v4/a/a.WB:[Ljava/lang/Object;
        //    36: astore_1       
        //    37: aload_1        
        //    38: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    41: astore_1       
        //    42: aload_1        
        //    43: checkcast       [Ljava/lang/Object;
        //    46: astore_1       
        //    47: aload_2        
        //    48: aload_1        
        //    49: putfield        android/support/v4/a/a.WB:[Ljava/lang/Object;
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
    
    public Object get(final int n) {
        return this.ahN(n, null);
    }
    
    public int size() {
        if (this.WC) {
            this.ahL();
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
                sb.append(this.ahQ(i));
                sb.append('=');
                final Object ahO = this.ahO(i);
                if (ahO == this) {
                    sb.append("(this Map)");
                }
                else {
                    sb.append(ahO);
                }
                ++i;
            }
            sb.append('}');
            return sb.toString();
        }
        return "{}";
    }
}
