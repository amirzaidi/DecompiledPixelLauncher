// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.userevent.nano;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class LauncherLogProto$Action extends a
{
    public int command;
    public int dir;
    public boolean isOutside;
    public int touch;
    public int type;
    
    public LauncherLogProto$Action() {
        this.clear();
    }
    
    public LauncherLogProto$Action clear() {
        this.type = 0;
        this.touch = 0;
        this.dir = 0;
        this.command = 0;
        this.isOutside = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.type != 0) {
            computeSerializedSize += b.VA(1, this.type);
        }
        if (this.touch != 0) {
            computeSerializedSize += b.VA(2, this.touch);
        }
        if (this.dir != 0) {
            computeSerializedSize += b.VA(3, this.dir);
        }
        if (this.command != 0) {
            computeSerializedSize += b.VA(4, this.command);
        }
        if (this.isOutside) {
            computeSerializedSize += b.VL(5, this.isOutside);
        }
        return computeSerializedSize;
    }
    
    public LauncherLogProto$Action mergeFrom(final c c) {
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
                        case 5: {
                            this.touch = wf2;
                            continue;
                        }
                    }
                    break;
                }
                case 24: {
                    final int wf3 = c.WF();
                    switch (wf3) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4: {
                            this.dir = wf3;
                            continue;
                        }
                    }
                    break;
                }
                case 32: {
                    final int wf4 = c.WF();
                    switch (wf4) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4: {
                            this.command = wf4;
                            continue;
                        }
                    }
                    break;
                }
                case 40: {
                    this.isOutside = c.Wy();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.type != 0) {
            b.Vv(1, this.type);
        }
        if (this.touch != 0) {
            b.Vv(2, this.touch);
        }
        if (this.dir != 0) {
            b.Vv(3, this.dir);
        }
        if (this.command != 0) {
            b.Vv(4, this.command);
        }
        if (this.isOutside) {
            b.VG(5, this.isOutside);
        }
        super.writeTo(b);
    }
}
