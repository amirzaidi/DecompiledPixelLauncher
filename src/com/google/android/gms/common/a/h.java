// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import java.util.regex.Matcher;
import android.text.TextUtils;
import java.util.regex.Pattern;

public final class h
{
    private static final Pattern kp;
    private static final Pattern kq;
    
    static {
        kp = Pattern.compile("\\\\.");
        kq = Pattern.compile("[\\\\\"/\b\f\n\r\t]");
    }
    
    public static String mt(final String s) {
        StringBuffer sb = null;
        if (TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        final Matcher matcher = h.kq.matcher(s);
        while (matcher.find()) {
            if (sb == null) {
                sb = new StringBuffer();
            }
            switch (matcher.group().charAt(0)) {
                default: {
                    continue;
                }
                case '\b': {
                    matcher.appendReplacement(sb, "\\\\b");
                    continue;
                }
                case '\"': {
                    matcher.appendReplacement(sb, "\\\\\\\"");
                    continue;
                }
                case '\\': {
                    matcher.appendReplacement(sb, "\\\\\\\\");
                    continue;
                }
                case '/': {
                    matcher.appendReplacement(sb, "\\\\/");
                    continue;
                }
                case '\f': {
                    matcher.appendReplacement(sb, "\\\\f");
                    continue;
                }
                case '\n': {
                    matcher.appendReplacement(sb, "\\\\n");
                    continue;
                }
                case '\r': {
                    matcher.appendReplacement(sb, "\\\\r");
                    continue;
                }
                case '\t': {
                    matcher.appendReplacement(sb, "\\\\t");
                    continue;
                }
            }
        }
        if (sb != null) {
            matcher.appendTail(sb);
            return sb.toString();
        }
        return s;
    }
}
