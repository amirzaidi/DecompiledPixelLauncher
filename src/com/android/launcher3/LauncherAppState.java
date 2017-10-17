// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.concurrent.Future;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Callable;
import android.os.Looper;
import com.android.launcher3.dynamicui.ExtractionUtils;
import com.android.launcher3.util.ConfigMonitor;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.util.Preconditions;
import android.util.Log;
import android.content.Context;

public class LauncherAppState
{
    private static LauncherAppState INSTANCE;
    private final Context mContext;
    private final IconCache mIconCache;
    private final InvariantDeviceProfile mInvariantDeviceProfile;
    private final LauncherModel mModel;
    private final WidgetPreviewLoader mWidgetCache;
    
    private LauncherAppState(final Context mContext) {
        if (getLocalProvider(mContext) == null) {
            throw new RuntimeException("Initializing LauncherAppState in the absence of LauncherProvider");
        }
        Log.v("Launcher", "LauncherAppState initiated");
        Preconditions.assertUIThread();
        this.mContext = mContext;
        this.mInvariantDeviceProfile = new InvariantDeviceProfile(this.mContext);
        this.mIconCache = new IconCache(this.mContext, this.mInvariantDeviceProfile);
        this.mWidgetCache = new WidgetPreviewLoader(this.mContext, this.mIconCache);
        this.mModel = new LauncherModel(this, this.mIconCache, (AppFilter)Utilities.getOverrideObject(AppFilter.class, this.mContext, 2131492887));
        LauncherAppsCompat.getInstance(this.mContext).addOnAppsChangedCallback(this.mModel);
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_ADDED");
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_REMOVED");
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_AVAILABLE");
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_UNLOCKED");
        if (Utilities.ATLEAST_NOUGAT) {
            intentFilter.addAction("android.intent.action.WALLPAPER_CHANGED");
        }
        this.mContext.registerReceiver((BroadcastReceiver)this.mModel, intentFilter);
        UserManagerCompat.getInstance(this.mContext).enableAndResetCache();
        new ConfigMonitor(this.mContext).register();
        ExtractionUtils.startColorExtractionServiceIfNecessary(this.mContext);
    }
    
    public static InvariantDeviceProfile getIDP(final Context context) {
        return getInstance(context).getInvariantDeviceProfile();
    }
    
    public static LauncherAppState getInstance(final Context context) {
        if (LauncherAppState.INSTANCE == null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                LauncherAppState.INSTANCE = new LauncherAppState(context.getApplicationContext());
            }
            else {
                try {
                    try {
                        final MainThreadExecutor mainThreadExecutor = new MainThreadExecutor();
                        final LauncherAppState$1 launcherAppState$1 = new LauncherAppState$1(context);
                        final MainThreadExecutor mainThreadExecutor2 = mainThreadExecutor;
                        try {
                            final Future<LauncherAppState> submit = mainThreadExecutor2.submit((Callable<LauncherAppState>)launcherAppState$1);
                            try {
                                final LauncherAppState value = submit.get();
                                try {
                                    return value;
                                }
                                catch (InterruptedException | ExecutionException ex) {
                                    final Object o;
                                    throw new RuntimeException((Throwable)o);
                                }
                            }
                            catch (InterruptedException ex2) {}
                            catch (ExecutionException ex3) {}
                        }
                        catch (InterruptedException ex4) {}
                        catch (ExecutionException ex5) {}
                    }
                    catch (InterruptedException ex6) {}
                    catch (ExecutionException ex7) {}
                }
                catch (InterruptedException ex8) {}
                catch (ExecutionException ex9) {}
            }
        }
        return LauncherAppState.INSTANCE;
    }
    
    public static LauncherAppState getInstanceNoCreate() {
        return LauncherAppState.INSTANCE;
    }
    
    private static LauncherProvider getLocalProvider(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //     6: astore_2       
        //     7: getstatic       com/android/launcher3/LauncherProvider.AUTHORITY:Ljava/lang/String;
        //    10: astore_3       
        //    11: aload_2        
        //    12: aload_3        
        //    13: invokevirtual   android/content/ContentResolver.acquireContentProviderClient:(Ljava/lang/String;)Landroid/content/ContentProviderClient;
        //    16: astore_3       
        //    17: aload_3        
        //    18: invokevirtual   android/content/ContentProviderClient.getLocalContentProvider:()Landroid/content/ContentProvider;
        //    21: astore_2       
        //    22: aload_2        
        //    23: checkcast       Lcom/android/launcher3/LauncherProvider;
        //    26: astore_2       
        //    27: aload_3        
        //    28: ifnull          35
        //    31: aload_3        
        //    32: invokevirtual   android/content/ContentProviderClient.close:()V
        //    35: aload_1        
        //    36: ifnull          45
        //    39: aload_1        
        //    40: athrow         
        //    41: astore_1       
        //    42: goto            35
        //    45: aload_2        
        //    46: areturn        
        //    47: astore_2       
        //    48: aconst_null    
        //    49: astore_3       
        //    50: aload_2        
        //    51: athrow         
        //    52: astore          4
        //    54: aload_2        
        //    55: astore_1       
        //    56: aload           4
        //    58: astore_2       
        //    59: aload_3        
        //    60: ifnull          67
        //    63: aload_3        
        //    64: invokevirtual   android/content/ContentProviderClient.close:()V
        //    67: aload_1        
        //    68: ifnull          96
        //    71: aload_1        
        //    72: athrow         
        //    73: astore_3       
        //    74: aload_1        
        //    75: ifnonnull       83
        //    78: aload_3        
        //    79: astore_1       
        //    80: goto            67
        //    83: aload_1        
        //    84: aload_3        
        //    85: if_acmpeq       67
        //    88: aload_1        
        //    89: aload_3        
        //    90: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //    93: goto            67
        //    96: aload_2        
        //    97: athrow         
        //    98: astore_2       
        //    99: goto            50
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  2      6      47     52     Any
        //  7      10     47     52     Any
        //  12     16     47     52     Any
        //  17     21     98     52     Any
        //  22     26     98     52     Any
        //  31     35     41     45     Any
        //  50     52     52     98     Any
        //  63     67     73     96     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        //     at java.util.Arrays.copyOf(Unknown Source)
        //     at java.util.ArrayList.grow(Unknown Source)
        //     at java.util.ArrayList.ensureExplicitCapacity(Unknown Source)
        //     at java.util.ArrayList.ensureCapacityInternal(Unknown Source)
        //     at java.util.ArrayList.add(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.collectNodes(AstBuilder.java:4624)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.processFinally(AstBuilder.java:4354)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.runCore(AstBuilder.java:4317)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.run(AstBuilder.java:4277)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:100)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    public Context getContext() {
        return this.mContext;
    }
    
    public IconCache getIconCache() {
        return this.mIconCache;
    }
    
    public InvariantDeviceProfile getInvariantDeviceProfile() {
        return this.mInvariantDeviceProfile;
    }
    
    public LauncherModel getModel() {
        return this.mModel;
    }
    
    public WidgetPreviewLoader getWidgetCache() {
        return this.mWidgetCache;
    }
    
    LauncherModel setLauncher(final Launcher launcherProviderChangeListener) {
        getLocalProvider(this.mContext).setLauncherProviderChangeListener(launcherProviderChangeListener);
        this.mModel.initialize(launcherProviderChangeListener);
        return this.mModel;
    }
}
