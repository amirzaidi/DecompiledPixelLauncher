// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.content.Intent;
import com.google.android.gms.common.internal.c;
import android.os.IBinder;
import java.util.Set;
import com.google.android.gms.common.internal.zzq;
import java.io.PrintWriter;
import java.io.FileDescriptor;

public interface g extends n
{
    void dump(final String p0, final FileDescriptor p1, final PrintWriter p2, final String[] p3);
    
    boolean gG();
    
    boolean gH();
    
    void gI(final zzq p0, final Set p1);
    
    void gJ();
    
    IBinder gK();
    
    void gL(final c p0);
    
    Intent gM();
    
    boolean gN();
    
    boolean gO();
    
    boolean gP();
}
