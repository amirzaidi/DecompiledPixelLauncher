// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.logging;

import com.android.launcher3.Utilities;
import android.os.HandlerThread;
import android.util.Log;
import java.io.File;
import android.os.Handler;
import java.text.DateFormat;
import android.os.Message;
import java.io.PrintWriter;
import android.os.Handler$Callback;

class FileLog$LogWriterCallback implements Handler$Callback
{
    private String mCurrentFileName;
    private PrintWriter mCurrentWriter;
    
    private FileLog$LogWriterCallback() {
        this.mCurrentFileName = null;
        this.mCurrentWriter = null;
    }
    
    public boolean handleMessage(final Message message) {
        FileLog.sLogsDirectory;
        return true;
    }
}
