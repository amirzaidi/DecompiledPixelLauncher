// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model.nano;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class LauncherDumpProto$DumpTarget extends a
{
    private static volatile LauncherDumpProto$DumpTarget[] _emptyArray;
    public String component;
    public int containerType;
    public int gridX;
    public int gridY;
    public String itemId;
    public int itemType;
    public String packageName;
    public int pageId;
    public int spanX;
    public int spanY;
    public int type;
    public int userType;
    
    public LauncherDumpProto$DumpTarget() {
        this.clear();
    }
    
    public static LauncherDumpProto$DumpTarget[] emptyArray() {
        Label_0035: {
            if (LauncherDumpProto$DumpTarget._emptyArray != null) {
                break Label_0035;
            }
            synchronized (d.PH) {
                if (LauncherDumpProto$DumpTarget._emptyArray == null) {
                    LauncherDumpProto$DumpTarget._emptyArray = new LauncherDumpProto$DumpTarget[0];
                }
                return LauncherDumpProto$DumpTarget._emptyArray;
            }
        }
    }
    
    public LauncherDumpProto$DumpTarget clear() {
        final boolean b = true;
        this.type = 0;
        this.pageId = 0;
        this.gridX = 0;
        this.gridY = 0;
        this.containerType = 0;
        this.itemType = 0;
        this.packageName = "";
        this.component = "";
        this.itemId = "";
        this.spanX = (b ? 1 : 0);
        this.spanY = (b ? 1 : 0);
        this.userType = 0;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.type != 0) {
            computeSerializedSize += b.VA(n, this.type);
        }
        if (this.pageId != 0) {
            computeSerializedSize += b.VA(2, this.pageId);
        }
        if (this.gridX != 0) {
            computeSerializedSize += b.VA(3, this.gridX);
        }
        if (this.gridY != 0) {
            computeSerializedSize += b.VA(4, this.gridY);
        }
        if (this.containerType != 0) {
            computeSerializedSize += b.VA(5, this.containerType);
        }
        if (this.itemType != 0) {
            computeSerializedSize += b.VA(6, this.itemType);
        }
        if (!this.packageName.equals("")) {
            computeSerializedSize += b.VW(7, this.packageName);
        }
        if (!this.component.equals("")) {
            computeSerializedSize += b.VW(8, this.component);
        }
        if (!this.itemId.equals("")) {
            computeSerializedSize += b.VW(9, this.itemId);
        }
        if (this.spanX != n) {
            computeSerializedSize += b.VA(10, this.spanX);
        }
        if (this.spanY != n) {
            computeSerializedSize += b.VA(11, this.spanY);
        }
        if (this.userType != 0) {
            computeSerializedSize += b.VA(12, this.userType);
        }
        return computeSerializedSize;
    }
    
    public LauncherDumpProto$DumpTarget mergeFrom(final c c) {
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
                        case 2: {
                            this.type = wf;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.pageId = c.WF();
                    continue;
                }
                case 24: {
                    this.gridX = c.WF();
                    continue;
                }
                case 32: {
                    this.gridY = c.WF();
                    continue;
                }
                case 40: {
                    final int wf2 = c.WF();
                    switch (wf2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.containerType = wf2;
                            continue;
                        }
                    }
                    break;
                }
                case 48: {
                    final int wf3 = c.WF();
                    switch (wf3) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.itemType = wf3;
                            continue;
                        }
                    }
                    break;
                }
                case 58: {
                    this.packageName = c.WB();
                    continue;
                }
                case 66: {
                    this.component = c.WB();
                    continue;
                }
                case 74: {
                    this.itemId = c.WB();
                    continue;
                }
                case 80: {
                    this.spanX = c.WF();
                    continue;
                }
                case 88: {
                    this.spanY = c.WF();
                    continue;
                }
                case 96: {
                    final int wf4 = c.WF();
                    switch (wf4) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1: {
                            this.userType = wf4;
                            continue;
                        }
                    }
                    break;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final int n = 1;
        if (this.type != 0) {
            b.Vv(n, this.type);
        }
        if (this.pageId != 0) {
            b.Vv(2, this.pageId);
        }
        if (this.gridX != 0) {
            b.Vv(3, this.gridX);
        }
        if (this.gridY != 0) {
            b.Vv(4, this.gridY);
        }
        if (this.containerType != 0) {
            b.Vv(5, this.containerType);
        }
        if (this.itemType != 0) {
            b.Vv(6, this.itemType);
        }
        if (!this.packageName.equals("")) {
            b.VT(7, this.packageName);
        }
        if (!this.component.equals("")) {
            b.VT(8, this.component);
        }
        if (!this.itemId.equals("")) {
            b.VT(9, this.itemId);
        }
        if (this.spanX != n) {
            b.Vv(10, this.spanX);
        }
        if (this.spanY != n) {
            b.Vv(11, this.spanY);
        }
        if (this.userType != 0) {
            b.Vv(12, this.userType);
        }
        super.writeTo(b);
    }
}
