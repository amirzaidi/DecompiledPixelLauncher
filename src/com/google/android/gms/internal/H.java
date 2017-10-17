// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.Arrays;

public final class h extends ba implements Cloneable
{
    public long nQ;
    public int nR;
    public String nS;
    public aW nT;
    public boolean nU;
    public String nV;
    public byte[] nW;
    public int nX;
    public long nY;
    public byte[] nZ;
    public long oa;
    public aM ob;
    public String oc;
    public long od;
    public int oe;
    public byte[] of;
    public aD og;
    public int[] oh;
    public aK[] oi;
    public String oj;
    public long ok;
    public String ol;
    public aA om;
    
    public h() {
        this.sd();
    }
    
    protected int computeSerializedSize() {
        final int n = 2;
        final long n2 = 0L;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.oa != n2) {
            computeSerializedSize += aV.wv(1, this.oa);
        }
        if (!this.nS.equals("")) {
            computeSerializedSize += aV.wl(n, this.nS);
        }
        if (this.oi != null && this.oi.length > 0) {
            int n3 = computeSerializedSize;
            for (int j = 0; j < this.oi.length; ++j) {
                final aK ak = this.oi[j];
                if (ak != null) {
                    n3 += aV.wL(3, ak);
                }
            }
            computeSerializedSize = n3;
        }
        if (!Arrays.equals(this.of, aN.sQ)) {
            computeSerializedSize += aV.wM(4, this.of);
        }
        if (!Arrays.equals(this.nW, aN.sQ)) {
            computeSerializedSize += aV.wM(6, this.nW);
        }
        if (this.og != null) {
            computeSerializedSize += aV.wL(7, this.og);
        }
        if (!this.oj.equals("")) {
            computeSerializedSize += aV.wl(8, this.oj);
        }
        if (this.ob != null) {
            computeSerializedSize += aV.wL(9, this.ob);
        }
        if (this.nU) {
            computeSerializedSize += aV.wO(10, this.nU);
        }
        if (this.nX != 0) {
            computeSerializedSize += aV.wn(11, this.nX);
        }
        if (this.oe != 0) {
            computeSerializedSize += aV.wn(12, this.oe);
        }
        if (!this.ol.equals("")) {
            computeSerializedSize += aV.wl(13, this.ol);
        }
        if (!this.oc.equals("")) {
            computeSerializedSize += aV.wl(14, this.oc);
        }
        if (this.ok != 180000L) {
            computeSerializedSize += aV.vR(15, this.ok);
        }
        if (this.nT != null) {
            computeSerializedSize += aV.wL(16, this.nT);
        }
        if (this.od != n2) {
            computeSerializedSize += aV.wv(17, this.od);
        }
        if (!Arrays.equals(this.nZ, aN.sQ)) {
            computeSerializedSize += aV.wM(18, this.nZ);
        }
        if (this.nR != 0) {
            computeSerializedSize += aV.wn(19, this.nR);
        }
        if (this.oh != null && this.oh.length > 0) {
            int n4 = 0;
            while (i < this.oh.length) {
                n4 += aV.wh(this.oh[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + this.oh.length * 2;
        }
        if (this.nY != n2) {
            computeSerializedSize += aV.wv(21, this.nY);
        }
        if (this.nQ != n2) {
            computeSerializedSize += aV.wv(22, this.nQ);
        }
        if (this.om != null) {
            computeSerializedSize += aV.wL(23, this.om);
        }
        if (!this.nV.equals("")) {
            computeSerializedSize += aV.wl(24, this.nV);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        boolean b2 = false;
        if (o == this) {
            return b;
        }
        if (!(o instanceof h)) {
            return false;
        }
        final h h = (h)o;
        if (this.oa != h.oa) {
            return false;
        }
        if (this.od != h.od) {
            return false;
        }
        if (this.nY != h.nY) {
            return false;
        }
        if (this.nS != null) {
            if (!this.nS.equals(h.nS)) {
                return false;
            }
        }
        else if (h.nS != null) {
            return false;
        }
        if (this.nX != h.nX) {
            return false;
        }
        if (this.oe != h.oe) {
            return false;
        }
        if (this.nU != h.nU) {
            return false;
        }
        if (!aX.wX(this.oi, h.oi)) {
            return false;
        }
        if (!Arrays.equals(this.of, h.of)) {
            return false;
        }
        if (this.ob != null) {
            if (!this.ob.equals(h.ob)) {
                return false;
            }
        }
        else if (h.ob != null) {
            return false;
        }
        if (!Arrays.equals(this.nW, h.nW)) {
            return false;
        }
        if (this.oj != null) {
            if (!this.oj.equals(h.oj)) {
                return false;
            }
        }
        else if (h.oj != null) {
            return false;
        }
        if (this.ol != null) {
            if (!this.ol.equals(h.ol)) {
                return false;
            }
        }
        else if (h.ol != null) {
            return false;
        }
        if (this.og != null) {
            if (!this.og.equals(h.og)) {
                return false;
            }
        }
        else if (h.og != null) {
            return false;
        }
        if (this.oc != null) {
            if (!this.oc.equals(h.oc)) {
                return false;
            }
        }
        else if (h.oc != null) {
            return false;
        }
        if (this.ok != h.ok) {
            return false;
        }
        if (this.nT != null) {
            if (!this.nT.equals(h.nT)) {
                return false;
            }
        }
        else if (h.nT != null) {
            return false;
        }
        if (!Arrays.equals(this.nZ, h.nZ)) {
            return false;
        }
        if (this.nV != null) {
            if (!this.nV.equals(h.nV)) {
                return false;
            }
        }
        else if (h.nV != null) {
            return false;
        }
        if (this.nR != h.nR) {
            return false;
        }
        if (!aX.xe(this.oh, h.oh)) {
            return false;
        }
        if (this.nQ != h.nQ) {
            return false;
        }
        if (this.om != null) {
            if (!this.om.equals(h.om)) {
                return false;
            }
        }
        else if (h.om != null) {
            return false;
        }
        if (this.tt != null && !this.tt.isEmpty()) {
            return this.tt.equals(h.tt);
        }
        if (h.tt == null || h.tt.isEmpty()) {
            b2 = b;
        }
        return b2;
    }
    
    public int hashCode() {
        final int n = 32;
        int hashCode = 0;
        final int n2 = ((((this.getClass().getName().hashCode() + 527) * 31 + (int)(this.oa ^ this.oa >>> n)) * 31 + (int)(this.od ^ this.od >>> n)) * 31 + (int)(this.nY ^ this.nY >>> n)) * 31;
        int hashCode2;
        if (this.nS != null) {
            hashCode2 = this.nS.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        final int n3 = (((hashCode2 + n2) * 31 + this.nX) * 31 + this.oe) * 31;
        int n4;
        if (!this.nU) {
            n4 = 1237;
        }
        else {
            n4 = 1231;
        }
        final int n5 = (((n4 + n3) * 31 + aX.xf(this.oi)) * 31 + Arrays.hashCode(this.of)) * 31;
        int hashCode3;
        if (this.ob != null) {
            hashCode3 = this.ob.hashCode();
        }
        else {
            hashCode3 = 0;
        }
        final int n6 = ((hashCode3 + n5) * 31 + Arrays.hashCode(this.nW)) * 31;
        int hashCode4;
        if (this.oj != null) {
            hashCode4 = this.oj.hashCode();
        }
        else {
            hashCode4 = 0;
        }
        final int n7 = (hashCode4 + n6) * 31;
        int hashCode5;
        if (this.ol != null) {
            hashCode5 = this.ol.hashCode();
        }
        else {
            hashCode5 = 0;
        }
        final int n8 = (hashCode5 + n7) * 31;
        int hashCode6;
        if (this.og != null) {
            hashCode6 = this.og.hashCode();
        }
        else {
            hashCode6 = 0;
        }
        final int n9 = (hashCode6 + n8) * 31;
        int hashCode7;
        if (this.oc != null) {
            hashCode7 = this.oc.hashCode();
        }
        else {
            hashCode7 = 0;
        }
        final int n10 = ((hashCode7 + n9) * 31 + (int)(this.ok ^ this.ok >>> n)) * 31;
        int hashCode8;
        if (this.nT != null) {
            hashCode8 = this.nT.hashCode();
        }
        else {
            hashCode8 = 0;
        }
        final int n11 = ((hashCode8 + n10) * 31 + Arrays.hashCode(this.nZ)) * 31;
        int hashCode9;
        if (this.nV != null) {
            hashCode9 = this.nV.hashCode();
        }
        else {
            hashCode9 = 0;
        }
        final int n12 = ((((hashCode9 + n11) * 31 + this.nR) * 31 + aX.xb(this.oh)) * 31 + (int)(this.nQ ^ this.nQ >>> n)) * 31;
        int hashCode10;
        if (this.om != null) {
            hashCode10 = this.om.hashCode();
        }
        else {
            hashCode10 = 0;
        }
        final int n13 = (hashCode10 + n12) * 31;
        if (this.tt != null && !this.tt.isEmpty()) {
            hashCode = this.tt.hashCode();
        }
        return n13 + hashCode;
    }
    
    public void sa(final aV av) {
        final long n = 0L;
        int i = 0;
        if (this.oa != n) {
            av.vY(1, this.oa);
        }
        if (!this.nS.equals("")) {
            av.vU(2, this.nS);
        }
        if (this.oi != null && this.oi.length > 0) {
            for (int j = 0; j < this.oi.length; ++j) {
                final aK ak = this.oi[j];
                if (ak != null) {
                    av.wQ(3, ak);
                }
            }
        }
        if (!Arrays.equals(this.of, aN.sQ)) {
            av.wz(4, this.of);
        }
        if (!Arrays.equals(this.nW, aN.sQ)) {
            av.wz(6, this.nW);
        }
        if (this.og != null) {
            av.wQ(7, this.og);
        }
        if (!this.oj.equals("")) {
            av.vU(8, this.oj);
        }
        if (this.ob != null) {
            av.wQ(9, this.ob);
        }
        if (this.nU) {
            av.vO(10, this.nU);
        }
        if (this.nX != 0) {
            av.vX(11, this.nX);
        }
        if (this.oe != 0) {
            av.vX(12, this.oe);
        }
        if (!this.ol.equals("")) {
            av.vU(13, this.ol);
        }
        if (!this.oc.equals("")) {
            av.vU(14, this.oc);
        }
        if (this.ok != 180000L) {
            av.wS(15, this.ok);
        }
        if (this.nT != null) {
            av.wQ(16, this.nT);
        }
        if (this.od != n) {
            av.vY(17, this.od);
        }
        if (!Arrays.equals(this.nZ, aN.sQ)) {
            av.wz(18, this.nZ);
        }
        if (this.nR != 0) {
            av.vX(19, this.nR);
        }
        if (this.oh != null && this.oh.length > 0) {
            while (i < this.oh.length) {
                av.vX(20, this.oh[i]);
                ++i;
            }
        }
        if (this.nY != n) {
            av.vY(21, this.nY);
        }
        if (this.nQ != n) {
            av.vY(22, this.nQ);
        }
        if (this.om != null) {
            av.wQ(23, this.om);
        }
        if (!this.nV.equals("")) {
            av.vU(24, this.nV);
        }
        super.sa(av);
    }
    
    public h sb() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_1       
        //     2: aconst_null    
        //     3: astore_2       
        //     4: aload_0        
        //     5: invokespecial   com/google/android/gms/internal/ba.se:()Lcom/google/android/gms/internal/ba;
        //     8: astore_3       
        //     9: aload_3        
        //    10: checkcast       Lcom/google/android/gms/internal/h;
        //    13: astore_3       
        //    14: aload_0        
        //    15: getfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //    18: astore          4
        //    20: aload           4
        //    22: ifnonnull       84
        //    25: aload_0        
        //    26: getfield        com/google/android/gms/internal/h.ob:Lcom/google/android/gms/internal/aM;
        //    29: astore_2       
        //    30: aload_2        
        //    31: ifnonnull       188
        //    34: aload_0        
        //    35: getfield        com/google/android/gms/internal/h.og:Lcom/google/android/gms/internal/aD;
        //    38: astore_2       
        //    39: aload_2        
        //    40: ifnonnull       207
        //    43: aload_0        
        //    44: getfield        com/google/android/gms/internal/h.nT:Lcom/google/android/gms/internal/aW;
        //    47: astore_2       
        //    48: aload_2        
        //    49: ifnonnull       226
        //    52: aload_0        
        //    53: getfield        com/google/android/gms/internal/h.oh:[I
        //    56: astore_2       
        //    57: aload_2        
        //    58: ifnonnull       245
        //    61: aload_0        
        //    62: getfield        com/google/android/gms/internal/h.om:Lcom/google/android/gms/internal/aA;
        //    65: astore_2       
        //    66: aload_2        
        //    67: ifnonnull       276
        //    70: aload_3        
        //    71: areturn        
        //    72: astore_3       
        //    73: new             Ljava/lang/AssertionError;
        //    76: astore_2       
        //    77: aload_2        
        //    78: aload_3        
        //    79: invokespecial   java/lang/AssertionError.<init>:(Ljava/lang/Object;)V
        //    82: aload_2        
        //    83: athrow         
        //    84: aload_0        
        //    85: getfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //    88: astore          4
        //    90: aload           4
        //    92: arraylength    
        //    93: istore          5
        //    95: iload           5
        //    97: ifle            25
        //   100: aload_0        
        //   101: getfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //   104: arraylength    
        //   105: anewarray       Lcom/google/android/gms/internal/aK;
        //   108: astore          4
        //   110: aload_3        
        //   111: aload           4
        //   113: putfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //   116: iconst_0       
        //   117: istore          5
        //   119: aconst_null    
        //   120: astore          4
        //   122: aload_0        
        //   123: getfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //   126: astore_2       
        //   127: aload_2        
        //   128: arraylength    
        //   129: istore_1       
        //   130: iload           5
        //   132: iload_1        
        //   133: if_icmpge       25
        //   136: aload_0        
        //   137: getfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //   140: iload           5
        //   142: aaload         
        //   143: astore_2       
        //   144: aload_2        
        //   145: ifnonnull       159
        //   148: iload           5
        //   150: iconst_1       
        //   151: iadd           
        //   152: istore_1       
        //   153: iload_1        
        //   154: istore          5
        //   156: goto            122
        //   159: aload_3        
        //   160: getfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //   163: astore          6
        //   165: aload_0        
        //   166: getfield        com/google/android/gms/internal/h.oi:[Lcom/google/android/gms/internal/aK;
        //   169: iload           5
        //   171: aaload         
        //   172: invokevirtual   com/google/android/gms/internal/aK.clone:()Ljava/lang/Object;
        //   175: checkcast       Lcom/google/android/gms/internal/aK;
        //   178: astore_2       
        //   179: aload           6
        //   181: iload           5
        //   183: aload_2        
        //   184: aastore        
        //   185: goto            148
        //   188: aload_0        
        //   189: getfield        com/google/android/gms/internal/h.ob:Lcom/google/android/gms/internal/aM;
        //   192: invokevirtual   com/google/android/gms/internal/aM.clone:()Ljava/lang/Object;
        //   195: checkcast       Lcom/google/android/gms/internal/aM;
        //   198: astore_2       
        //   199: aload_3        
        //   200: aload_2        
        //   201: putfield        com/google/android/gms/internal/h.ob:Lcom/google/android/gms/internal/aM;
        //   204: goto            34
        //   207: aload_0        
        //   208: getfield        com/google/android/gms/internal/h.og:Lcom/google/android/gms/internal/aD;
        //   211: invokevirtual   com/google/android/gms/internal/aD.clone:()Ljava/lang/Object;
        //   214: checkcast       Lcom/google/android/gms/internal/aD;
        //   217: astore_2       
        //   218: aload_3        
        //   219: aload_2        
        //   220: putfield        com/google/android/gms/internal/h.og:Lcom/google/android/gms/internal/aD;
        //   223: goto            43
        //   226: aload_0        
        //   227: getfield        com/google/android/gms/internal/h.nT:Lcom/google/android/gms/internal/aW;
        //   230: invokevirtual   com/google/android/gms/internal/aW.clone:()Ljava/lang/Object;
        //   233: checkcast       Lcom/google/android/gms/internal/aW;
        //   236: astore_2       
        //   237: aload_3        
        //   238: aload_2        
        //   239: putfield        com/google/android/gms/internal/h.nT:Lcom/google/android/gms/internal/aW;
        //   242: goto            52
        //   245: aload_0        
        //   246: getfield        com/google/android/gms/internal/h.oh:[I
        //   249: astore_2       
        //   250: aload_2        
        //   251: arraylength    
        //   252: istore_1       
        //   253: iload_1        
        //   254: ifle            61
        //   257: aload_0        
        //   258: getfield        com/google/android/gms/internal/h.oh:[I
        //   261: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //   264: checkcast       [I
        //   267: astore_2       
        //   268: aload_3        
        //   269: aload_2        
        //   270: putfield        com/google/android/gms/internal/h.oh:[I
        //   273: goto            61
        //   276: aload_0        
        //   277: getfield        com/google/android/gms/internal/h.om:Lcom/google/android/gms/internal/aA;
        //   280: invokevirtual   com/google/android/gms/internal/aA.clone:()Ljava/lang/Object;
        //   283: checkcast       Lcom/google/android/gms/internal/aA;
        //   286: astore_2       
        //   287: aload_3        
        //   288: aload_2        
        //   289: putfield        com/google/android/gms/internal/h.om:Lcom/google/android/gms/internal/aA;
        //   292: goto            70
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                  
        //  -----  -----  -----  -----  --------------------------------------
        //  4      8      72     84     Ljava/lang/CloneNotSupportedException;
        //  9      13     72     84     Ljava/lang/CloneNotSupportedException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: cmpgt:boolean(arraylength:int(getfield:int[](h::oh, this:h)), ldc:int(0))
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
    
    public h sd() {
        final long n = 0L;
        this.oa = n;
        this.od = n;
        this.nY = n;
        this.nS = "";
        this.nX = 0;
        this.oe = 0;
        this.nU = false;
        this.oi = aK.vb();
        this.of = aN.sQ;
        this.ob = null;
        this.nW = aN.sQ;
        this.oj = "";
        this.ol = "";
        this.og = null;
        this.oc = "";
        this.ok = 180000L;
        this.nT = null;
        this.nZ = aN.sQ;
        this.nV = "";
        this.nR = 0;
        this.oh = aN.sO;
        this.nQ = n;
        this.om = null;
        this.tt = null;
        this.sB = -1;
        return this;
    }
    
    public h sf(final be be) {
        while (true) {
            final int xg = be.xG();
            switch (xg) {
                default: {
                    if (!super.xt(be, xg)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.oa = be.xX();
                    continue;
                }
                case 18: {
                    this.nS = be.ya();
                    continue;
                }
                case 26: {
                    final int vk = aN.vk(be, 26);
                    int i;
                    if (this.oi != null) {
                        i = this.oi.length;
                    }
                    else {
                        i = 0;
                    }
                    final aK[] oi = new aK[vk + i];
                    if (i != 0) {
                        System.arraycopy(this.oi, 0, oi, 0, i);
                    }
                    while (i < oi.length - 1) {
                        be.xQ(oi[i] = new aK());
                        be.xG();
                        ++i;
                    }
                    be.xQ(oi[i] = new aK());
                    this.oi = oi;
                    continue;
                }
                case 34: {
                    this.of = be.xP();
                    continue;
                }
                case 50: {
                    this.nW = be.xP();
                    continue;
                }
                case 58: {
                    if (this.og == null) {
                        this.og = new aD();
                    }
                    be.xQ(this.og);
                    continue;
                }
                case 66: {
                    this.oj = be.ya();
                    continue;
                }
                case 74: {
                    if (this.ob == null) {
                        this.ob = new aM();
                    }
                    be.xQ(this.ob);
                    continue;
                }
                case 80: {
                    this.nU = be.xO();
                    continue;
                }
                case 88: {
                    this.nX = be.xF();
                    continue;
                }
                case 96: {
                    this.oe = be.xF();
                    continue;
                }
                case 106: {
                    this.ol = be.ya();
                    continue;
                }
                case 114: {
                    this.oc = be.ya();
                    continue;
                }
                case 120: {
                    this.ok = be.xJ();
                    continue;
                }
                case 130: {
                    if (this.nT == null) {
                        this.nT = new aW();
                    }
                    be.xQ(this.nT);
                    continue;
                }
                case 136: {
                    this.od = be.xX();
                    continue;
                }
                case 146: {
                    this.nZ = be.xP();
                    continue;
                }
                case 152: {
                    final int xf = be.xF();
                    switch (xf) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2: {
                            this.nR = xf;
                            continue;
                        }
                    }
                    break;
                }
                case 160: {
                    final int vk2 = aN.vk(be, 160);
                    int j;
                    if (this.oh != null) {
                        j = this.oh.length;
                    }
                    else {
                        j = 0;
                    }
                    final int[] oh = new int[vk2 + j];
                    if (j != 0) {
                        System.arraycopy(this.oh, 0, oh, 0, j);
                    }
                    while (j < oh.length - 1) {
                        oh[j] = be.xF();
                        be.xG();
                        ++j;
                    }
                    oh[j] = be.xF();
                    this.oh = oh;
                    continue;
                }
                case 162: {
                    final int yf = be.yf(be.yc());
                    final int xl = be.xL();
                    int n = 0;
                    while (be.xK() > 0) {
                        be.xF();
                        ++n;
                    }
                    be.xZ(xl);
                    int k;
                    if (this.oh != null) {
                        k = this.oh.length;
                    }
                    else {
                        k = 0;
                    }
                    final int[] oh2 = new int[n + k];
                    if (k != 0) {
                        System.arraycopy(this.oh, 0, oh2, 0, k);
                    }
                    while (k < oh2.length) {
                        oh2[k] = be.xF();
                        ++k;
                    }
                    this.oh = oh2;
                    be.xT(yf);
                    continue;
                }
                case 168: {
                    this.nY = be.xX();
                    continue;
                }
                case 176: {
                    this.nQ = be.xX();
                    continue;
                }
                case 186: {
                    if (this.om == null) {
                        this.om = new aA();
                    }
                    be.xQ(this.om);
                    continue;
                }
                case 194: {
                    this.nV = be.ya();
                    continue;
                }
            }
        }
    }
}
