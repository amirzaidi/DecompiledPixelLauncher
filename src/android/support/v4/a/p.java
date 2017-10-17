// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.io.ObjectInputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import android.util.Log;
import java.io.Writer;

public class p extends Writer
{
    private StringBuilder Xv;
    private final String Xw;
    
    public p(final String xw) {
        this.Xv = new StringBuilder(128);
        this.Xw = xw;
    }
    
    private void aiX() {
        if (this.Xv.length() > 0) {
            Log.d(this.Xw, this.Xv.toString());
            this.Xv.delete(0, this.Xv.length());
        }
    }
    
    public void close() {
        this.aiX();
    }
    
    public void flush() {
        this.aiX();
    }
    
    public void write(final char[] array, final int n, final int n2) {
        for (int i = 0; i < n2; ++i) {
            final char c = array[n + i];
            if (c != '\n') {
                this.Xv.append(c);
            }
            else {
                this.aiX();
            }
        }
    }
}
