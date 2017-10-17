// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.io.IOException;

public class zzaxw extends IOException
{
    public zzaxw(final String s) {
        super(s);
    }
    
    static zzaxw xA() {
        return new zzaxw("CodedInputStream encountered a malformed varint.");
    }
    
    static zzaxw xu() {
        return new zzaxw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
    
    static zzaxw xv() {
        return new zzaxw("Protocol message end-group tag did not match expected tag.");
    }
    
    static zzaxw xw() {
        return new zzaxw("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
    
    static zzaxw xx() {
        return new zzaxw("Protocol message contained an invalid tag (zero).");
    }
    
    static zzaxw xy() {
        return new zzaxw("Protocol message tag had invalid wire type.");
    }
    
    static zzaxw xz() {
        return new zzaxw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }
}
