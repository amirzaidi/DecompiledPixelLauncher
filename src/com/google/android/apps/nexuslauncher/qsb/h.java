// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.google.android.apps.nexuslauncher.search.a.d;
import android.app.PendingIntent;
import android.content.ComponentName;
import com.android.launcher3.util.Themes;
import java.util.Iterator;
import android.view.ViewGroup$LayoutParams;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.util.ComponentKeyMapper;
import java.util.ArrayList;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import java.util.List;
import android.support.v7.widget.j;
import android.support.v7.widget.Q;
import android.support.v7.widget.O;
import com.android.launcher3.Utilities;
import android.util.Log;
import android.support.v7.widget.M;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.graphics.Point;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import android.net.Uri;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import com.google.android.apps.nexuslauncher.search.a.b;
import com.android.launcher3.AppInfo;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.os.Parcelable;
import android.content.Intent;
import android.view.View;
import android.graphics.Rect;
import android.content.Context;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.BubbleTextView;
import android.os.Bundle;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.search.a.c;

public class h
{
    private final c cV;
    private final NexusLauncherActivity cW;
    private final Bundle cX;
    private boolean cY;
    private final a cZ;
    private BubbleTextView da;
    private final boolean db;
    private final UserManagerCompat mUserManager;
    
    public h(final a cz, final boolean db) {
        this.cX = new Bundle();
        this.cV = new c();
        this.cZ = cz;
        this.cW = this.cZ.cr;
        this.db = db;
        this.mUserManager = UserManagerCompat.getInstance((Context)this.cW);
    }
    
    public static Intent cS(final Rect sourceBounds, final View view, final View view2) {
        final boolean b = true;
        final Intent intent = new Intent("com.google.nexuslauncher.FAST_TEXT_SEARCH");
        intent.setSourceBounds(sourceBounds);
        if (view2.getVisibility() != 0) {
            intent.putExtra("source_mic_alpha", 0.0f);
        }
        return intent.putExtra("source_round_left", b).putExtra("source_round_right", b).putExtra("source_logo_offset", (Parcelable)da(view, sourceBounds)).putExtra("source_mic_offset", (Parcelable)da(view2, sourceBounds)).putExtra("use_fade_animation", b).setPackage("com.google.android.googlequicksearchbox").addFlags(1342177280);
    }
    
    public static int cT(final WallpaperColorInfo wallpaperColorInfo, final Context context, final int n) {
        return de(android.support.v4.b.a.aeC(wallpaperColorInfo.getMainColor(), n), context);
    }
    
    public static int cU(final WallpaperColorInfo wallpaperColorInfo, final Context context, final int n) {
        return de(android.support.v4.b.a.aeC(wallpaperColorInfo.getSecondaryColor(), n), context);
    }
    
    private void cV() {
        if (this.cV.fB != null) {
            return;
        }
        final com.google.android.apps.nexuslauncher.search.a.a fp = this.cV.fp;
        final com.google.android.apps.nexuslauncher.search.a.a fb = new com.google.android.apps.nexuslauncher.search.a.a();
        fb.fh = fp.fh;
        fb.fi = fp.fi + fp.fg;
        fb.fg = fp.fg;
        fb.fj = fp.fj;
        this.cV.fB = fb;
    }
    
    private AllAppsRecyclerView cW() {
        return (AllAppsRecyclerView)this.cW.findViewById(2131623979);
    }
    
    private b cX(final AppInfo appInfo, final int n) {
        final b b = new b();
        b.label = appInfo.title.toString();
        b.fl = "icon_bitmap_" + n;
        this.cX.putParcelable(b.fl, (Parcelable)appInfo.iconBitmap);
        final Uri eu = AppSearchProvider.eu(appInfo, this.mUserManager);
        b.fn = eu.toString();
        b.fm = new Intent("com.google.android.apps.nexuslauncher.search.APP_LAUNCH", eu.buildUpon().appendQueryParameter("predictionRank", Integer.toString(n)).build()).toUri(0);
        return b;
    }
    
    private RemoteViews cY() {
        final int n = 16908310;
        final RemoteViews remoteViews = new RemoteViews(this.cW.getPackageName(), 2130968589);
        final int iconSize = this.da.getIconSize();
        final int n2 = (this.da.getWidth() - iconSize) / 2;
        final int paddingTop = this.da.getPaddingTop();
        final int n3 = this.da.getHeight() - iconSize - paddingTop;
        remoteViews.setViewPadding(16908294, n2, paddingTop, n2, n3);
        final int min = Math.min((int)(iconSize * 0.12f), Math.min(n2, Math.min(paddingTop, n3)));
        remoteViews.setViewPadding(2131623994, n2 - min, paddingTop - min, n2 - min, n3 - min);
        remoteViews.setTextViewTextSize(n, 0, this.cW.getDeviceProfile().allAppsIconTextSizePx);
        remoteViews.setViewPadding(n, this.da.getPaddingLeft(), this.da.getCompoundDrawablePadding() + this.da.getIconSize(), this.da.getPaddingRight(), 0);
        return remoteViews;
    }
    
