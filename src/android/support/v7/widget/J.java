// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.util.Log;
import android.support.v4.view.f;
import java.util.ArrayList;
import java.util.Collections;
import java.lang.ref.WeakReference;
import android.view.View;
import java.util.List;

public abstract class j
{
    private static final List FULLUPDATE_PAYLOADS;
    public final View itemView;
    private int mFlags;
    private boolean mInChangeScrap;
    private int mIsRecyclableCount;
    long mItemId;
    int mItemViewType;
    WeakReference mNestedRecyclerView;
    int mOldPosition;
    RecyclerView mOwnerRecyclerView;
    List mPayloads;
    int mPendingAccessibilityState;
    int mPosition;
    int mPreLayoutPosition;
    private s mScrapContainer;
    j mShadowedHolder;
    j mShadowingHolder;
    List mUnmodifiedPayloads;
    private int mWasImportantForAccessibilityBeforeHidden;
    
    static {
        FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
    }
    
    public j(final View itemView) {
        final int mPendingAccessibilityState = -1;
        this.mPosition = mPendingAccessibilityState;
        this.mOldPosition = mPendingAccessibilityState;
        this.mItemId = -1;
        this.mItemViewType = mPendingAccessibilityState;
        this.mPreLayoutPosition = mPendingAccessibilityState;
        this.mShadowedHolder = null;
        this.mShadowingHolder = null;
        this.mPayloads = null;
        this.mUnmodifiedPayloads = null;
        this.mIsRecyclableCount = 0;
        this.mScrapContainer = null;
        this.mInChangeScrap = false;
        this.mWasImportantForAccessibilityBeforeHidden = 0;
        this.mPendingAccessibilityState = mPendingAccessibilityState;
        if (itemView != null) {
            this.itemView = itemView;
            return;
        }
        throw new IllegalArgumentException("itemView may not be null");
    }
    
    private void createPayloadsIfNeeded() {
        if (this.mPayloads == null) {
            this.mPayloads = new ArrayList();
            this.mUnmodifiedPayloads = Collections.unmodifiableList((List<?>)this.mPayloads);
        }
    }
    
    private boolean doesTransientStatePreventRecycling() {
        boolean b = false;
        if ((this.mFlags & 0x10) == 0x0 && f.agJ(this.itemView)) {
            b = true;
        }
        return b;
    }
    
    private void onEnteredHiddenState(final RecyclerView recyclerView) {
        this.mWasImportantForAccessibilityBeforeHidden = f.agA(this.itemView);
        recyclerView.setChildImportantForAccessibilityInternal(this, 4);
    }
    
    private void onLeftHiddenState(final RecyclerView recyclerView) {
        recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
        this.mWasImportantForAccessibilityBeforeHidden = 0;
    }
    
    private boolean shouldBeKeptAsChild() {
        boolean b = false;
        if ((this.mFlags & 0x10) != 0x0) {
            b = true;
        }
        return b;
    }
    
    void addChangePayload(final Object o) {
        if (o != null) {
            if ((this.mFlags & 0x400) == 0x0) {
                this.createPayloadsIfNeeded();
                this.mPayloads.add(o);
            }
        }
        else {
            this.addFlags(1024);
        }
    }
    
    void addFlags(final int n) {
        this.mFlags |= n;
    }
    
    void clearOldPosition() {
        final int n = -1;
        this.mOldPosition = n;
        this.mPreLayoutPosition = n;
    }
    
    void clearPayload() {
        if (this.mPayloads != null) {
            this.mPayloads.clear();
        }
        this.mFlags &= 0xFFFFFBFF;
    }
    
    void clearReturnedFromScrapFlag() {
        this.mFlags &= 0xFFFFFFDF;
    }
    
    void clearTmpDetachFlag() {
        this.mFlags &= 0xFFFFFEFF;
    }
    
    void flagRemovedAndOffsetPosition(final int mPosition, final int n, final boolean b) {
        this.addFlags(8);
        this.offsetPosition(n, b);
        this.mPosition = mPosition;
    }
    
    public final int getAdapterPosition() {
        if (this.mOwnerRecyclerView != null) {
            return this.mOwnerRecyclerView.getAdapterPositionFor(this);
        }
        return -1;
    }
    
    public final long getItemId() {
        return this.mItemId;
    }
    
    public final int getItemViewType() {
        return this.mItemViewType;
    }
    
    public final int getLayoutPosition() {
        int n;
        if (this.mPreLayoutPosition != -1) {
            n = this.mPreLayoutPosition;
        }
        else {
            n = this.mPosition;
        }
        return n;
    }
    
    public final int getOldPosition() {
        return this.mOldPosition;
    }
    
    List getUnmodifiedPayloads() {
        if ((this.mFlags & 0x400) != 0x0) {
            return j.FULLUPDATE_PAYLOADS;
        }
        if (this.mPayloads != null && this.mPayloads.size() != 0) {
            return this.mUnmodifiedPayloads;
        }
        return j.FULLUPDATE_PAYLOADS;
    }
    
