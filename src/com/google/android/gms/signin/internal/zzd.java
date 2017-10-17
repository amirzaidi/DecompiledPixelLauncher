// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.ConnectionResult;
import android.os.IInterface;

public interface zzd extends IInterface
{
    void zza(final ConnectionResult p0, final AuthAccountResult p1);
    
    void zza(final Status p0, final GoogleSignInAccount p1);
    
    void zzb(final SignInResponse p0);
    
    void zzio(final Status p0);
    
    void zzip(final Status p0);
}
