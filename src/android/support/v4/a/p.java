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
    private StringBuilder VM;
    private final String VN;
    
    public p(final String vn) {
        this.VM = new StringBuilder(128);
        this.VN = vn;
    }
    
    private void ahN() {
        if (this.VM.length() > 0) {
            Log.d(this.VN, this.VM.toString());
            this.VM.delete(0, this.VM.length());
        }
    }
    
    public void close() {
        this.ahN();
    }
    
    public void flush() {
        this.ahN();
    }
    
    public void write(final char[] array, final int n, final int n2) {
        for (int i = 0; i < n2; ++i) {
            final char c = array[n + i];
            if (c != '\n') {
                this.VM.append(c);
            }
            else {
                this.ahN();
            }
        }
    }
}