    private RemoteViews cZ() {
        final RemoteViews remoteViews = new RemoteViews(this.cW.getPackageName(), 2130968590);
        final int n = this.cZ.getHeight() - this.cZ.getPaddingTop() - this.cZ.getPaddingBottom() + 20;
        final Bitmap mShadowBitmap = this.cZ.mShadowBitmap;
        final int n2 = (mShadowBitmap.getWidth() - n) / 2;
        final int n3 = (this.cZ.getHeight() - mShadowBitmap.getHeight()) / 2;
        remoteViews.setViewPadding(2131623995, this.cZ.getPaddingLeft() - n2, n3, this.cZ.getPaddingRight() - n2, n3);
        final Bitmap bitmap = Bitmap.createBitmap(mShadowBitmap, 0, 0, mShadowBitmap.getWidth() / 2, mShadowBitmap.getHeight());
        remoteViews.setImageViewBitmap(2131623996, bitmap);
        remoteViews.setImageViewBitmap(2131623998, bitmap);
        remoteViews.setImageViewBitmap(2131623997, Bitmap.createBitmap(mShadowBitmap, (mShadowBitmap.getWidth() - 20) / 2, 0, 20, mShadowBitmap.getHeight()));
        if (this.cZ.cs.getVisibility() != 0) {
            remoteViews.setViewVisibility(2131624001, 4);
        }
        final View viewById = this.cZ.findViewById(2131624000);
        int left;
        if (this.cZ.getLayoutDirection() == 1) {
            left = this.cZ.getWidth() - viewById.getRight();
        }
        else {
            left = viewById.getLeft();
        }
        remoteViews.setViewPadding(2131623999, left, 0, left, 0);
        return remoteViews;
    }
    
    private static Point da(final View view, final Rect rect) {
        final int[] array = new int[2];
        view.getLocationInWindow(array);
        final Point point = new Point();
        point.x = array[0] - rect.left + view.getWidth() / 2;
        point.y = array[1] - rect.top + view.getHeight() / 2;
        return point;
    }
    
    private void db() {
        this.cV.fA = "search_box_template";
        this.cX.putParcelable(this.cV.fA, (Parcelable)this.cZ());
        this.cV.fy = 2131624000;
        final c cv = this.cV;
        int fz;
        if (this.cZ.cs.getVisibility() != 0) {
            fz = 0;
        }
        else {
            fz = 2131624001;
        }
        cv.fz = fz;
        final com.google.android.apps.nexuslauncher.search.a.a viewBounds = getViewBounds((View)this.cW.getDragLayer());
        int fi = this.cV.fp.fi;
        if (!this.cY) {
            fi += this.cV.fp.fg;
        }
        viewBounds.fi += fi;
        viewBounds.fg -= fi;
        this.cV.fv = viewBounds;
        final Bitmap bitmap = Bitmap.createBitmap(viewBounds.fj, viewBounds.fg, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap);
        canvas.translate(0.0f, (float)(-fi));
        final AllAppsRecyclerView cw = this.cW();
        final int[] array = { 0, 0 };
        this.cW.getDragLayer().mapCoordInSelfToDescendant((View)cw, array);
        canvas.translate((float)(-array[0]), (float)(-array[1]));
        cw.draw(canvas);
        canvas.setBitmap((Bitmap)null);
        this.cV.fw = "preview_bitmap";
        this.cX.putParcelable(this.cV.fw, (Parcelable)bitmap);
    }
    
    private void dc() {
        int i = 0;
        final AllAppsRecyclerView cw = this.cW();
        final Q spanSizeLookup = ((M)cw.getLayoutManager()).getSpanSizeLookup();
        final int allAppsNumCols = this.cW.getDeviceProfile().allAppsNumCols;
        final int childCount = cw.getChildCount();
        final BubbleTextView[] array = new BubbleTextView[allAppsNumCols];
        int n = -1;
        while (true) {
            for (int j = 0; j < childCount; ++j) {
                final j childViewHolder = cw.getChildViewHolder(cw.getChildAt(j));
                if (childViewHolder.itemView instanceof BubbleTextView) {
                    final int spanGroupIndex = spanSizeLookup.getSpanGroupIndex(childViewHolder.getLayoutPosition(), allAppsNumCols);
                    if (spanGroupIndex >= 0) {
                        if (n < 0) {
                            n = spanGroupIndex;
                        }
                        else if (spanGroupIndex != n) {
                            final Object o = childViewHolder.itemView;
                            if (array[0] == null) {
                                Log.e("ConfigBuilder", "No icons rendered in all apps");
                                this.dd();
                                return;
                            }
                            this.da = array[0];
                            this.cV.fu = allAppsNumCols;
                            this.cY = (cw.getChildViewHolder((View)array[0]).getItemViewType() == 4);
                            com.google.android.apps.nexuslauncher.search.a.a viewBounds = getViewBounds((View)array[allAppsNumCols - 1]);
                            com.google.android.apps.nexuslauncher.search.a.a viewBounds2 = getViewBounds((View)array[0]);
                            if (!Utilities.isRtl(this.cW.getResources())) {
                                final com.google.android.apps.nexuslauncher.search.a.a a = viewBounds2;
                                viewBounds2 = viewBounds;
                                viewBounds = a;
                            }
                            viewBounds.fj = viewBounds2.fj + viewBounds2.fh - viewBounds.fh;
                            this.cV.fp = viewBounds;
                            if (!this.cY) {
                                viewBounds.fi -= viewBounds.fg;
                            }
                            else if (o != null) {
                                final com.google.android.apps.nexuslauncher.search.a.a viewBounds3 = getViewBounds((View)o);
                                viewBounds3.fj = viewBounds.fj;
                                this.cV.fB = viewBounds3;
                            }
                            this.cV();
                            final List predictedApps = cw.getApps().getPredictedApps();
                            final int min = Math.min(predictedApps.size(), allAppsNumCols);
                            this.cV.fq = new b[min];
                            while (i < min) {
                                this.cV.fq[i] = this.cX(predictedApps.get(i), i);
                                ++i;
                            }
                            return;
                        }
                        array[((O)childViewHolder.itemView.getLayoutParams()).Nl()] = (BubbleTextView)childViewHolder.itemView;
                    }
                }
            }
            final Object o = null;
            continue;
        }
    }
    
