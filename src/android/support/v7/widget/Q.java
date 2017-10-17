// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.List;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.support.v4.os.b;

public abstract class q
{
    private boolean mHasStableIds;
    private final f mObservable;
    
    public q() {
        this.mObservable = new f();
        this.mHasStableIds = false;
    }
    
    public final void bindViewHolder(final j j, final int mPosition) {
        final int qi = 1;
        j.mPosition = mPosition;
        if (this.hasStableIds()) {
            j.mItemId = this.getItemId(mPosition);
        }
        j.setFlags(qi, 519);
        b.asr("RV OnBindView");
        this.onBindViewHolder(j, mPosition, j.getUnmodifiedPayloads());
        j.clearPayload();
        final ViewGroup$LayoutParams layoutParams = j.itemView.getLayoutParams();
        if (layoutParams instanceof i) {
            ((i)layoutParams).QI = (qi != 0);
        }
        b.asq();
    }
    
    public final j createViewHolder(final ViewGroup viewGroup, final int mItemViewType) {
        b.asr("RV CreateView");
        final j onCreateViewHolder = this.onCreateViewHolder(viewGroup, mItemViewType);
        onCreateViewHolder.mItemViewType = mItemViewType;
        b.asq();
        return onCreateViewHolder;
    }
    
    public abstract int getItemCount();
    
    public long getItemId(final int n) {
        return -1;
    }
    
    public int getItemViewType(final int n) {
        return 0;
    }
    
    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }
    
    public final void notifyDataSetChanged() {
        this.mObservable.XQ();
    }
    
    public final void notifyItemChanged(final int n) {
        this.mObservable.XP(n, 1);
    }
    
    public void onAttachedToRecyclerView(final RecyclerView recyclerView) {
    }
    
    public abstract void onBindViewHolder(final j p0, final int p1);
    
    public void onBindViewHolder(final j j, final int n, final List list) {
        this.onBindViewHolder(j, n);
    }
    
    public abstract j onCreateViewHolder(final ViewGroup p0, final int p1);
    
    public void onDetachedFromRecyclerView(final RecyclerView recyclerView) {
    }
    
    public boolean onFailedToRecycleView(final j j) {
        return false;
    }
    
    public void onViewAttachedToWindow(final j j) {
    }
    
    public void onViewDetachedFromWindow(final j j) {
    }
    
    public void onViewRecycled(final j j) {
    }
    
    public void registerAdapterDataObserver(final h h) {
        this.mObservable.registerObserver((Object)h);
    }
    
    public void unregisterAdapterDataObserver(final h h) {
        this.mObservable.unregisterObserver((Object)h);
    }
}
