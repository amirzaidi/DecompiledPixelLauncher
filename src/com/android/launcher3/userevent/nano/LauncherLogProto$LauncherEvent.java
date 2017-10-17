// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.userevent.nano;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class LauncherLogProto$LauncherEvent extends a
{
    public LauncherLogProto$Action action;
    public long actionDurationMillis;
    public LauncherLogProto$Target[] destTarget;
    public long elapsedContainerMillis;
    public long elapsedSessionMillis;
    public boolean isInLandscapeMode;
    public boolean isInMultiWindowMode;
    public LauncherLogProto$Target[] srcTarget;
    
    public LauncherLogProto$LauncherEvent() {
        this.clear();
    }
    
    public LauncherLogProto$LauncherEvent clear() {
        final long elapsedSessionMillis = 0L;
        this.action = null;
        this.srcTarget = LauncherLogProto$Target.emptyArray();
        this.destTarget = LauncherLogProto$Target.emptyArray();
        this.actionDurationMillis = elapsedSessionMillis;
        this.elapsedContainerMillis = elapsedSessionMillis;
        this.elapsedSessionMillis = elapsedSessionMillis;
        this.isInMultiWindowMode = false;
        this.isInLandscapeMode = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final long n = 0L;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.action != null) {
            computeSerializedSize += b.Vo(1, this.action);
        }
        if (this.srcTarget != null && this.srcTarget.length > 0) {
            int n2 = computeSerializedSize;
            for (int j = 0; j < this.srcTarget.length; ++j) {
                final LauncherLogProto$Target launcherLogProto$Target = this.srcTarget[j];
                if (launcherLogProto$Target != null) {
                    n2 += b.Vo(2, launcherLogProto$Target);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.destTarget != null && this.destTarget.length > 0) {
            while (i < this.destTarget.length) {
                final LauncherLogProto$Target launcherLogProto$Target2 = this.destTarget[i];
                if (launcherLogProto$Target2 != null) {
                    computeSerializedSize += b.Vo(3, launcherLogProto$Target2);
                }
                ++i;
            }
        }
        if (this.actionDurationMillis != n) {
            computeSerializedSize += b.Vz(4, this.actionDurationMillis);
        }
        if (this.elapsedContainerMillis != n) {
            computeSerializedSize += b.Vz(5, this.elapsedContainerMillis);
        }
        if (this.elapsedSessionMillis != n) {
            computeSerializedSize += b.Vz(6, this.elapsedSessionMillis);
        }
        if (this.isInMultiWindowMode) {
            computeSerializedSize += b.VL(7, this.isInMultiWindowMode);
        }
        if (this.isInLandscapeMode) {
            computeSerializedSize += b.VL(8, this.isInLandscapeMode);
        }
        return computeSerializedSize;
    }
    
    public LauncherLogProto$LauncherEvent mergeFrom(final c c) {
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
                    if (this.action == null) {
                        this.action = new LauncherLogProto$Action();
                    }
                    c.Ww(this.action);
                    continue;
                }
                case 18: {
                    final int wn = f.WN(c, 18);
                    int i;
                    if (this.srcTarget == null) {
                        i = 0;
                    }
                    else {
                        i = this.srcTarget.length;
                    }
                    final LauncherLogProto$Target[] srcTarget = new LauncherLogProto$Target[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.srcTarget, 0, srcTarget, 0, i);
                    }
                    while (i < srcTarget.length - 1) {
                        c.Ww(srcTarget[i] = new LauncherLogProto$Target());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(srcTarget[i] = new LauncherLogProto$Target());
                    this.srcTarget = srcTarget;
                    continue;
                }
                case 26: {
                    final int wn2 = f.WN(c, 26);
                    int j;
                    if (this.destTarget == null) {
                        j = 0;
                    }
                    else {
                        j = this.destTarget.length;
                    }
                    final LauncherLogProto$Target[] destTarget = new LauncherLogProto$Target[wn2 + j];
                    if (j != 0) {
                        System.arraycopy(this.destTarget, 0, destTarget, 0, j);
                    }
                    while (j < destTarget.length - 1) {
                        c.Ww(destTarget[j] = new LauncherLogProto$Target());
                        c.Ws();
                        ++j;
                    }
                    c.Ww(destTarget[j] = new LauncherLogProto$Target());
                    this.destTarget = destTarget;
                    continue;
                }
                case 32: {
                    this.actionDurationMillis = c.Wz();
                    continue;
                }
                case 40: {
                    this.elapsedContainerMillis = c.Wz();
                    continue;
                }
                case 48: {
                    this.elapsedSessionMillis = c.Wz();
                    continue;
                }
                case 56: {
                    this.isInMultiWindowMode = c.Wy();
                    continue;
                }
                case 64: {
                    this.isInLandscapeMode = c.Wy();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final long n = 0L;
        int i = 0;
        if (this.action != null) {
            b.VK(1, this.action);
        }
        if (this.srcTarget != null && this.srcTarget.length > 0) {
            for (int j = 0; j < this.srcTarget.length; ++j) {
                final LauncherLogProto$Target launcherLogProto$Target = this.srcTarget[j];
                if (launcherLogProto$Target != null) {
                    b.VK(2, launcherLogProto$Target);
                }
            }
        }
        if (this.destTarget != null && this.destTarget.length > 0) {
            while (i < this.destTarget.length) {
                final LauncherLogProto$Target launcherLogProto$Target2 = this.destTarget[i];
                if (launcherLogProto$Target2 != null) {
                    b.VK(3, launcherLogProto$Target2);
                }
                ++i;
            }
        }
        if (this.actionDurationMillis != n) {
            b.Wc(4, this.actionDurationMillis);
        }
        if (this.elapsedContainerMillis != n) {
            b.Wc(5, this.elapsedContainerMillis);
        }
        if (this.elapsedSessionMillis != n) {
            b.Wc(6, this.elapsedSessionMillis);
        }
        if (this.isInMultiWindowMode) {
            b.VG(7, this.isInMultiWindowMode);
        }
        if (this.isInLandscapeMode) {
            b.VG(8, this.isInLandscapeMode);
        }
        super.writeTo(b);
    }
}
