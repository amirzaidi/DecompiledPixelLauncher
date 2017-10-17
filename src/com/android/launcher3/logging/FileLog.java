// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.logging;

import com.android.launcher3.Utilities;
import android.os.Handler$Callback;
import android.os.HandlerThread;
import java.io.PrintWriter;
import android.util.Log;
import java.io.File;
import android.os.Handler;
import java.text.DateFormat;

public final class FileLog
{
    private static final DateFormat DATE_FORMAT;
    private static Handler sHandler;
    private static File sLogsDirectory;
    
    static {
        final int n = 3;
        DATE_FORMAT = DateFormat.getDateTimeInstance(n, n);
        FileLog.sHandler = null;
        FileLog.sLogsDirectory = null;
    }
    
    public static void d(final String s, final String s2) {
        Log.d(s, s2);
        print(s, s2);
    }
    
    public static void d(final String s, final String s2, final Exception ex) {
        Log.d(s, s2, (Throwable)ex);
        print(s, s2, ex);
    }
    
    public static void e(final String s, final String s2) {
        Log.e(s, s2);
        print(s, s2);
    }
    
    public static void e(final String s, final String s2, final Exception ex) {
        Log.e(s, s2, (Throwable)ex);
        print(s, s2, ex);
    }
    
    public static void flushAll(final PrintWriter printWriter) {
    }
    
    private static Handler getHandler() {
        synchronized (FileLog.DATE_FORMAT) {
            if (FileLog.sHandler == null) {
                final HandlerThread handlerThread = new HandlerThread("file-logger");
                handlerThread.start();
                FileLog.sHandler = new Handler(handlerThread.getLooper(), (Handler$Callback)new FileLog$LogWriterCallback(null));
            }
            return FileLog.sHandler;
        }
    }
    
    public static void print(final String s, final String s2) {
        print(s, s2, null);
    }
    
    public static void print(final String s, final String s2, final Exception ex) {
    }
    
    public static void setDir(final File sLogsDirectory) {
        Label_0072: {
            if (!Utilities.IS_DEBUG_DEVICE) {
                break Label_0072;
            }
            synchronized (FileLog.DATE_FORMAT) {
                if (FileLog.sHandler != null && (sLogsDirectory.equals(FileLog.sLogsDirectory) ^ true)) {
                    ((HandlerThread)FileLog.sHandler.getLooper().getThread()).quit();
                    FileLog.sHandler = null;
                }
                // monitorexit(FileLog.DATE_FORMAT)
                FileLog.sLogsDirectory = sLogsDirectory;
            }
        }
    }
}
