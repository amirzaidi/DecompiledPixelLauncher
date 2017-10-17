// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcelable;
import java.util.List;
import java.util.ArrayList;
import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$SearchResultReceiver extends ResultReceiver
{
    private final c afq;
    private final Bundle afr;
    private final String mQuery;
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
        int i = 0;
        List<MediaBrowserCompat$MediaItem> list = null;
        if (bundle != null) {
            bundle.setClassLoader(e.class.getClassLoader());
        }
        if (n == 0 && bundle != null && bundle.containsKey("search_results")) {
            final Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            if (parcelableArray != null) {
                final ArrayList<MediaBrowserCompat$MediaItem> list2 = new ArrayList<MediaBrowserCompat$MediaItem>();
                while (i < parcelableArray.length) {
                    list2.add((MediaBrowserCompat$MediaItem)parcelableArray[i]);
                    ++i;
                }
                list = list2;
            }
            this.afq.asd(this.mQuery, this.afr, list);
            return;
        }
        this.afq.ase(this.mQuery, this.afr);
    }
}
