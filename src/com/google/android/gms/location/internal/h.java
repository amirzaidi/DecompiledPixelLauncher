// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.IInterface;
import android.os.RemoteException;
import android.location.Location;
import java.util.HashMap;
import android.content.Context;
import java.util.Map;
import android.content.ContentProviderClient;

public class h
{
    private ContentProviderClient AE;
    private boolean AF;
    private Map AG;
    private Map AH;
    private final r AI;
    private final Context mContext;
    
    public h(final Context mContext, final r ai) {
        this.AE = null;
        this.AF = false;
        this.AG = new HashMap();
        this.AH = new HashMap();
        this.mContext = mContext;
        this.AI = ai;
    }
    
    public Location Fi() {
        this.AI.FM();
        try {
            final r ai = this.AI;
            try {
                final IInterface fn = ai.FN();
                try {
                    final zzi zzi = (zzi)fn;
                    try {
                        final Context mContext = this.mContext;
                        try {
                            return zzi.zzkh(mContext.getPackageName());
                        }
                        catch (RemoteException ex) {
                            throw new IllegalStateException((Throwable)ex);
                        }
                    }
                    catch (RemoteException ex2) {}
                }
                catch (RemoteException ex3) {}
            }
            catch (RemoteException ex4) {}
        }
        catch (RemoteException ex5) {}
    }
    
    public void Fj() {
        if (this.AF) {
            try {
                this.zzcf(false);
            }
            catch (RemoteException ex) {
                throw new IllegalStateException((Throwable)ex);
            }
        }
    }
    
