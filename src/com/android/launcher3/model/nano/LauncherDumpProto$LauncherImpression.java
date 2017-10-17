// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model.nano;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class LauncherDumpProto$LauncherImpression extends a
{
    public LauncherDumpProto$DumpTarget[] targets;
    
    public LauncherDumpProto$LauncherImpression() {
        this.clear();
    }
    
    public LauncherDumpProto$LauncherImpression clear() {
        this.targets = LauncherDumpProto$DumpTarget.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.targets != null && this.targets.length > 0) {
            while (i < this.targets.length) {
                final LauncherDumpProto$DumpTarget launcherDumpProto$DumpTarget = this.targets[i];
                if (launcherDumpProto$DumpTarget != null) {
                    computeSerializedSize += b.Vo(1, launcherDumpProto$DumpTarget);
                }
                ++i;
            }
        }
        return computeSerializedSize;
    }
    
    public LauncherDumpProto$LauncherImpression mergeFrom(final c c) {
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
                case 10: {
                    final int wn = f.WN(c, 10);
                    int i;
                    if (this.targets == null) {
                        i = 0;
                    }
                    else {
                        i = this.targets.length;
                    }
                    final LauncherDumpProto$DumpTarget[] targets = new LauncherDumpProto$DumpTarget[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.targets, 0, targets, 0, i);
                    }
                    while (i < targets.length - 1) {
                        c.Ww(targets[i] = new LauncherDumpProto$DumpTarget());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(targets[i] = new LauncherDumpProto$DumpTarget());
                    this.targets = targets;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.targets != null && this.targets.length > 0) {
            while (i < this.targets.length) {
                final LauncherDumpProto$DumpTarget launcherDumpProto$DumpTarget = this.targets[i];
                if (launcherDumpProto$DumpTarget != null) {
                    b.VK(1, launcherDumpProto$DumpTarget);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}
