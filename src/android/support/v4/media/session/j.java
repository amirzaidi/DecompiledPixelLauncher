// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.media.session.MediaController$PlaybackInfo;
import android.media.AudioAttributes;

public class j
{
    public static AudioAttributes arA(final Object o) {
        return ((MediaController$PlaybackInfo)o).getAudioAttributes();
    }
    
    public static int ary(final Object o) {
        return arz(arA(o));
    }
    
    private static int arz(final AudioAttributes audioAttributes) {
        final int n = 4;
        final int n2 = 3;
        final boolean b = true;
        if ((audioAttributes.getFlags() & 0x1) == (b ? 1 : 0)) {
            return 7;
        }
        if ((audioAttributes.getFlags() & 0x4) == n) {
            return 6;
        }
        switch (audioAttributes.getUsage()) {
            default: {
                return n2;
            }
            case 1:
            case 11:
            case 12:
            case 14: {
                return n2;
            }
            case 13: {
                return b ? 1 : 0;
            }
            case 2: {
                return 0;
            }
            case 3: {
                return 8;
            }
            case 4: {
                return n;
            }
            case 6: {
                return 2;
            }
            case 5:
            case 7:
            case 8:
            case 9:
            case 10: {
                return 5;
            }
        }
    }
}
