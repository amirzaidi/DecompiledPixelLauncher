// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.userevent.nano;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class LauncherLogProto$Target extends a
{
    private static volatile LauncherLogProto$Target[] _emptyArray;
    public int cardinality;
    public int componentHash;
    public int containerType;
    public int controlType;
    public int gridX;
    public int gridY;
    public int intentHash;
    public int itemType;
    public int packageNameHash;
    public int pageIndex;
    public int predictedRank;
    public int rank;
    public int spanX;
    public int spanY;
    public int type;
    
    public LauncherLogProto$Target() {
        this.clear();
    }
    
    public static LauncherLogProto$Target[] emptyArray() {
        Label_0035: {
            if (LauncherLogProto$Target._emptyArray != null) {
                break Label_0035;
            }
            synchronized (d.La) {
                if (LauncherLogProto$Target._emptyArray == null) {
                    LauncherLogProto$Target._emptyArray = new LauncherLogProto$Target[0];
                }
                return LauncherLogProto$Target._emptyArray;
            }
        }
    }
    
    public LauncherLogProto$Target clear() {
        final boolean b = true;
        this.type = 0;
        this.pageIndex = 0;
        this.rank = 0;
        this.gridX = 0;
        this.gridY = 0;
        this.containerType = 0;
        this.cardinality = 0;
        this.controlType = 0;
        this.itemType = 0;
        this.packageNameHash = 0;
        this.componentHash = 0;
        this.intentHash = 0;
        this.spanX = (b ? 1 : 0);
        this.spanY = (b ? 1 : 0);
        this.predictedRank = 0;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.type != 0) {
            computeSerializedSize += b.RF(n, this.type);
        }
        if (this.pageIndex != 0) {
            computeSerializedSize += b.RF(2, this.pageIndex);
        }
        if (this.rank != 0) {
            computeSerializedSize += b.RF(3, this.rank);
        }
        if (this.gridX != 0) {
            computeSerializedSize += b.RF(4, this.gridX);
        }
        if (this.gridY != 0) {
            computeSerializedSize += b.RF(5, this.gridY);
        }
        if (this.containerType != 0) {
            computeSerializedSize += b.RF(6, this.containerType);
        }
        if (this.cardinality != 0) {
            computeSerializedSize += b.RF(7, this.cardinality);
        }
        if (this.controlType != 0) {
            computeSerializedSize += b.RF(8, this.controlType);
        }
        if (this.itemType != 0) {
            computeSerializedSize += b.RF(9, this.itemType);
        }
        if (this.packageNameHash != 0) {
            computeSerializedSize += b.RF(10, this.packageNameHash);
        }
        if (this.componentHash != 0) {
            computeSerializedSize += b.RF(11, this.componentHash);
        }
        if (this.intentHash != 0) {
            computeSerializedSize += b.RF(12, this.intentHash);
        }
        if (this.spanX != n) {
            computeSerializedSize += b.RF(13, this.spanX);
        }
        if (this.spanY != n) {
            computeSerializedSize += b.RF(14, this.spanY);
        }
        if (this.predictedRank != 0) {
            computeSerializedSize += b.RF(15, this.predictedRank);
        }
        return computeSerializedSize;
    }
    
    public LauncherLogProto$Target mergeFrom(final c c) {
        while (true) {
            final int sx = c.Sx();
            switch (sx) {
                default: {
                    if (!f.SW(c, sx)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    final int sk = c.SK();
                    switch (sk) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.type = sk;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.pageIndex = c.SK();
                    continue;
                }
                case 24: {
                    this.rank = c.SK();
                    continue;
                }
                case 32: {
                    this.gridX = c.SK();
                    continue;
                }
                case 40: {
                    this.gridY = c.SK();
                    continue;
                }
                case 48: {
                    final int sk2 = c.SK();
                    switch (sk2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10: {
                            this.containerType = sk2;
                            continue;
                        }
                    }
                    break;
                }
                case 56: {
                    this.cardinality = c.SK();
                    continue;
                }
                case 64: {
                    final int sk3 = c.SK();
                    switch (sk3) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11: {
                            this.controlType = sk3;
                            continue;
                        }
                    }
                    break;
                }
                case 72: {
                    final int sk4 = c.SK();
                    switch (sk4) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8: {
                            this.itemType = sk4;
                            continue;
                        }
                    }
                    break;
                }
                case 80: {
                    this.packageNameHash = c.SK();
                    continue;
                }
                case 88: {
                    this.componentHash = c.SK();
                    continue;
                }
                case 96: {
                    this.intentHash = c.SK();
                    continue;
                }
                case 104: {
                    this.spanX = c.SK();
                    continue;
                }
                case 112: {
                    this.spanY = c.SK();
                    continue;
                }
                case 120: {
                    this.predictedRank = c.SK();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final int n = 1;
        if (this.type != 0) {
            b.RA(n, this.type);
        }
        if (this.pageIndex != 0) {
            b.RA(2, this.pageIndex);
        }
        if (this.rank != 0) {
            b.RA(3, this.rank);
        }
        if (this.gridX != 0) {
            b.RA(4, this.gridX);
        }
        if (this.gridY != 0) {
            b.RA(5, this.gridY);
        }
        if (this.containerType != 0) {
            b.RA(6, this.containerType);
        }
        if (this.cardinality != 0) {
            b.RA(7, this.cardinality);
        }
        if (this.controlType != 0) {
            b.RA(8, this.controlType);
        }
        if (this.itemType != 0) {
            b.RA(9, this.itemType);
        }
        if (this.packageNameHash != 0) {
            b.RA(10, this.packageNameHash);
        }
        if (this.componentHash != 0) {
            b.RA(11, this.componentHash);
        }
        if (this.intentHash != 0) {
            b.RA(12, this.intentHash);
        }
        if (this.spanX != n) {
            b.RA(13, this.spanX);
        }
        if (this.spanY != n) {
            b.RA(14, this.spanY);
        }
        if (this.predictedRank != 0) {
            b.RA(15, this.predictedRank);
        }
        super.writeTo(b);
    }
}
