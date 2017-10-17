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

public interface i extends o
{
    boolean dZ();
    
    void dump(final String p0, final FileDescriptor p1, final PrintWriter p2, final String[] p3);
    
    boolean ea();
    
    void eb(final zzq p0, final Set p1);
    
    void ec();
    
    IBinder ed();
    
    void ee(final c p0);
    
    Intent ef();
    
    boolean eg();
    
    boolean eh();
    
    boolean ei();
}
