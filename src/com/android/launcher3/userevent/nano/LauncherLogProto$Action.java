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
            computeSerializedSize += b.RF(1, this.type);
        }
        if (this.touch != 0) {
            computeSerializedSize += b.RF(2, this.touch);
        }
        if (this.dir != 0) {
            computeSerializedSize += b.RF(3, this.dir);
        }
        if (this.command != 0) {
            computeSerializedSize += b.RF(4, this.command);
        }
        if (this.isOutside) {
            computeSerializedSize += b.RQ(5, this.isOutside);
        }
        return computeSerializedSize;
    }
    
    public LauncherLogProto$Action mergeFrom(final c c) {
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
                        case 5: {
                            this.touch = sk2;
                            continue;
                        }
                    }
                    break;
                }
                case 24: {
                    final int sk3 = c.SK();
                    switch (sk3) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4: {
                            this.dir = sk3;
                            continue;
                        }
                    }
                    break;
                }
                case 32: {
                    final int sk4 = c.SK();
                    switch (sk4) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4: {
                            this.command = sk4;
                            continue;
                        }
                    }
                    break;
                }
                case 40: {
                    this.isOutside = c.SD();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (this.type != 0) {
            b.RA(1, this.type);
        }
        if (this.touch != 0) {
            b.RA(2, this.touch);
        }
        if (this.dir != 0) {
            b.RA(3, this.dir);
        }
        if (this.command != 0) {
            b.RA(4, this.command);
        }
        if (this.isOutside) {
            b.RL(5, this.isOutside);
        }
        super.writeTo(b);
    }
}
