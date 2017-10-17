// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

class AlphabeticIndexCompat$BaseIndex
{
    private static final String BUCKETS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-";
    private static final int UNKNOWN_BUCKET_INDEX;
    
    static {
        UNKNOWN_BUCKET_INDEX = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-".length() - 1;
    }
    
    protected int getBucketIndex(final String s) {
        if (s.isEmpty()) {
            return AlphabeticIndexCompat$BaseIndex.UNKNOWN_BUCKET_INDEX;
        }
        final int index = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-".indexOf(s.substring(0, 1).toUpperCase());
        if (index != -1) {
            return index;
        }
        return AlphabeticIndexCompat$BaseIndex.UNKNOWN_BUCKET_INDEX;
    }
    
    protected String getBucketLabel(final int n) {
        return "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-".substring(n, n + 1);
    }
}
