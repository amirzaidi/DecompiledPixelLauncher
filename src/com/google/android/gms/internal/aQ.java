// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.util.Log;
import java.nio.ByteBuffer;
import com.google.android.gms.common.internal.l;
import android.content.Context;
import java.nio.charset.Charset;
import com.google.android.gms.clearcut.d;

public class aq implements d
{
    private static final Charset se;
    static Boolean sf;
    final al sd;
    
    static {
        se = Charset.forName("UTF-8");
        aq.sf = null;
    }
    
    public aq() {
        this(new al(null));
    }
    
    public aq(final Context context) {
        this(new al(context));
    }
    
    aq(final al al) {
        this.sd = (al)l.kh(al);
    }
    
    static boolean ui(final long n, final long n2, final long n3) {
        final long n4 = 0L;
        boolean b = true;
        if ((n2 < n4 && b) || (n3 < n4 || !b)) {
            throw new IllegalArgumentException(new StringBuilder(72).append("negative values not supported: ").append(n2).append("/").append(n3).toString());
        }
        if ((n3 <= n4 && b) || (ai.ud(n, n3) >= n2 && b)) {
            b = false;
        }
        return b;
    }
    
    static long uj(final String s, final long n) {
        if (s != null && !s.isEmpty()) {
            final byte[] bytes = s.getBytes(aq.se);
            final ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
            allocate.put(bytes);
            allocate.putLong(n);
            return ab.tV(allocate.array());
        }
        return uk(n);
    }
    
    static long uk(final long n) {
        return ab.tV(ByteBuffer.allocate(8).putLong(n).array());
    }
    
    static ad ul(final String s) {
        final long n = 0L;
        final boolean b = true;
        boolean b2 = false;
        while (true) {
            while (true) {
                int n2 = 0;
                Label_0034: {
                    String substring = null;
                    long long1 = 0L;
                    long long2 = 0L;
                    Label_0178: {
                        if (s == null) {
                            break Label_0178;
                        }
                        substring = "";
                        final int index = s.indexOf(44);
                        if (index < 0) {
                            n2 = 0;
                            break Label_0034;
                        }
                        Label_0180: {
                            break Label_0180;
                            while (true) {
                                final int n3 = n2;
                                while (true) {
                                    Label_0322: {
                                        try {
                                            final int index2;
                                            final String substring2 = s.substring(n3, index2);
                                            try {
                                                long1 = Long.parseLong(substring2);
                                                final String substring3 = s.substring(index2 + 1);
                                                try {
                                                    long2 = Long.parseLong(substring3);
                                                    if (long1 < n) {
                                                        final int n4 = b ? 1 : 0;
                                                        if (n4 == 0) {
                                                            if (long2 >= n) {
                                                                b2 = b;
                                                            }
                                                            if (b2) {
                                                                break;
                                                            }
                                                        }
                                                        Log.e("LogSamplerImpl", new StringBuilder(72).append("negative values not supported: ").append(long1).append("/").append(long2).toString());
                                                        return null;
                                                    }
                                                    break Label_0322;
                                                    substring = s.substring(0, index);
                                                    n2 = index + 1;
                                                    break Label_0034;
                                                    String concat = null;
                                                    Label_0246: {
                                                        final String s2;
                                                        final String value;
                                                        concat = s2.concat(value);
                                                    }
                                                    // iftrue(Label_0246:, length != 0)
                                                    final String s3;
                                                    Label_0236: {
                                                        break Label_0236;
                                                        final String value = String.valueOf(s);
                                                        final int length = value.length();
                                                        s3 = "LogSamplerImpl";
                                                        final String s2 = "Failed to parse the rule: ";
                                                        concat = new String(s2);
                                                        break Label_0236;
                                                        return null;
                                                    }
                                                    Log.e(s3, concat);
                                                    return null;
                                                }
                                                catch (NumberFormatException ex) {
                                                    final String value2 = String.valueOf(s);
                                                    final int length2 = value2.length();
                                                    final String s4 = "LogSamplerImpl";
                                                    final String s5 = "parseLong() failed while parsing: ";
                                                    String concat2;
                                                    if (length2 == 0) {
                                                        concat2 = new String(s5);
                                                    }
                                                    else {
                                                        concat2 = s5.concat(value2);
                                                    }
                                                    Log.e(s4, concat2, (Throwable)ex);
                                                    return null;
                                                }
                                            }
                                            catch (NumberFormatException ex2) {}
                                        }
                                        catch (NumberFormatException ex3) {}
                                    }
                                    final int n4 = 0;
                                    continue;
                                }
                            }
                        }
                    }
                    return new ad(substring, long1, long2);
                }
                final int index2 = s.indexOf(47, n2);
                if (index2 > 0) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    public boolean um(String value, final int n) {
        final boolean b = true;
        if (value == null || value.isEmpty()) {
            if (n < 0) {
                value = null;
            }
            else {
                value = String.valueOf(n);
            }
        }
        if (value == null) {
            return b;
        }
        final long ue = this.sd.ue();
        final ad ul = ul(this.sd.uf(value));
        if (ul != null) {
            return ui(uj(ul.rT, ue), ul.rS, ul.rR);
        }
        return b;
    }
}
