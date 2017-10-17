// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.Iterator;

class LongArrayMap$ValueIterator implements Iterator
{
    private int mNextIndex;
    final /* synthetic */ LongArrayMap this$0;
    
    LongArrayMap$ValueIterator(final LongArrayMap this$0) {
        this.this$0 = this$0;
        this.mNextIndex = 0;
    }
    
    public boolean hasNext() {
        return this.mNextIndex < this.this$0.size();
    }
    
    public Object next() {
        return this.this$0.valueAt(this.mNextIndex++);
    }
    
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
