// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.google.android.apps.nexuslauncher.search.a.d;
import android.app.PendingIntent;
import android.content.ComponentName;
import java.util.Iterator;
import android.view.ViewGroup$LayoutParams;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.util.ComponentKey;
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
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import com.android.launcher3.util.Themes;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.google.android.apps.nexuslauncher.search.a.a;
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

public class f
{
    private final c cl;
    private final NexusLauncherActivity cm;
    private final Bundle cn;
    private boolean co;
    private final e cp;
    private BubbleTextView cq;
    private final boolean cr;
    private final UserManagerCompat mUserManager;
    
    public f(final e cp, final boolean cr) {
        this.cn = new Bundle();
        this.cl = new c();
        this.cp = cp;
        this.cm = this.cp.cb;
        this.cr = cr;
        this.mUserManager = UserManagerCompat.getInstance((Context)this.cm);
    }
    
    public static Intent bV(final Rect sourceBounds, final View view, final View view2) {
        final boolean b = true;
        final Intent intent = new Intent("com.google.nexuslauncher.FAST_TEXT_SEARCH");
        intent.setSourceBounds(sourceBounds);
        if (view2.getVisibility() != 0) {
            intent.putExtra("source_mic_alpha", 0.0f);
        }
        return intent.putExtra("source_round_left", b).putExtra("source_round_right", b).putExtra("source_logo_offset", (Parcelable)cc(view, sourceBounds)).putExtra("source_mic_offset", (Parcelable)cc(view2, sourceBounds)).putExtra("use_fade_animation", b).setPackage("com.google.android.googlequicksearchbox").addFlags(1342177280);
    }
    
    private void bW() {
        if (this.cl.ez != null) {
            return;
        }
        final a en = this.cl.en;
        final a ez = new a();
        ez.ef = en.ef;
        ez.eg = en.eg + en.ee;
        ez.ee = en.ee;
        ez.eh = en.eh;
        this.cl.ez = ez;
    }
    
    private AllAppsRecyclerView bX() {
        return (AllAppsRecyclerView)this.cm.findViewById(2131623979);
    }
    
    private int bY() {
        return android.support.v4.b.a.asf(Themes.getAttrColor((Context)this.cm, 2130772006), android.support.v4.b.a.asb(WallpaperColorInfo.getInstance((Context)this.cm).getMainColor(), 255));
    }
    
    private b bZ(final AppInfo appInfo, final int n) {
        final b b = new b();
        b.label = appInfo.title.toString();
        b.ej = "icon_bitmap_" + n;
        this.cn.putParcelable(b.ej, (Parcelable)appInfo.iconBitmap);
        final Uri dm = AppSearchProvider.dm(appInfo, this.mUserManager);
        b.el = dm.toString();
        b.ek = new Intent("com.google.android.apps.nexuslauncher.search.APP_LAUNCH", dm.buildUpon().appendQueryParameter("predictionRank", Integer.toString(n)).build()).toUri(0);
        return b;
    }
    
    private RemoteViews ca() {
        final int n = 16908310;
        final RemoteViews remoteViews = new RemoteViews(this.cm.getPackageName(), 2130968589);
        final int iconSize = this.cq.getIconSize();
        final int n2 = (this.cq.getWidth() - iconSize) / 2;
        final int paddingTop = this.cq.getPaddingTop();
        final int n3 = this.cq.getHeight() - iconSize - paddingTop;
        remoteViews.setViewPadding(16908294, n2, paddingTop, n2, n3);
        final int min = Math.min((int)(iconSize * 0.12f), Math.min(n2, Math.min(paddingTop, n3)));
        remoteViews.setViewPadding(2131623994, n2 - min, paddingTop - min, n2 - min, n3 - min);
        remoteViews.setTextViewTextSize(n, 0, this.cm.getDeviceProfile().allAppsIconTextSizePx);
        remoteViews.setViewPadding(n, this.cq.getPaddingLeft(), this.cq.getCompoundDrawablePadding() + this.cq.getIconSize(), this.cq.getPaddingRight(), 0);
        return remoteViews;
    }
    
