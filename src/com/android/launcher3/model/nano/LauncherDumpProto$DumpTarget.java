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
            synchronized (d.La) {
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
            computeSerializedSize += b.RF(n, this.type);
        }
        if (this.pageId != 0) {
            computeSerializedSize += b.RF(2, this.pageId);
        }
        if (this.gridX != 0) {
            computeSerializedSize += b.RF(3, this.gridX);
        }
        if (this.gridY != 0) {
            computeSerializedSize += b.RF(4, this.gridY);
        }
        if (this.containerType != 0) {
            computeSerializedSize += b.RF(5, this.containerType);
        }
        if (this.itemType != 0) {
            computeSerializedSize += b.RF(6, this.itemType);
        }
        if (!this.packageName.equals("")) {
            computeSerializedSize += b.Sb(7, this.packageName);
        }
        if (!this.component.equals("")) {
            computeSerializedSize += b.Sb(8, this.component);
        }
        if (!this.itemId.equals("")) {
            computeSerializedSize += b.Sb(9, this.itemId);
        }
        if (this.spanX != n) {
            computeSerializedSize += b.RF(10, this.spanX);
        }
        if (this.spanY != n) {
            computeSerializedSize += b.RF(11, this.spanY);
        }
        if (this.userType != 0) {
            computeSerializedSize += b.RF(12, this.userType);
        }
        return computeSerializedSize;
    }
    
    public LauncherDumpProto$DumpTarget mergeFrom(final c c) {
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
                        case 2: {
                            this.type = sk;
                            continue;
                        }
                    }
                    break;
                }
                case 16: {
                    this.pageId = c.SK();
                    continue;
                }
                case 24: {
                    this.gridX = c.SK();
                    continue;
                }
                case 32: {
                    this.gridY = c.SK();
                    continue;
                }
                case 40: {
                    final int sk2 = c.SK();
                    switch (sk2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.containerType = sk2;
                            continue;
                        }
                    }
                    break;
                }
                case 48: {
                    final int sk3 = c.SK();
                    switch (sk3) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.itemType = sk3;
                            continue;
                        }
                    }
                    break;
                }
                case 58: {
                    this.packageName = c.SG();
                    continue;
                }
                case 66: {
                    this.component = c.SG();
                    continue;
                }
                case 74: {
                    this.itemId = c.SG();
                    continue;
                }
                case 80: {
                    this.spanX = c.SK();
                    continue;
                }
                case 88: {
                    this.spanY = c.SK();
                    continue;
                }
                case 96: {
                    final int sk4 = c.SK();
                    switch (sk4) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1: {
                            this.userType = sk4;
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
            b.RA(n, this.type);
        }
        if (this.pageId != 0) {
            b.RA(2, this.pageId);
        }
        if (this.gridX != 0) {
            b.RA(3, this.gridX);
        }
        if (this.gridY != 0) {
            b.RA(4, this.gridY);
        }
        if (this.containerType != 0) {
            b.RA(5, this.containerType);
        }
        if (this.itemType != 0) {
            b.RA(6, this.itemType);
        }
        if (!this.packageName.equals("")) {
            b.RY(7, this.packageName);
        }
        if (!this.component.equals("")) {
            b.RY(8, this.component);
        }
        if (!this.itemId.equals("")) {
            b.RY(9, this.itemId);
        }
        if (this.spanX != n) {
            b.RA(10, this.spanX);
        }
        if (this.spanY != n) {
            b.RA(11, this.spanY);
        }
        if (this.userType != 0) {
            b.RA(12, this.userType);
        }
        super.writeTo(b);
    }
}
