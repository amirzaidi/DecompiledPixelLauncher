// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.Arrays;

public final class h extends aU implements Cloneable
{
    public long oA;
    public byte[] oB;
    public long oC;
    public aG oD;
    public String oE;
    public long oF;
    public int oG;
    public byte[] oH;
    public ax oI;
    public int[] oJ;
    public aE[] oK;
    public String oL;
    public long oM;
    public String oN;
    public au oO;
    public long os;
    public int ot;
    public String ou;
    public aQ ov;
    public boolean ow;
    public String ox;
    public byte[] oy;
    public int oz;
    
    public h() {
        this.sf();
    }
    
    protected int computeSerializedSize() {
        final int n = 2;
        final long n2 = 0L;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.oC != n2) {
            computeSerializedSize += aP.wu(1, this.oC);
        }
        if (!this.ou.equals("")) {
            computeSerializedSize += aP.wk(n, this.ou);
        }
        if (this.oK != null && this.oK.length > 0) {
            int n3 = computeSerializedSize;
            for (int j = 0; j < this.oK.length; ++j) {
                final aE ae = this.oK[j];
                if (ae != null) {
                    n3 += aP.wK(3, ae);
                }
            }
            computeSerializedSize = n3;
        }
        if (!Arrays.equals(this.oH, aH.sW)) {
            computeSerializedSize += aP.wL(4, this.oH);
        }
        if (!Arrays.equals(this.oy, aH.sW)) {
            computeSerializedSize += aP.wL(6, this.oy);
        }
        if (this.oI != null) {
            computeSerializedSize += aP.wK(7, this.oI);
        }
        if (!this.oL.equals("")) {
            computeSerializedSize += aP.wk(8, this.oL);
        }
        if (this.oD != null) {
            computeSerializedSize += aP.wK(9, this.oD);
        }
        if (this.ow) {
            computeSerializedSize += aP.wN(10, this.ow);
        }
        if (this.oz != 0) {
            computeSerializedSize += aP.wm(11, this.oz);
        }
        if (this.oG != 0) {
            computeSerializedSize += aP.wm(12, this.oG);
        }
        if (!this.oN.equals("")) {
            computeSerializedSize += aP.wk(13, this.oN);
        }
        if (!this.oE.equals("")) {
            computeSerializedSize += aP.wk(14, this.oE);
        }
        if (this.oM != 180000L) {
            computeSerializedSize += aP.vQ(15, this.oM);
        }
        if (this.ov != null) {
            computeSerializedSize += aP.wK(16, this.ov);
        }
        if (this.oF != n2) {
            computeSerializedSize += aP.wu(17, this.oF);
        }
        if (!Arrays.equals(this.oB, aH.sW)) {
            computeSerializedSize += aP.wL(18, this.oB);
        }
        if (this.ot != 0) {
            computeSerializedSize += aP.wm(19, this.ot);
        }
        if (this.oJ != null && this.oJ.length > 0) {
            int n4 = 0;
            while (i < this.oJ.length) {
                n4 += aP.wg(this.oJ[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n4 + this.oJ.length * 2;
        }
        if (this.oA != n2) {
            computeSerializedSize += aP.wu(21, this.oA);
        }
        if (this.os != n2) {
            computeSerializedSize += aP.wu(22, this.os);
        }
        if (this.oO != null) {
            computeSerializedSize += aP.wK(23, this.oO);
        }
        if (!this.ox.equals("")) {
            computeSerializedSize += aP.wk(24, this.ox);
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
        if (this.oC != h.oC) {
            return false;
        }
        if (this.oF != h.oF) {
            return false;
        }
        if (this.oA != h.oA) {
            return false;
        }
        if (this.ou != null) {
            if (!this.ou.equals(h.ou)) {
                return false;
            }
        }
        else if (h.ou != null) {
            return false;
        }
        if (this.oz != h.oz) {
            return false;
        }
        if (this.oG != h.oG) {
            return false;
        }
        if (this.ow != h.ow) {
            return false;
        }
        if (!aR.wW(this.oK, h.oK)) {
            return false;
        }
        if (!Arrays.equals(this.oH, h.oH)) {
            return false;
        }
        if (this.oD != null) {
            if (!this.oD.equals(h.oD)) {
                return false;
            }
        }
        else if (h.oD != null) {
            return false;
        }
        if (!Arrays.equals(this.oy, h.oy)) {
            return false;
        }
        if (this.oL != null) {
            if (!this.oL.equals(h.oL)) {
                return false;
            }
        }
        else if (h.oL != null) {
            return false;
        }
        if (this.oN != null) {
            if (!this.oN.equals(h.oN)) {
                return false;
            }
        }
        else if (h.oN != null) {
            return false;
        }
        if (this.oI != null) {
            if (!this.oI.equals(h.oI)) {
                return false;
            }
        }
        else if (h.oI != null) {
            return false;
        }
        if (this.oE != null) {
            if (!this.oE.equals(h.oE)) {
                return false;
            }
        }
        else if (h.oE != null) {
            return false;
        }
        if (this.oM != h.oM) {
            return false;
        }
        if (this.ov != null) {
            if (!this.ov.equals(h.ov)) {
                return false;
            }
        }
        else if (h.ov != null) {
            return false;
        }
        if (!Arrays.equals(this.oB, h.oB)) {
            return false;
        }
        if (this.ox != null) {
            if (!this.ox.equals(h.ox)) {
                return false;
            }
        }
        else if (h.ox != null) {
            return false;
        }
        if (this.ot != h.ot) {
            return false;
        }
        if (!aR.xd(this.oJ, h.oJ)) {
            return false;
        }
        if (this.os != h.os) {
            return false;
        }
        if (this.oO != null) {
            if (!this.oO.equals(h.oO)) {
                return false;
            }
        }
        else if (h.oO != null) {
            return false;
        }
        if (this.tz != null && !this.tz.isEmpty()) {
            return this.tz.equals(h.tz);
        }
        if (h.tz == null || h.tz.isEmpty()) {
            b2 = b;
        }
        return b2;
    }
    
    public int hashCode() {
        final int n = 32;
        int hashCode = 0;
        final int n2 = ((((this.getClass().getName().hashCode() + 527) * 31 + (int)(this.oC ^ this.oC >>> n)) * 31 + (int)(this.oF ^ this.oF >>> n)) * 31 + (int)(this.oA ^ this.oA >>> n)) * 31;
        int hashCode2;
        if (this.ou != null) {
            hashCode2 = this.ou.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        final int n3 = (((hashCode2 + n2) * 31 + this.oz) * 31 + this.oG) * 31;
        int n4;
        if (!this.ow) {
            n4 = 1237;
        }
        else {
            n4 = 1231;
        }
        final int n5 = (((n4 + n3) * 31 + aR.xe(this.oK)) * 31 + Arrays.hashCode(this.oH)) * 31;
        int hashCode3;
        if (this.oD != null) {
            hashCode3 = this.oD.hashCode();
        }
        else {
            hashCode3 = 0;
        }
        final int n6 = ((hashCode3 + n5) * 31 + Arrays.hashCode(this.oy)) * 31;
        int hashCode4;
        if (this.oL != null) {
            hashCode4 = this.oL.hashCode();
        }
        else {
            hashCode4 = 0;
        }
        final int n7 = (hashCode4 + n6) * 31;
        int hashCode5;
        if (this.oN != null) {
            hashCode5 = this.oN.hashCode();
        }
        else {
            hashCode5 = 0;
        }
        final int n8 = (hashCode5 + n7) * 31;
        int hashCode6;
        if (this.oI != null) {
            hashCode6 = this.oI.hashCode();
        }
        else {
            hashCode6 = 0;
        }
        final int n9 = (hashCode6 + n8) * 31;
        int hashCode7;
        if (this.oE != null) {
            hashCode7 = this.oE.hashCode();
        }
        else {
            hashCode7 = 0;
        }
        final int n10 = ((hashCode7 + n9) * 31 + (int)(this.oM ^ this.oM >>> n)) * 31;
        int hashCode8;
        if (this.ov != null) {
            hashCode8 = this.ov.hashCode();
        }
        else {
            hashCode8 = 0;
        }
        final int n11 = ((hashCode8 + n10) * 31 + Arrays.hashCode(this.oB)) * 31;
        int hashCode9;
        if (this.ox != null) {
            hashCode9 = this.ox.hashCode();
        }
        else {
            hashCode9 = 0;
        }
        final int n12 = ((((hashCode9 + n11) * 31 + this.ot) * 31 + aR.xa(this.oJ)) * 31 + (int)(this.os ^ this.os >>> n)) * 31;
        int hashCode10;
        if (this.oO != null) {
            hashCode10 = this.oO.hashCode();
        }
        else {
            hashCode10 = 0;
        }
        final int n13 = (hashCode10 + n12) * 31;
        if (this.tz != null && !this.tz.isEmpty()) {
            hashCode = this.tz.hashCode();
        }
        return n13 + hashCode;
    }
    
    public void sc(final aP ap) {
        final long n = 0L;
        int i = 0;
        if (this.oC != n) {
            ap.vX(1, this.oC);
        }
        if (!this.ou.equals("")) {
            ap.vT(2, this.ou);
        }
        if (this.oK != null && this.oK.length > 0) {
            for (int j = 0; j < this.oK.length; ++j) {
                final aE ae = this.oK[j];
                if (ae != null) {
                    ap.wP(3, ae);
                }
            }
        }
        if (!Arrays.equals(this.oH, aH.sW)) {
            ap.wy(4, this.oH);
        }
        if (!Arrays.equals(this.oy, aH.sW)) {
            ap.wy(6, this.oy);
        }
        if (this.oI != null) {
            ap.wP(7, this.oI);
        }
        if (!this.oL.equals("")) {
            ap.vT(8, this.oL);
        }
        if (this.oD != null) {
            ap.wP(9, this.oD);
        }
        if (this.ow) {
            ap.vN(10, this.ow);
        }
        if (this.oz != 0) {
            ap.vW(11, this.oz);
        }
        if (this.oG != 0) {
            ap.vW(12, this.oG);
        }
        if (!this.oN.equals("")) {
            ap.vT(13, this.oN);
        }
        if (!this.oE.equals("")) {
            ap.vT(14, this.oE);
        }
        if (this.oM != 180000L) {
            ap.wR(15, this.oM);
        }
        if (this.ov != null) {
            ap.wP(16, this.ov);
        }
        if (this.oF != n) {
            ap.vX(17, this.oF);
        }
        if (!Arrays.equals(this.oB, aH.sW)) {
            ap.wy(18, this.oB);
        }
        if (this.ot != 0) {
            ap.vW(19, this.ot);
        }
        if (this.oJ != null && this.oJ.length > 0) {
            while (i < this.oJ.length) {
                ap.vW(20, this.oJ[i]);
                ++i;
            }
        }
        if (this.oA != n) {
            ap.vX(21, this.oA);
        }
        if (this.os != n) {
            ap.vX(22, this.os);
        }
        if (this.oO != null) {
            ap.wP(23, this.oO);
        }
        if (!this.ox.equals("")) {
            ap.vT(24, this.ox);
        }
        super.sc(ap);
    }
    
    public h sd() {
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
        //     5: invokespecial   com/google/android/gms/internal/aU.sg:()Lcom/google/android/gms/internal/aU;
        //     8: astore_3       
        //     9: aload_3        
        //    10: checkcast       Lcom/google/android/gms/internal/h;
        //    13: astore_3       
        //    14: aload_0        
        //    15: getfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
        //    18: astore          4
        //    20: aload           4
        //    22: ifnonnull       84
        //    25: aload_0        
        //    26: getfield        com/google/android/gms/internal/h.oD:Lcom/google/android/gms/internal/aG;
        //    29: astore_2       
        //    30: aload_2        
        //    31: ifnonnull       188
        //    34: aload_0        
        //    35: getfield        com/google/android/gms/internal/h.oI:Lcom/google/android/gms/internal/ax;
        //    38: astore_2       
        //    39: aload_2        
        //    40: ifnonnull       207
        //    43: aload_0        
        //    44: getfield        com/google/android/gms/internal/h.ov:Lcom/google/android/gms/internal/aQ;
        //    47: astore_2       
        //    48: aload_2        
        //    49: ifnonnull       226
        //    52: aload_0        
        //    53: getfield        com/google/android/gms/internal/h.oJ:[I
        //    56: astore_2       
        //    57: aload_2        
        //    58: ifnonnull       245
        //    61: aload_0        
        //    62: getfield        com/google/android/gms/internal/h.oO:Lcom/google/android/gms/internal/au;
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
        //    85: getfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
        //    88: astore          4
        //    90: aload           4
        //    92: arraylength    
        //    93: istore          5
        //    95: iload           5
        //    97: ifle            25
        //   100: aload_0        
        //   101: getfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
        //   104: arraylength    
        //   105: anewarray       Lcom/google/android/gms/internal/aE;
        //   108: astore          4
        //   110: aload_3        
        //   111: aload           4
        //   113: putfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
        //   116: iconst_0       
        //   117: istore          5
        //   119: aconst_null    
        //   120: astore          4
        //   122: aload_0        
        //   123: getfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
        //   126: astore_2       
        //   127: aload_2        
        //   128: arraylength    
        //   129: istore_1       
        //   130: iload           5
        //   132: iload_1        
        //   133: if_icmpge       25
        //   136: aload_0        
        //   137: getfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
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
        //   160: getfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
        //   163: astore          6
        //   165: aload_0        
        //   166: getfield        com/google/android/gms/internal/h.oK:[Lcom/google/android/gms/internal/aE;
        //   169: iload           5
        //   171: aaload         
        //   172: invokevirtual   com/google/android/gms/internal/aE.clone:()Ljava/lang/Object;
        //   175: checkcast       Lcom/google/android/gms/internal/aE;
        //   178: astore_2       
        //   179: aload           6
        //   181: iload           5
        //   183: aload_2        
        //   184: aastore        
        //   185: goto            148
        //   188: aload_0        
        //   189: getfield        com/google/android/gms/internal/h.oD:Lcom/google/android/gms/internal/aG;
        //   192: invokevirtual   com/google/android/gms/internal/aG.clone:()Ljava/lang/Object;
        //   195: checkcast       Lcom/google/android/gms/internal/aG;
        //   198: astore_2       
        //   199: aload_3        
        //   200: aload_2        
        //   201: putfield        com/google/android/gms/internal/h.oD:Lcom/google/android/gms/internal/aG;
        //   204: goto            34
        //   207: aload_0        
        //   208: getfield        com/google/android/gms/internal/h.oI:Lcom/google/android/gms/internal/ax;
        //   211: invokevirtual   com/google/android/gms/internal/ax.clone:()Ljava/lang/Object;
        //   214: checkcast       Lcom/google/android/gms/internal/ax;
        //   217: astore_2       
        //   218: aload_3        
        //   219: aload_2        
        //   220: putfield        com/google/android/gms/internal/h.oI:Lcom/google/android/gms/internal/ax;
        //   223: goto            43
        //   226: aload_0        
        //   227: getfield        com/google/android/gms/internal/h.ov:Lcom/google/android/gms/internal/aQ;
        //   230: invokevirtual   com/google/android/gms/internal/aQ.clone:()Ljava/lang/Object;
        //   233: checkcast       Lcom/google/android/gms/internal/aQ;
        //   236: astore_2       
        //   237: aload_3        
        //   238: aload_2        
        //   239: putfield        com/google/android/gms/internal/h.ov:Lcom/google/android/gms/internal/aQ;
        //   242: goto            52
        //   245: aload_0        
        //   246: getfield        com/google/android/gms/internal/h.oJ:[I
        //   249: astore_2       
        //   250: aload_2        
        //   251: arraylength    
        //   252: istore_1       
        //   253: iload_1        
        //   254: ifle            61
        //   257: aload_0        
        //   258: getfield        com/google/android/gms/internal/h.oJ:[I
        //   261: invokevirtual   java/lang/Object.clone:()Ljava/lang/Object;
        //   264: checkcast       [I
        //   267: astore_2       
        //   268: aload_3        
        //   269: aload_2        
        //   270: putfield        com/google/android/gms/internal/h.oJ:[I
        //   273: goto            61
        //   276: aload_0        
        //   277: getfield        com/google/android/gms/internal/h.oO:Lcom/google/android/gms/internal/au;
        //   280: invokevirtual   com/google/android/gms/internal/au.clone:()Ljava/lang/Object;
        //   283: checkcast       Lcom/google/android/gms/internal/au;
        //   286: astore_2       
        //   287: aload_3        
        //   288: aload_2        
        //   289: putfield        com/google/android/gms/internal/h.oO:Lcom/google/android/gms/internal/au;
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
        // java.lang.IllegalStateException: Expression is linked from several locations: cmpgt:boolean(arraylength:int(getfield:int[](h::oJ, this:h)), ldc:int(0))
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
    
    public h sf() {
        final long n = 0L;
        this.oC = n;
        this.oF = n;
        this.oA = n;
        this.ou = "";
        this.oz = 0;
        this.oG = 0;
        this.ow = false;
        this.oK = aE.va();
        this.oH = aH.sW;
        this.oD = null;
        this.oy = aH.sW;
        this.oL = "";
        this.oN = "";
        this.oI = null;
        this.oE = "";
        this.oM = 180000L;
        this.ov = null;
        this.oB = aH.sW;
        this.ox = "";
        this.ot = 0;
        this.oJ = aH.sU;
        this.os = n;
        this.oO = null;
        this.tz = null;
        this.sH = -1;
        return this;
    }
    
    public h sh(final aY ay) {
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
                case 8: {
                    this.oC = ay.xW();
                    continue;
                }
                case 18: {
                    this.ou = ay.xZ();
                    continue;
                }
                case 26: {
                    final int vj = aH.vj(ay, 26);
                    int i;
                    if (this.oK != null) {
                        i = this.oK.length;
                    }
                    else {
                        i = 0;
                    }
                    final aE[] ok = new aE[vj + i];
                    if (i != 0) {
                        System.arraycopy(this.oK, 0, ok, 0, i);
                    }
                    while (i < ok.length - 1) {
                        ay.xP(ok[i] = new aE());
                        ay.xF();
                        ++i;
                    }
                    ay.xP(ok[i] = new aE());
                    this.oK = ok;
                    continue;
                }
                case 34: {
                    this.oH = ay.xO();
                    continue;
                }
                case 50: {
                    this.oy = ay.xO();
                    continue;
                }
                case 58: {
                    if (this.oI == null) {
                        this.oI = new ax();
                    }
                    ay.xP(this.oI);
                    continue;
                }
                case 66: {
                    this.oL = ay.xZ();
                    continue;
                }
                case 74: {
                    if (this.oD == null) {
                        this.oD = new aG();
                    }
                    ay.xP(this.oD);
                    continue;
                }
                case 80: {
                    this.ow = ay.xN();
                    continue;
                }
                case 88: {
                    this.oz = ay.xE();
                    continue;
                }
                case 96: {
                    this.oG = ay.xE();
                    continue;
                }
                case 106: {
                    this.oN = ay.xZ();
                    continue;
                }
                case 114: {
                    this.oE = ay.xZ();
                    continue;
                }
                case 120: {
                    this.oM = ay.xI();
                    continue;
                }
                case 130: {
                    if (this.ov == null) {
                        this.ov = new aQ();
                    }
                    ay.xP(this.ov);
                    continue;
                }
                case 136: {
                    this.oF = ay.xW();
                    continue;
                }
                case 146: {
                    this.oB = ay.xO();
                    continue;
                }
                case 152: {
                    final int xe = ay.xE();
                    switch (xe) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2: {
                            this.ot = xe;
                            continue;
                        }
                    }
                    break;
                }
                case 160: {
                    final int vj2 = aH.vj(ay, 160);
                    int j;
                    if (this.oJ != null) {
                        j = this.oJ.length;
                    }
                    else {
                        j = 0;
                    }
                    final int[] oj = new int[vj2 + j];
                    if (j != 0) {
                        System.arraycopy(this.oJ, 0, oj, 0, j);
                    }
                    while (j < oj.length - 1) {
                        oj[j] = ay.xE();
                        ay.xF();
                        ++j;
                    }
                    oj[j] = ay.xE();
                    this.oJ = oj;
                    continue;
                }
                case 162: {
                    final int ye = ay.ye(ay.yb());
                    final int xk = ay.xK();
                    int n = 0;
                    while (ay.xJ() > 0) {
                        ay.xE();
                        ++n;
                    }
                    ay.xY(xk);
                    int k;
                    if (this.oJ != null) {
                        k = this.oJ.length;
                    }
                    else {
                        k = 0;
                    }
                    final int[] oj2 = new int[n + k];
                    if (k != 0) {
                        System.arraycopy(this.oJ, 0, oj2, 0, k);
                    }
                    while (k < oj2.length) {
                        oj2[k] = ay.xE();
                        ++k;
                    }
                    this.oJ = oj2;
                    ay.xS(ye);
                    continue;
                }
                case 168: {
                    this.oA = ay.xW();
                    continue;
                }
                case 176: {
                    this.os = ay.xW();
                    continue;
                }
                case 186: {
                    if (this.oO == null) {
                        this.oO = new au();
                    }
                    ay.xP(this.oO);
                    continue;
                }
                case 194: {
                    this.ox = ay.xZ();
                    continue;
                }
            }
        }
    }
}
