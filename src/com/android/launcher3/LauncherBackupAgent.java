// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.Context;
import com.android.launcher3.provider.RestoreDbTask;
import android.app.backup.BackupDataInput;
import com.android.launcher3.logging.FileLog;
import android.app.backup.BackupDataOutput;
import android.os.ParcelFileDescriptor;
import android.app.backup.BackupAgent;

public class LauncherBackupAgent extends BackupAgent
{
    public void onBackup(final ParcelFileDescriptor parcelFileDescriptor, final BackupDataOutput backupDataOutput, final ParcelFileDescriptor parcelFileDescriptor2) {
    }
    
    public void onCreate() {
        super.onCreate();
        FileLog.setDir(this.getFilesDir());
    }
    
    public void onRestore(final BackupDataInput backupDataInput, final int n, final ParcelFileDescriptor parcelFileDescriptor) {
    }
    
    public void onRestoreFinished() {
        RestoreDbTask.setPending((Context)this, true);
    }
}
