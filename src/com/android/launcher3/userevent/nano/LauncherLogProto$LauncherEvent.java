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
            computeSerializedSize += b.Rt(1, this.action);
        }
        if (this.srcTarget != null && this.srcTarget.length > 0) {
            int n2 = computeSerializedSize;
            for (int j = 0; j < this.srcTarget.length; ++j) {
                final LauncherLogProto$Target launcherLogProto$Target = this.srcTarget[j];
                if (launcherLogProto$Target != null) {
                    n2 += b.Rt(2, launcherLogProto$Target);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.destTarget != null && this.destTarget.length > 0) {
            while (i < this.destTarget.length) {
                final LauncherLogProto$Target launcherLogProto$Target2 = this.destTarget[i];
                if (launcherLogProto$Target2 != null) {
                    computeSerializedSize += b.Rt(3, launcherLogProto$Target2);
                }
                ++i;
            }
        }
        if (this.actionDurationMillis != n) {
            computeSerializedSize += b.RE(4, this.actionDurationMillis);
        }
        if (this.elapsedContainerMillis != n) {
            computeSerializedSize += b.RE(5, this.elapsedContainerMillis);
        }
        if (this.elapsedSessionMillis != n) {
            computeSerializedSize += b.RE(6, this.elapsedSessionMillis);
        }
        if (this.isInMultiWindowMode) {
            computeSerializedSize += b.RQ(7, this.isInMultiWindowMode);
        }
        if (this.isInLandscapeMode) {
            computeSerializedSize += b.RQ(8, this.isInLandscapeMode);
        }
        return computeSerializedSize;
    }
    
    public LauncherLogProto$LauncherEvent mergeFrom(final c c) {
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
                case 10: {
                    if (this.action == null) {
                        this.action = new LauncherLogProto$Action();
                    }
                    c.SB(this.action);
                    continue;
                }
                case 18: {
                    final int ss = f.SS(c, 18);
                    int i;
                    if (this.srcTarget == null) {
                        i = 0;
                    }
                    else {
                        i = this.srcTarget.length;
                    }
                    final LauncherLogProto$Target[] srcTarget = new LauncherLogProto$Target[ss + i];
                    if (i != 0) {
                        System.arraycopy(this.srcTarget, 0, srcTarget, 0, i);
                    }
                    while (i < srcTarget.length - 1) {
                        c.SB(srcTarget[i] = new LauncherLogProto$Target());
                        c.Sx();
                        ++i;
                    }
                    c.SB(srcTarget[i] = new LauncherLogProto$Target());
                    this.srcTarget = srcTarget;
                    continue;
                }
                case 26: {
                    final int ss2 = f.SS(c, 26);
                    int j;
                    if (this.destTarget == null) {
                        j = 0;
                    }
                    else {
                        j = this.destTarget.length;
                    }
                    final LauncherLogProto$Target[] destTarget = new LauncherLogProto$Target[ss2 + j];
                    if (j != 0) {
                        System.arraycopy(this.destTarget, 0, destTarget, 0, j);
                    }
                    while (j < destTarget.length - 1) {
                        c.SB(destTarget[j] = new LauncherLogProto$Target());
                        c.Sx();
                        ++j;
                    }
                    c.SB(destTarget[j] = new LauncherLogProto$Target());
                    this.destTarget = destTarget;
                    continue;
                }
                case 32: {
                    this.actionDurationMillis = c.SE();
                    continue;
                }
                case 40: {
                    this.elapsedContainerMillis = c.SE();
                    continue;
                }
                case 48: {
                    this.elapsedSessionMillis = c.SE();
                    continue;
                }
                case 56: {
                    this.isInMultiWindowMode = c.SD();
                    continue;
                }
                case 64: {
                    this.isInLandscapeMode = c.SD();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        final long n = 0L;
        int i = 0;
        if (this.action != null) {
            b.RP(1, this.action);
        }
        if (this.srcTarget != null && this.srcTarget.length > 0) {
            for (int j = 0; j < this.srcTarget.length; ++j) {
                final LauncherLogProto$Target launcherLogProto$Target = this.srcTarget[j];
                if (launcherLogProto$Target != null) {
                    b.RP(2, launcherLogProto$Target);
                }
            }
        }
        if (this.destTarget != null && this.destTarget.length > 0) {
            while (i < this.destTarget.length) {
                final LauncherLogProto$Target launcherLogProto$Target2 = this.destTarget[i];
                if (launcherLogProto$Target2 != null) {
                    b.RP(3, launcherLogProto$Target2);
                }
                ++i;
            }
        }
        if (this.actionDurationMillis != n) {
            b.Sh(4, this.actionDurationMillis);
        }
        if (this.elapsedContainerMillis != n) {
            b.Sh(5, this.elapsedContainerMillis);
        }
        if (this.elapsedSessionMillis != n) {
            b.Sh(6, this.elapsedSessionMillis);
        }
        if (this.isInMultiWindowMode) {
            b.RL(7, this.isInMultiWindowMode);
        }
        if (this.isInLandscapeMode) {
            b.RL(8, this.isInLandscapeMode);
        }
        super.writeTo(b);
    }
}