    public void Fk() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gms/location/internal/h.AG:Ljava/util/Map;
        //     4: astore_1       
        //     5: aload_1        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: getfield        com/google/android/gms/location/internal/h.AG:Ljava/util/Map;
        //    11: astore_2       
        //    12: aload_2        
        //    13: invokeinterface java/util/Map.values:()Ljava/util/Collection;
        //    18: astore_2       
        //    19: aload_2        
        //    20: invokeinterface java/util/Collection.iterator:()Ljava/util/Iterator;
        //    25: astore_3       
        //    26: aload_3        
        //    27: invokeinterface java/util/Iterator.hasNext:()Z
        //    32: istore          4
        //    34: iload           4
        //    36: ifne            105
        //    39: aload_0        
        //    40: getfield        com/google/android/gms/location/internal/h.AG:Ljava/util/Map;
        //    43: astore_2       
        //    44: aload_2        
        //    45: invokeinterface java/util/Map.clear:()V
        //    50: aload_1        
        //    51: monitorexit    
        //    52: aload_0        
        //    53: getfield        com/google/android/gms/location/internal/h.AH:Ljava/util/Map;
        //    56: astore_1       
        //    57: aload_1        
        //    58: monitorenter   
        //    59: aload_0        
        //    60: getfield        com/google/android/gms/location/internal/h.AH:Ljava/util/Map;
        //    63: astore_2       
        //    64: aload_2        
        //    65: invokeinterface java/util/Map.values:()Ljava/util/Collection;
        //    70: astore_2       
        //    71: aload_2        
        //    72: invokeinterface java/util/Collection.iterator:()Ljava/util/Iterator;
        //    77: astore_3       
        //    78: aload_3        
        //    79: invokeinterface java/util/Iterator.hasNext:()Z
        //    84: istore          4
        //    86: iload           4
        //    88: ifne            180
        //    91: aload_0        
        //    92: getfield        com/google/android/gms/location/internal/h.AH:Ljava/util/Map;
        //    95: astore_2       
        //    96: aload_2        
        //    97: invokeinterface java/util/Map.clear:()V
        //   102: aload_1        
        //   103: monitorexit    
        //   104: return         
        //   105: aload_3        
        //   106: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   111: astore_2       
        //   112: aload_2        
        //   113: checkcast       Lcom/google/android/gms/location/internal/k;
        //   116: astore_2       
        //   117: aload_2        
        //   118: ifnull          26
        //   121: aload_0        
        //   122: getfield        com/google/android/gms/location/internal/h.AI:Lcom/google/android/gms/location/internal/r;
        //   125: astore          5
        //   127: aload           5
        //   129: invokeinterface com/google/android/gms/location/internal/r.FN:()Landroid/os/IInterface;
        //   134: astore          5
        //   136: aload           5
        //   138: checkcast       Lcom/google/android/gms/location/internal/zzi;
        //   141: astore          5
        //   143: aload_2        
        //   144: aconst_null    
        //   145: invokestatic    com/google/android/gms/location/internal/LocationRequestUpdateData.EV:(Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
        //   148: astore_2       
        //   149: aload           5
        //   151: aload_2        
        //   152: invokeinterface com/google/android/gms/location/internal/zzi.zza:(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V
        //   157: goto            26
        //   160: astore_2       
        //   161: aload_1        
        //   162: monitorexit    
        //   163: aload_2        
        //   164: athrow         
        //   165: astore_2       
        //   166: new             Ljava/lang/IllegalStateException;
        //   169: astore          5
        //   171: aload           5
        //   173: aload_2        
        //   174: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/Throwable;)V
        //   177: aload           5
        //   179: athrow         
        //   180: aload_3        
        //   181: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   186: astore_2       
        //   187: aload_2        
        //   188: checkcast       Lcom/google/android/gms/location/internal/d;
        //   191: astore_2       
        //   192: aload_2        
        //   193: ifnull          78
        //   196: aload_0        
        //   197: getfield        com/google/android/gms/location/internal/h.AI:Lcom/google/android/gms/location/internal/r;
        //   200: astore          5
        //   202: aload           5
        //   204: invokeinterface com/google/android/gms/location/internal/r.FN:()Landroid/os/IInterface;
        //   209: astore          5
        //   211: aload           5
        //   213: checkcast       Lcom/google/android/gms/location/internal/zzi;
        //   216: astore          5
        //   218: aload_2        
        //   219: aconst_null    
        //   220: invokestatic    com/google/android/gms/location/internal/LocationRequestUpdateData.EY:(Lcom/google/android/gms/location/zze;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
        //   223: astore_2       
        //   224: aload           5
        //   226: aload_2        
        //   227: invokeinterface com/google/android/gms/location/internal/zzi.zza:(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V
        //   232: goto            78
        //   235: astore_2       
        //   236: aload_1        
        //   237: monitorexit    
        //   238: aload_2        
        //   239: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  0      4      165    180    Landroid/os/RemoteException;
        //  5      7      165    180    Landroid/os/RemoteException;
        //  7      11     160    165    Any
        //  12     18     160    165    Any
        //  19     25     160    165    Any
        //  26     32     160    165    Any
        //  39     43     160    165    Any
        //  44     50     160    165    Any
        //  50     52     160    165    Any
        //  52     56     165    180    Landroid/os/RemoteException;
        //  57     59     165    180    Landroid/os/RemoteException;
        //  59     63     235    240    Any
        //  64     70     235    240    Any
        //  71     77     235    240    Any
        //  78     84     235    240    Any
        //  91     95     235    240    Any
        //  96     102    235    240    Any
        //  102    104    235    240    Any
        //  105    111    160    165    Any
        //  112    116    160    165    Any
        //  121    125    160    165    Any
        //  127    134    160    165    Any
        //  136    141    160    165    Any
        //  144    148    160    165    Any
        //  151    157    160    165    Any
        //  161    163    160    165    Any
        //  163    165    165    180    Landroid/os/RemoteException;
        //  180    186    235    240    Any
        //  187    191    235    240    Any
        //  196    200    235    240    Any
        //  202    209    235    240    Any
        //  211    216    235    240    Any
        //  219    223    235    240    Any
        //  226    232    235    240    Any
        //  236    238    235    240    Any
        //  238    240    165    180    Landroid/os/RemoteException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0078:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void zzcf(final boolean af) {
        this.AI.FM();
        ((zzi)this.AI.FN()).zzcf(af);
        this.AF = af;
    }
}