    private RemoteViews cb() {
        final RemoteViews remoteViews = new RemoteViews(this.cm.getPackageName(), 2130968590);
        final int n = this.cp.getHeight() - this.cp.getPaddingTop() - this.cp.getPaddingBottom() + 20;
        final Bitmap mShadowBitmap = this.cp.mShadowBitmap;
        final int n2 = (mShadowBitmap.getWidth() - n) / 2;
        final int n3 = (this.cp.getHeight() - mShadowBitmap.getHeight()) / 2;
        remoteViews.setViewPadding(2131623995, this.cp.getPaddingLeft() - n2, n3, this.cp.getPaddingRight() - n2, n3);
        final Bitmap bitmap = Bitmap.createBitmap(mShadowBitmap, 0, 0, mShadowBitmap.getWidth() / 2, mShadowBitmap.getHeight());
        remoteViews.setImageViewBitmap(2131623996, bitmap);
        remoteViews.setImageViewBitmap(2131623998, bitmap);
        remoteViews.setImageViewBitmap(2131623997, Bitmap.createBitmap(mShadowBitmap, (mShadowBitmap.getWidth() - 20) / 2, 0, 20, mShadowBitmap.getHeight()));
        if (this.cp.cd.getVisibility() != 0) {
            remoteViews.setViewVisibility(2131624001, 4);
        }
        final View viewById = this.cp.findViewById(2131624000);
        int left;
        if (this.cp.getLayoutDirection() == 1) {
            left = this.cp.getWidth() - viewById.getRight();
        }
        else {
            left = viewById.getLeft();
        }
        remoteViews.setViewPadding(2131623999, left, 0, left, 0);
        return remoteViews;
    }
    
    private static Point cc(final View view, final Rect rect) {
        final int[] array = new int[2];
        view.getLocationInWindow(array);
        final Point point = new Point();
        point.x = array[0] - rect.left + view.getWidth() / 2;
        point.y = array[1] - rect.top + view.getHeight() / 2;
        return point;
    }
    
    private void cd() {
        this.cl.ey = "search_box_template";
        this.cn.putParcelable(this.cl.ey, (Parcelable)this.cb());
        this.cl.ew = 2131624000;
        final c cl = this.cl;
        int ex;
        if (this.cp.cd.getVisibility() != 0) {
            ex = 0;
        }
        else {
            ex = 2131624001;
        }
        cl.ex = ex;
        final a viewBounds = getViewBounds((View)this.cm.getDragLayer());
        int eg = this.cl.en.eg;
        if (!this.co) {
            eg += this.cl.en.ee;
        }
        viewBounds.eg += eg;
        viewBounds.ee -= eg;
        this.cl.et = viewBounds;
        final Bitmap bitmap = Bitmap.createBitmap(viewBounds.eh, viewBounds.ee, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap);
        canvas.translate(0.0f, (float)(-eg));
        final AllAppsRecyclerView bx = this.bX();
        final int[] array = { 0, 0 };
        this.cm.getDragLayer().mapCoordInSelfToDescendant((View)bx, array);
        canvas.translate((float)(-array[0]), (float)(-array[1]));
        bx.draw(canvas);
        canvas.setBitmap((Bitmap)null);
        this.cl.eu = "preview_bitmap";
        this.cn.putParcelable(this.cl.eu, (Parcelable)bitmap);
    }
    
