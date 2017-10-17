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

public class av implements d
{
    private static final Charset rW;
    static Boolean rX;
    final ar rV;
    
    static {
        rW = Charset.forName("UTF-8");
        av.rX = null;
    }
    
    public av() {
        this(new ar(null));
    }
    
    public av(final Context context) {
        this(new ar(context));
    }
    
    av(final ar ar) {
        this.rV = (ar)l.ht(ar);
    }
    
    static boolean uj(final long n, final long n2, final long n3) {
        final long n4 = 0L;
        boolean b = true;
        if ((n2 < n4 && b) || (n3 < n4 || !b)) {
            throw new IllegalArgumentException(new StringBuilder(72).append("negative values not supported: ").append(n2).append("/").append(n3).toString());
        }
        if ((n3 <= n4 && b) || (ao.ue(n, n3) >= n2 && b)) {
            b = false;
        }
        return b;
    }
    
    static long uk(final String s, final long n) {
        if (s != null && !s.isEmpty()) {
            final byte[] bytes = s.getBytes(av.rW);
            final ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
            allocate.put(bytes);
            allocate.putLong(n);
            return ah.tW(allocate.array());
        }
        return ul(n);
    }
    
    static long ul(final long n) {
        return ah.tW(ByteBuffer.allocate(8).putLong(n).array());
    }
    
    static ai um(final String s) {
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
                                                    return null;
                                                    substring = s.substring(0, index);
                                                    n2 = index + 1;
                                                    break Label_0034;
                                                    while (true) {
                                                        final String s2;
                                                        final String concat;
                                                        Log.e(s2, concat);
                                                        return null;
                                                        Label_0246: {
                                                            final String s3;
                                                            final String value;
                                                            concat = s3.concat(value);
                                                        }
                                                        continue;
                                                    }
                                                    final String value = String.valueOf(s);
                                                    final int length = value.length();
                                                    final String s3 = "Failed to parse the rule: ";
                                                    final String s2 = "LogSamplerImpl";
                                                    // iftrue(Label_0246:, length != 0)
                                                    String concat = new String(s3);
                                                }
                                                catch (NumberFormatException ex) {
                                                    final String value2 = String.valueOf(s);
                                                    final int length2 = value2.length();
                                                    final String s4 = "parseLong() failed while parsing: ";
                                                    final String s5 = "LogSamplerImpl";
                                                    String concat2;
                                                    if (length2 == 0) {
                                                        concat2 = new String(s4);
                                                    }
                                                    else {
                                                        concat2 = s4.concat(value2);
                                                    }
                                                    Log.e(s5, concat2, (Throwable)ex);
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
                    return new ai(substring, long1, long2);
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
    
    public boolean un(String value, final int n) {
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
        final long uf = this.rV.uf();
        final ai um = um(this.rV.ug(value));
        if (um != null) {
            return uj(uk(um.rM, uf), um.rL, um.rK);
        }
        return b;
    }
}