    private void dd() {
        final int n = 1073741824;
        int n2 = 0;
        this.cV.fu = this.cW.getDeviceProfile().allAppsNumCols;
        final int width = this.cW.getHotseat().getWidth();
        final int dimensionPixelSize = this.cW.getResources().getDimensionPixelSize(2131427344);
        final com.google.android.apps.nexuslauncher.search.a.a fp = new com.google.android.apps.nexuslauncher.search.a.a();
        fp.fh = dimensionPixelSize;
        fp.fj = width - dimensionPixelSize - dimensionPixelSize;
        fp.fg = this.cW.getDeviceProfile().allAppsCellHeightPx;
        this.cV.fp = fp;
        this.cV();
        final AlphabeticalAppsList apps = this.cW().getApps();
        this.da = (BubbleTextView)this.cW.getLayoutInflater().inflate(2130968585, (ViewGroup)this.cW(), false);
        final ViewGroup$LayoutParams layoutParams = this.da.getLayoutParams();
        layoutParams.height = fp.fg;
        layoutParams.width = fp.fj / this.cV.fu;
        if (!apps.getApps().isEmpty()) {
            this.da.applyFromApplicationInfo((AppInfo)apps.getApps().get(0));
        }
        this.da.measure(View$MeasureSpec.makeMeasureSpec(layoutParams.width, n), View$MeasureSpec.makeMeasureSpec(layoutParams.height, n));
        this.da.layout(0, 0, layoutParams.width, layoutParams.height);
        final ArrayList<b> list = new ArrayList<b>(this.cV.fu);
        final Iterator iterator = this.cW.getPredictedApps().iterator();
        while (iterator.hasNext()) {
            final AppInfo app = apps.findApp(iterator.next());
            int n3;
            if (app != null) {
                list.add(this.cX(app, n2));
                n3 = n2 + 1;
                if (n3 >= this.cV.fu) {
                    break;
                }
            }
            else {
                n3 = n2;
            }
            n2 = n3;
        }
        this.cV.fq = list.toArray(new b[list.size()]);
    }
    
    private static int de(final int n, final Context context) {
        return android.support.v4.b.a.aeG(Themes.getAttrColor(context, 2130772006), n);
    }
    
    private static com.google.android.apps.nexuslauncher.search.a.a getViewBounds(final View view) {
        final com.google.android.apps.nexuslauncher.search.a.a a = new com.google.android.apps.nexuslauncher.search.a.a();
        a.fj = view.getWidth();
        a.fg = view.getHeight();
        final int[] array = new int[2];
        view.getLocationInWindow(array);
        a.fh = array[0];
        a.fi = array[1];
        return a;
    }
    
    public byte[] build() {
        this.cV.fo = cT(WallpaperColorInfo.getInstance((Context)this.cW), (Context)this.cW, 255);
        this.cV.fs = Themes.getAttrBoolean((Context)this.cW, 2130772011);
        if (this.db) {
            this.dc();
        }
        else {
            this.dd();
        }
        this.cV.fr = "icon_view_template";
        this.cX.putParcelable(this.cV.fr, (Parcelable)this.cY());
        this.cV.ft = "icon_long_click";
        this.cX.putParcelable(this.cV.ft, (Parcelable)PendingIntent.getBroadcast((Context)this.cW, 2055, new Intent().setComponent(new ComponentName((Context)this.cW, (Class)LongClickReceiver.class)), 1207959552));
        LongClickReceiver.cA(this.cW);
        this.cV.fx = getViewBounds((View)this.cZ);
        this.cV.fC = this.db;
        if (this.db) {
            this.db();
        }
        final d d = new d();
        d.fD = this.cV;
        return com.google.protobuf.nano.a.toByteArray(d);
    }
    
    public Bundle getExtras() {
        return this.cX;
    }
}