    private void ce() {
        int i = 0;
        final AllAppsRecyclerView bx = this.bX();
        final Q spanSizeLookup = ((M)bx.getLayoutManager()).getSpanSizeLookup();
        final int allAppsNumCols = this.cm.getDeviceProfile().allAppsNumCols;
        final int childCount = bx.getChildCount();
        final BubbleTextView[] array = new BubbleTextView[allAppsNumCols];
        int n = -1;
        while (true) {
            for (int j = 0; j < childCount; ++j) {
                final j childViewHolder = bx.getChildViewHolder(bx.getChildAt(j));
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
                                this.cf();
                                return;
                            }
                            this.cq = array[0];
                            this.cl.es = allAppsNumCols;
                            this.co = (bx.getChildViewHolder((View)array[0]).getItemViewType() == 4);
                            a viewBounds = getViewBounds((View)array[allAppsNumCols - 1]);
                            a viewBounds2 = getViewBounds((View)array[0]);
                            if (!Utilities.isRtl(this.cm.getResources())) {
                                final a a = viewBounds2;
                                viewBounds2 = viewBounds;
                                viewBounds = a;
                            }
                            viewBounds.eh = viewBounds2.eh + viewBounds2.ef - viewBounds.ef;
                            this.cl.en = viewBounds;
                            if (!this.co) {
                                viewBounds.eg -= viewBounds.ee;
                            }
                            else if (o != null) {
                                final a viewBounds3 = getViewBounds((View)o);
                                viewBounds3.eh = viewBounds.eh;
                                this.cl.ez = viewBounds3;
                            }
                            this.bW();
                            final List predictedApps = bx.getApps().getPredictedApps();
                            final int min = Math.min(predictedApps.size(), allAppsNumCols);
                            this.cl.eo = new b[min];
                            while (i < min) {
                                this.cl.eo[i] = this.bZ(predictedApps.get(i), i);
                                ++i;
                            }
                            return;
                        }
                        array[((O)childViewHolder.itemView.getLayoutParams()).aaQ()] = (BubbleTextView)childViewHolder.itemView;
                    }
                }
            }
            final Object o = null;
            continue;
        }
    }
    
    private void cf() {
        final int n = 1073741824;
        int n2 = 0;
        this.cl.es = this.cm.getDeviceProfile().allAppsNumCols;
        final int width = this.cm.getHotseat().getWidth();
        final int dimensionPixelSize = this.cm.getResources().getDimensionPixelSize(2131427344);
        final a en = new a();
        en.ef = dimensionPixelSize;
        en.eh = width - dimensionPixelSize - dimensionPixelSize;
        en.ee = this.cm.getDeviceProfile().allAppsCellHeightPx;
        this.cl.en = en;
        this.bW();
        final AlphabeticalAppsList apps = this.bX().getApps();
        this.cq = (BubbleTextView)this.cm.getLayoutInflater().inflate(2130968585, (ViewGroup)this.bX(), false);
        final ViewGroup$LayoutParams layoutParams = this.cq.getLayoutParams();
        layoutParams.height = en.ee;
        layoutParams.width = en.eh / this.cl.es;
        if (!apps.getApps().isEmpty()) {
            this.cq.applyFromApplicationInfo((AppInfo)apps.getApps().get(0));
        }
        this.cq.measure(View$MeasureSpec.makeMeasureSpec(layoutParams.width, n), View$MeasureSpec.makeMeasureSpec(layoutParams.height, n));
        this.cq.layout(0, 0, layoutParams.width, layoutParams.height);
        final ArrayList<b> list = new ArrayList<b>(this.cl.es);
        final Iterator iterator = this.cm.getPredictedApps().iterator();
        while (iterator.hasNext()) {
            final AppInfo app = apps.findApp(iterator.next());
            int n3;
            if (app != null) {
                list.add(this.bZ(app, n2));
                n3 = n2 + 1;
                if (n3 >= this.cl.es) {
                    break;
                }
            }
            else {
                n3 = n2;
            }
            n2 = n3;
        }
        this.cl.eo = list.toArray(new b[list.size()]);
    }
    
    private static a getViewBounds(final View view) {
        final a a = new a();
        a.eh = view.getWidth();
        a.ee = view.getHeight();
        final int[] array = new int[2];
        view.getLocationInWindow(array);
        a.ef = array[0];
        a.eg = array[1];
        return a;
    }
    
    public byte[] build() {
        this.cl.em = this.bY();
        this.cl.eq = Themes.getAttrBoolean((Context)this.cm, 2130772010);
        if (this.cr) {
            this.ce();
        }
        else {
            this.cf();
        }
        this.cl.ep = "icon_view_template";
        this.cn.putParcelable(this.cl.ep, (Parcelable)this.ca());
        this.cl.er = "icon_long_click";
        this.cn.putParcelable(this.cl.er, (Parcelable)PendingIntent.getBroadcast((Context)this.cm, 2055, new Intent().setComponent(new ComponentName((Context)this.cm, (Class)LongClickReceiver.class)), 1207959552));
        LongClickReceiver.bq(this.cm);
        this.cl.ev = getViewBounds((View)this.cp);
        this.cl.eA = this.cr;
        if (this.cr) {
            this.cd();
        }
        final d d = new d();
        d.eB = this.cl;
        return com.google.protobuf.nano.a.toByteArray(d);
    }
    
    public Bundle getExtras() {
        return this.cn;
    }
}
