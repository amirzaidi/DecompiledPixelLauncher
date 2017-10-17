// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class ax extends aU implements Cloneable
{
    public int[] su;
    public long[] sv;
    public long[] sw;
    public String[] sx;
    public String[] sy;
    
    public ax() {
        this.uI();
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        final int computeSerializedSize = super.computeSerializedSize();
        int n3;
        if (this.sx != null && this.sx.length > 0) {
            int j = 0;
            int n = 0;
            int n2 = 0;
            while (j < this.sx.length) {
                final String s = this.sx[j];
                if (s != null) {
                    ++n2;
                    n += aP.wh(s);
                }
                ++j;
            }
            n3 = computeSerializedSize + n + n2 * 1;
        }
        else {
            n3 = computeSerializedSize;
        }
        if (this.sy != null && this.sy.length > 0) {
            int k = 0;
            int n4 = 0;
            int n5 = 0;
            while (k < this.sy.length) {
                final String s2 = this.sy[k];
                if (s2 != null) {
                    ++n5;
                    n4 += aP.wh(s2);
                }
                ++k;
            }
            n3 = n3 + n4 + n5 * 1;
        }
        if (this.su != null && this.su.length > 0) {
            int l = 0;
            int n6 = 0;
            while (l < this.su.length) {
                n6 += aP.wg(this.su[l]);
                ++l;
            }
            n3 = n3 + n6 + this.su.length * 1;
        }
        if (this.sv != null && this.sv.length > 0) {
            int n7 = 0;
            int n8 = 0;
            while (n7 < this.sv.length) {
                n8 += aP.wC(this.sv[n7]);
                ++n7;
            }
            n3 = n3 + n8 + this.sv.length * 1;
        }
        if (this.sw != null && this.sw.length > 0) {
            int n9 = 0;
            while (i < this.sw.length) {
                n9 += aP.wC(this.sw[i]);
                ++i;
            }
            n3 = n3 + n9 + this.sw.length * 1;
        }
        return n3;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        boolean b2 = false;
        if (o == this) {
            return b;
        }
        if (!(o instanceof ax)) {
            return false;
        }
        final ax ax = (ax)o;
        if (!aR.wW(this.sx, ax.sx)) {
            return false;
        }
        if (!aR.wW(this.sy, ax.sy)) {
            return false;
        }
        if (!aR.xd(this.su, ax.su)) {
            return false;
        }
        if (!aR.wY(this.sv, ax.sv)) {
            return false;
        }
        if (!aR.wY(this.sw, ax.sw)) {
            return false;
        }
        if (this.tz != null && !this.tz.isEmpty()) {
            return this.tz.equals(ax.tz);
        }
        if (ax.tz == null || ax.tz.isEmpty()) {
            b2 = b;
        }
        return b2;
    }
    
    public int hashCode() {
        int hashCode = 0;
        final int n = ((((((this.getClass().getName().hashCode() + 527) * 31 + aR.xe(this.sx)) * 31 + aR.xe(this.sy)) * 31 + aR.xa(this.su)) * 31 + aR.wZ(this.sv)) * 31 + aR.wZ(this.sw)) * 31;
        if (this.tz != null && !this.tz.isEmpty()) {
            hashCode = this.tz.hashCode();
        }
        return hashCode + n;
    }
    
    public void sc(final aP ap) {
        int i = 0;
        if (this.sx != null && this.sx.length > 0) {
            for (int j = 0; j < this.sx.length; ++j) {
                final String s = this.sx[j];
                if (s != null) {
                    ap.vT(1, s);
                }
            }
        }
        if (this.sy != null && this.sy.length > 0) {
            for (int k = 0; k < this.sy.length; ++k) {
                final String s2 = this.sy[k];
                if (s2 != null) {
                    ap.vT(2, s2);
                }
            }
        }
        if (this.su != null && this.su.length > 0) {
            for (int l = 0; l < this.su.length; ++l) {
                ap.vW(3, this.su[l]);
            }
        }
        if (this.sv != null && this.sv.length > 0) {
            for (int n = 0; n < this.sv.length; ++n) {
                ap.vX(4, this.sv[n]);
            }
        }
        if (this.sw != null && this.sw.length > 0) {
            while (i < this.sw.length) {
                ap.vX(5, this.sw[i]);
                ++i;
            }
        }
        super.sc(ap);
    }
    
    public ax uI() {
        this.sx = aH.sP;
        this.sy = aH.sP;
        this.su = aH.sU;
        this.sv = aH.sV;
        this.sw = aH.sV;
        this.tz = null;
        this.sH = -1;
        return this;
    }
    
    public ax uJ(final aY ay) {
        while (true) {
            final int xf = ay.xF();
            switch (xf) {
                default: {
                    if (!super.xs(ay, xf)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    final int vj = aH.vj(ay, 10);
                    int i;
                    if (this.sx != null) {
                        i = this.sx.length;
                    }
                    else {
                        i = 0;
                    }
                    final String[] sx = new String[vj + i];
                    if (i != 0) {
                        System.arraycopy(this.sx, 0, sx, 0, i);
                    }
                    while (i < sx.length - 1) {
                        sx[i] = ay.xZ();
                        ay.xF();
                        ++i;
                    }
                    sx[i] = ay.xZ();
                    this.sx = sx;
                    continue;
                }
                case 18: {
                    final int vj2 = aH.vj(ay, 18);
                    int j;
                    if (this.sy != null) {
                        j = this.sy.length;
                    }
                    else {
                        j = 0;
                    }
                    final String[] sy = new String[vj2 + j];
                    if (j != 0) {
                        System.arraycopy(this.sy, 0, sy, 0, j);
                    }
                    while (j < sy.length - 1) {
                        sy[j] = ay.xZ();
                        ay.xF();
                        ++j;
                    }
                    sy[j] = ay.xZ();
                    this.sy = sy;
                    continue;
                }
                case 24: {
                    final int vj3 = aH.vj(ay, 24);
                    int k;
                    if (this.su != null) {
                        k = this.su.length;
                    }
                    else {
                        k = 0;
                    }
                    final int[] su = new int[vj3 + k];
                    if (k != 0) {
                        System.arraycopy(this.su, 0, su, 0, k);
                    }
                    while (k < su.length - 1) {
                        su[k] = ay.xE();
                        ay.xF();
                        ++k;
                    }
                    su[k] = ay.xE();
                    this.su = su;
                    continue;
                }
                case 26: {
                    final int ye = ay.ye(ay.yb());
                    final int xk = ay.xK();
                    int n = 0;
                    while (ay.xJ() > 0) {
                        ay.xE();
                        ++n;
                    }
                    ay.xY(xk);
                    int l;
                    if (this.su != null) {
                        l = this.su.length;
                    }
                    else {
                        l = 0;
                    }
                    final int[] su2 = new int[n + l];
                    if (l != 0) {
                        System.arraycopy(this.su, 0, su2, 0, l);
                    }
                    while (l < su2.length) {
                        su2[l] = ay.xE();
                        ++l;
                    }
                    this.su = su2;
                    ay.xS(ye);
                    continue;
                }
                case 32: {
                    final int vj4 = aH.vj(ay, 32);
                    int length;
                    if (this.sv != null) {
                        length = this.sv.length;
                    }
                    else {
                        length = 0;
                    }
                    final long[] sv = new long[vj4 + length];
                    if (length != 0) {
                        System.arraycopy(this.sv, 0, sv, 0, length);
                    }
                    while (length < sv.length - 1) {
                        sv[length] = ay.xW();
                        ay.xF();
                        ++length;
                    }
                    sv[length] = ay.xW();
                    this.sv = sv;
                    continue;
                }
                case 34: {
                    final int ye2 = ay.ye(ay.yb());
                    final int xk2 = ay.xK();
                    int n2 = 0;
                    while (ay.xJ() > 0) {
                        ay.xW();
                        ++n2;
                    }
                    ay.xY(xk2);
                    int length2;
                    if (this.sv != null) {
                        length2 = this.sv.length;
                    }
                    else {
                        length2 = 0;
                    }
                    final long[] sv2 = new long[n2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.sv, 0, sv2, 0, length2);
                    }
                    while (length2 < sv2.length) {
                        sv2[length2] = ay.xW();
                        ++length2;
                    }
                    this.sv = sv2;
                    ay.xS(ye2);
                    continue;
                }
                case 40: {
                    final int vj5 = aH.vj(ay, 40);
                    int length3;
                    if (this.sw != null) {
                        length3 = this.sw.length;
                    }
                    else {
                        length3 = 0;
                    }
                    final long[] sw = new long[vj5 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.sw, 0, sw, 0, length3);
                    }
                    while (length3 < sw.length - 1) {
                        sw[length3] = ay.xW();
                        ay.xF();
                        ++length3;
                    }
                    sw[length3] = ay.xW();
                    this.sw = sw;
                    continue;
                }
                case 42: {
                    final int ye3 = ay.ye(ay.yb());
                    final int xk3 = ay.xK();
                    int n3 = 0;
                    while (ay.xJ() > 0) {
                        ay.xW();
                        ++n3;
                    }
                    ay.xY(xk3);
                    int length4;
                    if (this.sw != null) {
                        length4 = this.sw.length;
                    }
                    else {
                        length4 = 0;
                    }
                    final long[] sw2 = new long[n3 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.sw, 0, sw2, 0, length4);
                    }
                    while (length4 < sw2.length) {
                        sw2[length4] = ay.xW();
                        ++length4;
                    }
                    this.sw = sw2;
                    ay.xS(ye3);
                    continue;
                }
            }
        }
    }
    
    public ax uK() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   com/google/android/gms/internal/aU.sg:()Lcom/google/android/gms/internal/aU;
        //     4: astore_1       
        //     5: aload_1        
        //     6: checkcast       Lcom/google/android/gms/internal/ax;
        //     9: astore_1       
        //    10: aload_0        
        //    11: getfield        com/google/android/gms/internal/ax.sx:[Ljava/lang/String;
        //    14: astore_2       
        //    15: aload_2        
        //    16: ifnonnull       69
        //    19: aload_0        
        //    20: getfield        com/google/android/gms/internal/ax.sy:[Ljava/lang/String;
        //    23: astore_2       
        //    24: aload_2        
        //    25: ifnonnull       100
        //    28: aload_0        
        //    29: getfield        com/google/android/gms/internal/ax.su:[I
        //    32: astore_2       
        //    33: aload_2        
        //    34: ifnonnull       131
        //    37: aload_0        
        //    38: getfield        com/google/android/gms/internal/ax.sv:[J
        //    41: astore_2       
        //    42: aload_2        
        //    43: ifnonnull       162
        //    46: aload_0        
        //    47: getfield        com/google/android/gms/internal/ax.sw:[J
        //    50: astore_2       
        //    51: aload_2        
        //    52: ifnonnull       193
        //    55: aload_1        
        //    56: areturn        
        //    57: astore_1       
        //    58: new             Ljava/lang/AssertionError;
        //    61: astore_2       
        //    62: aload_2        
        //    63: aload_1        
        //    64: invokespecial   java/lang/AssertionError.<init>:(Ljava/lang/Object;)V
        //    67: aload_2        
        //    68: athrow         
        //    69: aload_0        
        //    70: getfield        com/google/android/gms/internal/ax.sx:[Ljava/lang/String;
        //    73: astore_2       
        //    74: aload_2        
        //    75: arraylength    
        //    76: istore_3       
        //    77: iload_3        
        //    78: ifle            19
        //    81: aload_0        
        //    82: getfield        com/google/android/gms/internal/ax.sx:[Ljava/lang/String;
        //    85: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //    88: checkcast       [Ljava/lang/String;
        //    91: astore_2       
        //    92: aload_1        
        //    93: aload_2        
        //    94: putfield        com/google/android/gms/internal/ax.sx:[Ljava/lang/String;
        //    97: goto            19
        //   100: aload_0        
        //   101: getfield        com/google/android/gms/internal/ax.sy:[Ljava/lang/String;
        //   104: astore_2       
        //   105: aload_2        
        //   106: arraylength    
        //   107: istore_3       
        //   108: iload_3        
        //   109: ifle            28
        //   112: aload_0        
        //   113: getfield        com/google/android/gms/internal/ax.sy:[Ljava/lang/String;
        //   116: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //   119: checkcast       [Ljava/lang/String;
        //   122: astore_2       
        //   123: aload_1        
        //   124: aload_2        
        //   125: putfield        com/google/android/gms/internal/ax.sy:[Ljava/lang/String;
        //   128: goto            28
        //   131: aload_0        
        //   132: getfield        com/google/android/gms/internal/ax.su:[I
        //   135: astore_2       
        //   136: aload_2        
        //   137: arraylength    
        //   138: istore_3       
        //   139: iload_3        
        //   140: ifle            37
        //   143: aload_0        
        //   144: getfield        com/google/android/gms/internal/ax.su:[I
        //   147: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //   150: checkcast       [I
        //   153: astore_2       
        //   154: aload_1        
        //   155: aload_2        
        //   156: putfield        com/google/android/gms/internal/ax.su:[I
        //   159: goto            37
        //   162: aload_0        
        //   163: getfield        com/google/android/gms/internal/ax.sv:[J
        //   166: astore_2       
        //   167: aload_2        
        //   168: arraylength    
        //   169: istore_3       
        //   170: iload_3        
        //   171: ifle            46
        //   174: aload_0        
        //   175: getfield        com/google/android/gms/internal/ax.sv:[J
        //   178: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //   181: checkcast       [J
        //   184: astore_2       
        //   185: aload_1        
        //   186: aload_2        
        //   187: putfield        com/google/android/gms/internal/ax.sv:[J
        //   190: goto            46
        //   193: aload_0        
        //   194: getfield        com/google/android/gms/internal/ax.sw:[J
        //   197: astore_2       
        //   198: aload_2        
        //   199: arraylength    
        //   200: istore_3       
        //   201: iload_3        
        //   202: ifle            55
        //   205: aload_0        
        //   206: getfield        com/google/android/gms/internal/ax.sw:[J
        //   209: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //   212: checkcast       [J
        //   215: astore_2       
        //   216: aload_1        
        //   217: aload_2        
        //   218: putfield        com/google/android/gms/internal/ax.sw:[J
        //   221: goto            55
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                  
        //  -----  -----  -----  -----  --------------------------------------
        //  0      4      57     69     Ljava/lang/CloneNotSupportedException;
        //  5      9      57     69     Ljava/lang/CloneNotSupportedException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: cmpgt:boolean(arraylength:int(getfield:long[](ax::sv, this:ax)), ldc:int(0))
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.GotoRemoval.traverseGraph(GotoRemoval.java:88)
        //     at com.strobel.decompiler.ast.GotoRemoval.removeGotos(GotoRemoval.java:52)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:276)
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
}
