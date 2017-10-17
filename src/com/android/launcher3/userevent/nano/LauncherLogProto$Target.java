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
            synchronized (d.PH) {
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
            computeSerializedSize += b.VA(n, this.type);
        }
        if (this.pageIndex != 0) {
            computeSerializedSize += b.VA(2, this.pageIndex);
        }
        if (this.rank != 0) {
            computeSerializedSize += b.VA(3, this.rank);
        }
        if (this.gridX != 0) {
            computeSerializedSize += b.VA(4, this.gridX);
        }
        if (this.gridY != 0) {
            computeSerializedSize += b.VA(5, this.gridY);
        }
        if (this.containerType != 0) {
            computeSerializedSize += b.VA(6, this.containerType);
        }
        if (this.cardinality != 0) {
            computeSerializedSize += b.VA(7, this.cardinality);
        }
        if (this.controlType != 0) {
            computeSerializedSize += b.VA(8, this.controlType);
        }
        if (this.itemType != 0) {
            computeSerializedSize += b.VA(9, this.itemType);
        }
        if (this.packageNameHash != 0) {
            computeSerializedSize += b.VA(10, this.packageNameHash);
        }
        if (this.componentHash != 0) {
            computeSerializedSize += b.VA(11, this.componentHash);
        }
        if (this.intentHash != 0) {
            computeSerializedSize += b.VA(12, this.intentHash);
        }
        if (this.spanX != n) {
            computeSerializedSize += b.VA(13, this.spanX);
        }
        if (this.spanY != n) {
            computeSerializedSize += b.VA(14, this.spanY);
        }
        if (this.predictedRank != 0) {
            computeSerializedSize += b.VA(15, this.predictedRank);
        }
        return computeSerializedSize;
    }
    
    public LauncherLogProto$Target mergeFrom(final c c) {
        while (true) {
            final int ws = c.Ws();
            switch (ws) {
                default: {
                    if (!f.WR(c, ws)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    final int wf = c.WF();
                    switch (wf) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.type = wf;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.pageIndex = c.WF();
                    continue;
                }
                case 24: {
                    this.rank = c.WF();
                    continue;
                }
                case 32: {
                    this.gridX = c.WF();
                    continue;
                }
                case 40: {
                    this.gridY = c.WF();
                    continue;
                }
                case 48: {
                    final int wf2 = c.WF();
                    switch (wf2) {
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
                            this.containerType = wf2;
                            continue;
                        }
                    }
                    break;
                }
                case 56: {
                    this.cardinality = c.WF();
                    continue;
                }
                case 64: {
                    final int wf3 = c.WF();
                    switch (wf3) {
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
                            this.controlType = wf3;
                            continue;
                        }
                    }
                    break;
                }
                case 72: {
                    final int wf4 = c.WF();
                    switch (wf4) {
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
                            this.itemType = wf4;
                            continue;
                        }
                    }
                    break;
                }
                case 80: {
                    this.packageNameHash = c.WF();
                    continue;
                }
                case 88: {
                    this.componentHash = c.WF();
                    continue;
                }
                case 96: {
                    this.intentHash = c.WF();
                    continue;
                }
                case 104: {
                    this.spanX = c.WF();
                    continue;
                }
                case 112: {
                    this.spanY = c.WF();
                    continue;
                }
                case 120: {
                    this.predictedRank = c.WF();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final int n = 1;
        if (this.type != 0) {
            b.Vv(n, this.type);
        }
        if (this.pageIndex != 0) {
            b.Vv(2, this.pageIndex);
        }
        if (this.rank != 0) {
            b.Vv(3, this.rank);
        }
        if (this.gridX != 0) {
            b.Vv(4, this.gridX);
        }
        if (this.gridY != 0) {
            b.Vv(5, this.gridY);
        }
        if (this.containerType != 0) {
            b.Vv(6, this.containerType);
        }
        if (this.cardinality != 0) {
            b.Vv(7, this.cardinality);
        }
        if (this.controlType != 0) {
            b.Vv(8, this.controlType);
        }
        if (this.itemType != 0) {
            b.Vv(9, this.itemType);
        }
        if (this.packageNameHash != 0) {
            b.Vv(10, this.packageNameHash);
        }
        if (this.componentHash != 0) {
            b.Vv(11, this.componentHash);
        }
        if (this.intentHash != 0) {
            b.Vv(12, this.intentHash);
        }
        if (this.spanX != n) {
            b.Vv(13, this.spanX);
        }
        if (this.spanY != n) {
            b.Vv(14, this.spanY);
        }
        if (this.predictedRank != 0) {
            b.Vv(15, this.predictedRank);
        }
        super.writeTo(b);
    }
}