    boolean hasAnyOfTheFlags(final int n) {
        boolean b = false;
        if ((this.mFlags & n) != 0x0) {
            b = true;
        }
        return b;
    }
    
    boolean isAdapterPositionUnknown() {
        boolean b = false;
        if ((this.mFlags & 0x200) != 0x0 || this.isInvalid()) {
            b = true;
        }
        return b;
    }
    
    boolean isBound() {
        boolean b = false;
        if ((this.mFlags & 0x1) != 0x0) {
            b = true;
        }
        return b;
    }
    
    boolean isInvalid() {
        boolean b = false;
        if ((this.mFlags & 0x4) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public final boolean isRecyclable() {
        boolean b = false;
        if ((this.mFlags & 0x10) == 0x0 && !f.agJ(this.itemView)) {
            b = true;
        }
        return b;
    }
    
    boolean isRemoved() {
        boolean b = false;
        if ((this.mFlags & 0x8) != 0x0) {
            b = true;
        }
        return b;
    }
    
    boolean isScrap() {
        return this.mScrapContainer != null;
    }
    
    boolean isTmpDetached() {
        boolean b = false;
        if ((this.mFlags & 0x100) != 0x0) {
            b = true;
        }
        return b;
    }
    
    boolean isUpdated() {
        boolean b = false;
        if ((this.mFlags & 0x2) != 0x0) {
            b = true;
        }
        return b;
    }
    
    boolean needsUpdate() {
        boolean b = false;
        if ((this.mFlags & 0x2) != 0x0) {
            b = true;
        }
        return b;
    }
    
    void offsetPosition(final int n, final boolean b) {
        final int n2 = -1;
        if (this.mOldPosition == n2) {
            this.mOldPosition = this.mPosition;
        }
        if (this.mPreLayoutPosition == n2) {
            this.mPreLayoutPosition = this.mPosition;
        }
        if (b) {
            this.mPreLayoutPosition += n;
        }
        this.mPosition += n;
        if (this.itemView.getLayoutParams() != null) {
            ((i)this.itemView.getLayoutParams()).QI = true;
        }
    }
    
    void resetInternal() {
        final int n = -1;
        this.mFlags = 0;
        this.mPosition = n;
        this.mOldPosition = n;
        this.mItemId = -1;
        this.mPreLayoutPosition = n;
        this.mIsRecyclableCount = 0;
        this.mShadowedHolder = null;
        this.mShadowingHolder = null;
        this.clearPayload();
        this.mWasImportantForAccessibilityBeforeHidden = 0;
        this.mPendingAccessibilityState = n;
        RecyclerView.clearNestedRecyclerViewIfNotNested(this);
    }
    
    void saveOldPosition() {
        if (this.mOldPosition == -1) {
            this.mOldPosition = this.mPosition;
        }
    }
    
    void setFlags(final int n, final int n2) {
        this.mFlags = ((this.mFlags & ~n2) | (n & n2));
    }
    
    public final void setIsRecyclable(final boolean b) {
        int mIsRecyclableCount;
        if (!b) {
            mIsRecyclableCount = this.mIsRecyclableCount + 1;
        }
        else {
            mIsRecyclableCount = this.mIsRecyclableCount - 1;
        }
        this.mIsRecyclableCount = mIsRecyclableCount;
        if (this.mIsRecyclableCount >= 0) {
            if (!b && this.mIsRecyclableCount == 1) {
                this.mFlags |= 0x10;
            }
            else if (b && this.mIsRecyclableCount == 0) {
                this.mFlags &= 0xFFFFFFEF;
            }
        }
        else {
            this.mIsRecyclableCount = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        }
    }
    
    void setScrapContainer(final s mScrapContainer, final boolean mInChangeScrap) {
        this.mScrapContainer = mScrapContainer;
        this.mInChangeScrap = mInChangeScrap;
    }
    
    boolean shouldIgnore() {
        boolean b = false;
        if ((this.mFlags & 0x80) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(this.hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
        if (this.isScrap()) {
            final StringBuilder append = sb.append(" scrap ");
            String s;
            if (!this.mInChangeScrap) {
                s = "[attachedScrap]";
            }
            else {
                s = "[changeScrap]";
            }
            append.append(s);
        }
        if (this.isInvalid()) {
            sb.append(" invalid");
        }
        if (!this.isBound()) {
            sb.append(" unbound");
        }
        if (this.needsUpdate()) {
            sb.append(" update");
        }
        if (this.isRemoved()) {
            sb.append(" removed");
        }
        if (this.shouldIgnore()) {
            sb.append(" ignored");
        }
        if (this.isTmpDetached()) {
            sb.append(" tmpDetached");
        }
        if (!this.isRecyclable()) {
            sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
        }
        if (this.isAdapterPositionUnknown()) {
            sb.append(" undefined adapter position");
        }
        if (this.itemView.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
    
    void unScrap() {
        this.mScrapContainer.Yy(this);
    }
    
    boolean wasReturnedFromScrap() {
        boolean b = false;
        if ((this.mFlags & 0x20) != 0x0) {
            b = true;
        }
        return b;
    }
}
