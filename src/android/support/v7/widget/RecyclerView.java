// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.SystemClock;
import android.os.Parcelable;
import android.view.View$MeasureSpec;
import android.view.Display;
import android.content.res.Resources;
import android.support.v7.recyclerview.R$dimen;
import android.graphics.drawable.Drawable;
import android.view.FocusFinder;
import android.widget.OverScroller;
import android.graphics.Canvas;
import android.util.SparseArray;
import android.support.v4.widget.g;
import android.util.Log;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.ViewParent;
import android.view.ViewGroup$LayoutParams;
import android.content.res.TypedArray;
import android.graphics.drawable.StateListDrawable;
import android.support.v7.recyclerview.R$styleable;
import android.view.View;
import android.support.v4.view.f;
import android.view.ViewConfiguration;
import android.util.AttributeSet;
import android.content.Context;
import android.os.Build$VERSION;
import android.view.VelocityTracker;
import android.graphics.RectF;
import android.graphics.Rect;
import java.util.List;
import java.util.ArrayList;
import android.widget.EdgeEffect;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.support.v4.view.b;
import android.view.ViewGroup;

public class RecyclerView extends ViewGroup implements b
{
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = false;
    private static final boolean ALLOW_THREAD_GAP_WORK = false;
    private static final int[] CLIP_TO_PADDING_ATTR;
    static final boolean DEBUG = false;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD = false;
    private static final int INVALID_POINTER = 255;
    public static final int INVALID_TYPE = 255;
    private static final Class[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    private static final int[] NESTED_SCROLLING_ATTRS;
    public static final long NO_ID = 255L;
    public static final int NO_POSITION = 255;
    static final boolean POST_UPDATES_ON_ANIMATION = false;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static final Interpolator sQuinticInterpolator;
    z mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    private n mActiveOnItemTouchListener;
    q mAdapter;
    C mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private a mChildDrawingOrderCallback;
    A mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    private int mDispatchScrollCounter;
    private int mEatRequestLayout;
    private int mEatenAccessibilityChangeFlags;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    D mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    boolean mIsAttached;
    android.support.v7.widget.b mItemAnimator;
    private x mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    p mLayout;
    boolean mLayoutFrozen;
    private int mLayoutOrScrollCounter;
    boolean mLayoutRequestEaten;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final u mObserver;
    private List mOnChildAttachStateListeners;
    private d mOnFlingListener;
    private final ArrayList mOnItemTouchListeners;
    final List mPendingAccessibilityImportanceChange;
    private RecyclerView$SavedState mPendingSavedState;
    boolean mPostedAnimatorRunner;
    y mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final s mRecycler;
    l mRecyclerListener;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private final int[] mScrollConsumed;
    private m mScrollListener;
    private List mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private android.support.v4.view.a mScrollingChildHelper;
    final e mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final v mViewFlinger;
    private final w mViewInfoProcessCallback;
    final B mViewInfoStore;
    
    static {
        final int n = 15;
        final int n2 = 1;
        final int[] nested_SCROLLING_ATTRS = new int[n2];
        nested_SCROLLING_ATTRS[0] = 16843830;
        NESTED_SCROLLING_ATTRS = nested_SCROLLING_ATTRS;
        final int[] clip_TO_PADDING_ATTR = new int[n2];
        clip_TO_PADDING_ATTR[0] = 16842987;
        CLIP_TO_PADDING_ATTR = clip_TO_PADDING_ATTR;
        boolean force_INVALIDATE_DISPLAY_LIST;
        if (Build$VERSION.SDK_INT != 18 && Build$VERSION.SDK_INT != 19 && Build$VERSION.SDK_INT != 20) {
            force_INVALIDATE_DISPLAY_LIST = false;
        }
        else {
            force_INVALIDATE_DISPLAY_LIST = (n2 != 0);
        }
        boolean allow_SIZE_IN_UNSPECIFIED_SPEC;
        if (Build$VERSION.SDK_INT < 23) {
            allow_SIZE_IN_UNSPECIFIED_SPEC = false;
        }
        else {
            allow_SIZE_IN_UNSPECIFIED_SPEC = (n2 != 0);
        }
        boolean post_UPDATES_ON_ANIMATION;
        if (Build$VERSION.SDK_INT < 16) {
            post_UPDATES_ON_ANIMATION = false;
        }
        else {
            post_UPDATES_ON_ANIMATION = (n2 != 0);
        }
        boolean allow_THREAD_GAP_WORK;
        if (Build$VERSION.SDK_INT < 21) {
            allow_THREAD_GAP_WORK = false;
        }
        else {
            allow_THREAD_GAP_WORK = (n2 != 0);
        }
        boolean force_ABS_FOCUS_SEARCH_DIRECTION;
        if (Build$VERSION.SDK_INT > n) {
            force_ABS_FOCUS_SEARCH_DIRECTION = false;
        }
        else {
            force_ABS_FOCUS_SEARCH_DIRECTION = (n2 != 0);
        }
        boolean ignore_DETACHED_FOCUSED_CHILD;
        if (Build$VERSION.SDK_INT > n) {
            ignore_DETACHED_FOCUSED_CHILD = false;
        }
        else {
            ignore_DETACHED_FOCUSED_CHILD = (n2 != 0);
        }
        final Class[] layout_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[4];
        layout_MANAGER_CONSTRUCTOR_SIGNATURE[0] = Context.class;
        layout_MANAGER_CONSTRUCTOR_SIGNATURE[n2] = AttributeSet.class;
        layout_MANAGER_CONSTRUCTOR_SIGNATURE[2] = Integer.TYPE;
        layout_MANAGER_CONSTRUCTOR_SIGNATURE[3] = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = layout_MANAGER_CONSTRUCTOR_SIGNATURE;
        sQuinticInterpolator = (Interpolator)new ak();
    }
    
    public RecyclerView(final Context context) {
        this(context, null);
    }
    
    public RecyclerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public RecyclerView(final Context context, final AttributeSet set, final int n) {
        y mPrefetchRegistry = null;
        final int mScrollPointerId = -1;
        final int n2 = 2;
        int boolean1 = 1;
        super(context, set, n);
        this.mObserver = new u(this);
        this.mRecycler = new s(this);
        this.mViewInfoStore = new B();
        this.mUpdateChildViewsRunnable = new aa(this);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList();
        this.mOnItemTouchListeners = new ArrayList();
        this.mEatRequestLayout = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mItemAnimator = new Z();
        this.mScrollState = 0;
        this.mScrollPointerId = mScrollPointerId;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = (boolean1 != 0);
        this.mViewFlinger = new v(this);
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            mPrefetchRegistry = new y();
        }
        this.mPrefetchRegistry = mPrefetchRegistry;
        this.mState = new e();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new c(this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[n2];
        this.mScrollOffset = new int[n2];
        this.mScrollConsumed = new int[n2];
        this.mNestedOffsets = new int[n2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new aA(this);
        this.mViewInfoProcessCallback = new V(this);
        if (set == null) {
            this.mClipToPadding = (boolean1 != 0);
        }
        else {
            final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, RecyclerView.CLIP_TO_PADDING_ATTR, n, 0);
            this.mClipToPadding = obtainStyledAttributes.getBoolean(0, (boolean)(boolean1 != 0));
            obtainStyledAttributes.recycle();
        }
        this.setScrollContainer((boolean)(boolean1 != 0));
        this.setFocusableInTouchMode((boolean)(boolean1 != 0));
        final ViewConfiguration value = ViewConfiguration.get(context);
        this.mTouchSlop = value.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = android.support.v4.view.y.ahw(value, context);
        this.mScaledVerticalScrollFactor = android.support.v4.view.y.ahx(value, context);
        this.mMinFlingVelocity = value.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = value.getScaledMaximumFlingVelocity();
        this.setWillNotDraw(this.getOverScrollMode() == n2 && boolean1);
        this.mItemAnimator.Xq(this.mItemAnimatorListener);
        this.initAdapterManager();
        this.initChildrenHelper();
        if (f.agA((View)this) == 0) {
            f.agC((View)this, boolean1);
        }
        this.mAccessibilityManager = (AccessibilityManager)this.getContext().getSystemService("accessibility");
        this.setAccessibilityDelegateCompat(new z(this));
        if (set == null) {
            this.setDescendantFocusability(262144);
        }
        else {
            final TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(set, R$styleable.RecyclerView, n, 0);
            final String string = obtainStyledAttributes2.getString(R$styleable.RecyclerView_layoutManager);
            if (obtainStyledAttributes2.getInt(R$styleable.RecyclerView_android_descendantFocusability, mScrollPointerId) == mScrollPointerId) {
                this.setDescendantFocusability(262144);
            }
            if (this.mEnableFastScroller = obtainStyledAttributes2.getBoolean(R$styleable.RecyclerView_fastScrollEnabled, false)) {
                this.initFastScroller((StateListDrawable)obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable)obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
            }
            obtainStyledAttributes2.recycle();
            this.createLayoutManager(context, string, set, n, 0);
            if (Build$VERSION.SDK_INT >= 21) {
                final TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(set, RecyclerView.NESTED_SCROLLING_ATTRS, n, 0);
                boolean1 = (obtainStyledAttributes3.getBoolean(0, (boolean)(boolean1 != 0)) ? 1 : 0);
                obtainStyledAttributes3.recycle();
            }
        }
        this.setNestedScrollingEnabled(boolean1 != 0);
    }
    
    private void addAnimatingView(final j j) {
        final boolean b = true;
        boolean b2 = false;
        final View itemView = j.itemView;
        if (itemView.getParent() == this) {
            b2 = b;
        }
        this.mRecycler.Yy(this.getChildViewHolder(itemView));
        if (!j.isTmpDetached()) {
            if (b2) {
                this.mChildHelper.ZE(itemView);
            }
            else {
                this.mChildHelper.Zu(itemView, b);
            }
        }
        else {
            this.mChildHelper.ZA(itemView, -1, itemView.getLayoutParams(), b);
        }
    }
    
    private void animateChange(final j mShadowingHolder, final j mShadowedHolder, final E e, final E e2, final boolean b, final boolean b2) {
        mShadowingHolder.setIsRecyclable(false);
        if (b) {
            this.addAnimatingView(mShadowingHolder);
        }
        if (mShadowingHolder != mShadowedHolder) {
            if (b2) {
                this.addAnimatingView(mShadowedHolder);
            }
            mShadowingHolder.mShadowedHolder = mShadowedHolder;
            this.addAnimatingView(mShadowingHolder);
            this.mRecycler.Yy(mShadowingHolder);
            mShadowedHolder.setIsRecyclable(false);
            mShadowedHolder.mShadowingHolder = mShadowingHolder;
        }
        if (this.mItemAnimator.XD(mShadowingHolder, mShadowedHolder, e, e2)) {
            this.postAnimationRunner();
        }
    }
    
    private void cancelTouch() {
        this.resetTouch();
        this.setScrollState(0);
    }
    
    static void clearNestedRecyclerViewIfNotNested(final j j) {
        if (j.mNestedRecyclerView != null) {
            View view = (View)j.mNestedRecyclerView.get();
            while (view != null) {
                if (view == j.itemView) {
                    return;
                }
                final ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    view = null;
                }
                else {
                    view = (View)parent;
                }
            }
            j.mNestedRecyclerView = null;
        }
    }
    
    private void createLayoutManager(final Context p0, final String p1, final AttributeSet p2, final int p3, final int p4) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore          6
        //     3: aconst_null    
        //     4: astore          7
        //     6: aload_2        
        //     7: ifnonnull       11
        //    10: return         
        //    11: aload_2        
        //    12: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    15: astore          8
        //    17: aload           8
        //    19: invokevirtual   java/lang/String.isEmpty:()Z
        //    22: istore          9
        //    24: iload           9
        //    26: ifne            10
        //    29: aload_0        
        //    30: aload_1        
        //    31: aload           8
        //    33: invokespecial   android/support/v7/widget/RecyclerView.getFullClassName:(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
        //    36: astore          10
        //    38: aload_0        
        //    39: invokevirtual   android/support/v7/widget/RecyclerView.isInEditMode:()Z
        //    42: istore          11
        //    44: iload           11
        //    46: ifne            251
        //    49: aload_1        
        //    50: invokevirtual   android/content/Context.getClassLoader:()Ljava/lang/ClassLoader;
        //    53: astore          8
        //    55: aload           8
        //    57: aload           10
        //    59: invokevirtual   java/lang/ClassLoader.loadClass:(Ljava/lang/String;)Ljava/lang/Class;
        //    62: astore          8
        //    64: ldc_w           Landroid/support/v7/widget/p;.class
        //    67: astore          12
        //    69: aload           8
        //    71: aload           12
        //    73: invokevirtual   java/lang/Class.asSubclass:(Ljava/lang/Class;)Ljava/lang/Class;
        //    76: astore          13
        //    78: getstatic       android/support/v7/widget/RecyclerView.LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
        //    81: astore          8
        //    83: aload           13
        //    85: aload           8
        //    87: invokevirtual   java/lang/Class.getConstructor:([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
        //    90: astore          8
        //    92: iconst_4       
        //    93: istore          9
        //    95: iload           9
        //    97: anewarray       Ljava/lang/Object;
        //   100: astore          12
        //   102: iconst_0       
        //   103: istore          14
        //   105: aconst_null    
        //   106: astore          15
        //   108: aload           12
        //   110: iconst_0       
        //   111: aload_1        
        //   112: aastore        
        //   113: iconst_1       
        //   114: istore          14
        //   116: aload           12
        //   118: iload           14
        //   120: aload_3        
        //   121: aastore        
        //   122: iload           4
        //   124: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   127: astore          15
        //   129: iconst_2       
        //   130: istore          16
        //   132: aload           12
        //   134: iload           16
        //   136: aload           15
        //   138: aastore        
        //   139: iload           5
        //   141: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   144: astore          15
        //   146: iconst_3       
        //   147: istore          16
        //   149: aload           12
        //   151: iload           16
        //   153: aload           15
        //   155: aastore        
        //   156: iconst_1       
        //   157: istore          6
        //   159: aload           8
        //   161: iload           6
        //   163: invokevirtual   java/lang/reflect/Constructor.setAccessible:(Z)V
        //   166: aload           8
        //   168: aload           12
        //   170: invokevirtual   java/lang/reflect/Constructor.newInstance:([Ljava/lang/Object;)Ljava/lang/Object;
        //   173: astore          8
        //   175: aload           8
        //   177: checkcast       Landroid/support/v7/widget/p;
        //   180: astore          8
        //   182: aload_0        
        //   183: aload           8
        //   185: invokevirtual   android/support/v7/widget/RecyclerView.setLayoutManager:(Landroid/support/v7/widget/p;)V
        //   188: goto            10
        //   191: astore          8
        //   193: new             Ljava/lang/IllegalStateException;
        //   196: astore          12
        //   198: new             Ljava/lang/StringBuilder;
        //   201: astore          7
        //   203: aload           7
        //   205: invokespecial   java/lang/StringBuilder.<init>:()V
        //   208: aload_3        
        //   209: invokeinterface android/util/AttributeSet.getPositionDescription:()Ljava/lang/String;
        //   214: astore          13
        //   216: aload           7
        //   218: aload           13
        //   220: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   223: ldc_w           ": Unable to find LayoutManager "
        //   226: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   229: aload           10
        //   231: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   234: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   237: astore          7
        //   239: aload           12
        //   241: aload           7
        //   243: aload           8
        //   245: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   248: aload           12
        //   250: athrow         
        //   251: aload_0        
        //   252: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //   255: astore          8
        //   257: aload           8
        //   259: invokevirtual   java/lang/Class.getClassLoader:()Ljava/lang/ClassLoader;
        //   262: astore          8
        //   264: goto            55
        //   267: astore          8
        //   269: iconst_0       
        //   270: istore          9
        //   272: aconst_null    
        //   273: astore          12
        //   275: iconst_0       
        //   276: anewarray       Ljava/lang/Class;
        //   279: astore          12
        //   281: aload           13
        //   283: aload           12
        //   285: invokevirtual   java/lang/Class.getConstructor:([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
        //   288: astore          8
        //   290: iconst_0       
        //   291: istore          9
        //   293: aconst_null    
        //   294: astore          12
        //   296: goto            156
        //   299: astore          12
        //   301: aload           12
        //   303: aload           8
        //   305: invokevirtual   java/lang/NoSuchMethodException.initCause:(Ljava/lang/Throwable;)Ljava/lang/Throwable;
        //   308: pop            
        //   309: new             Ljava/lang/IllegalStateException;
        //   312: astore          8
        //   314: new             Ljava/lang/StringBuilder;
        //   317: astore          7
        //   319: aload           7
        //   321: invokespecial   java/lang/StringBuilder.<init>:()V
        //   324: aload_3        
        //   325: invokeinterface android/util/AttributeSet.getPositionDescription:()Ljava/lang/String;
        //   330: astore          13
        //   332: aload           7
        //   334: aload           13
        //   336: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   339: astore          7
        //   341: ldc_w           ": Error creating LayoutManager "
        //   344: astore          13
        //   346: aload           7
        //   348: aload           13
        //   350: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   353: astore          7
        //   355: aload           7
        //   357: aload           10
        //   359: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   362: astore          7
        //   364: aload           7
        //   366: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   369: astore          7
        //   371: aload           8
        //   373: aload           7
        //   375: aload           12
        //   377: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   380: aload           8
        //   382: athrow         
        //   383: astore          8
        //   385: new             Ljava/lang/IllegalStateException;
        //   388: astore          12
        //   390: new             Ljava/lang/StringBuilder;
        //   393: astore          7
        //   395: aload           7
        //   397: invokespecial   java/lang/StringBuilder.<init>:()V
        //   400: aload_3        
        //   401: invokeinterface android/util/AttributeSet.getPositionDescription:()Ljava/lang/String;
        //   406: astore          13
        //   408: aload           7
        //   410: aload           13
        //   412: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   415: ldc_w           ": Could not instantiate the LayoutManager: "
        //   418: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   421: aload           10
        //   423: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   426: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   429: astore          7
        //   431: aload           12
        //   433: aload           7
        //   435: aload           8
        //   437: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   440: aload           12
        //   442: athrow         
        //   443: astore          8
        //   445: new             Ljava/lang/IllegalStateException;
        //   448: astore          12
        //   450: new             Ljava/lang/StringBuilder;
        //   453: astore          7
        //   455: aload           7
        //   457: invokespecial   java/lang/StringBuilder.<init>:()V
        //   460: aload_3        
        //   461: invokeinterface android/util/AttributeSet.getPositionDescription:()Ljava/lang/String;
        //   466: astore          13
        //   468: aload           7
        //   470: aload           13
        //   472: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   475: ldc_w           ": Could not instantiate the LayoutManager: "
        //   478: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   481: aload           10
        //   483: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   486: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   489: astore          7
        //   491: aload           12
        //   493: aload           7
        //   495: aload           8
        //   497: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   500: aload           12
        //   502: athrow         
        //   503: astore          8
        //   505: new             Ljava/lang/IllegalStateException;
        //   508: astore          12
        //   510: new             Ljava/lang/StringBuilder;
        //   513: astore          7
        //   515: aload           7
        //   517: invokespecial   java/lang/StringBuilder.<init>:()V
        //   520: aload_3        
        //   521: invokeinterface android/util/AttributeSet.getPositionDescription:()Ljava/lang/String;
        //   526: astore          13
        //   528: aload           7
        //   530: aload           13
        //   532: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   535: ldc_w           ": Cannot access non-public constructor "
        //   538: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   541: aload           10
        //   543: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   546: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   549: astore          7
        //   551: aload           12
        //   553: aload           7
        //   555: aload           8
        //   557: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   560: aload           12
        //   562: athrow         
        //   563: astore          8
        //   565: new             Ljava/lang/IllegalStateException;
        //   568: astore          12
        //   570: new             Ljava/lang/StringBuilder;
        //   573: astore          7
        //   575: aload           7
        //   577: invokespecial   java/lang/StringBuilder.<init>:()V
        //   580: aload_3        
        //   581: invokeinterface android/util/AttributeSet.getPositionDescription:()Ljava/lang/String;
        //   586: astore          13
        //   588: aload           7
        //   590: aload           13
        //   592: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   595: ldc_w           ": Class is not a LayoutManager "
        //   598: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   601: aload           10
        //   603: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   606: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   609: astore          7
        //   611: aload           12
        //   613: aload           7
        //   615: aload           8
        //   617: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   620: aload           12
        //   622: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                         
        //  -----  -----  -----  -----  ---------------------------------------------
        //  38     42     191    251    Ljava/lang/ClassNotFoundException;
        //  38     42     383    443    Ljava/lang/reflect/InvocationTargetException;
        //  38     42     443    503    Ljava/lang/InstantiationException;
        //  38     42     503    563    Ljava/lang/IllegalAccessException;
        //  38     42     563    623    Ljava/lang/ClassCastException;
        //  49     53     191    251    Ljava/lang/ClassNotFoundException;
        //  49     53     383    443    Ljava/lang/reflect/InvocationTargetException;
        //  49     53     443    503    Ljava/lang/InstantiationException;
        //  49     53     503    563    Ljava/lang/IllegalAccessException;
        //  49     53     563    623    Ljava/lang/ClassCastException;
        //  57     62     191    251    Ljava/lang/ClassNotFoundException;
        //  57     62     383    443    Ljava/lang/reflect/InvocationTargetException;
        //  57     62     443    503    Ljava/lang/InstantiationException;
        //  57     62     503    563    Ljava/lang/IllegalAccessException;
        //  57     62     563    623    Ljava/lang/ClassCastException;
        //  71     76     191    251    Ljava/lang/ClassNotFoundException;
        //  71     76     383    443    Ljava/lang/reflect/InvocationTargetException;
        //  71     76     443    503    Ljava/lang/InstantiationException;
        //  71     76     503    563    Ljava/lang/IllegalAccessException;
        //  71     76     563    623    Ljava/lang/ClassCastException;
        //  78     81     267    383    Ljava/lang/NoSuchMethodException;
        //  78     81     191    251    Ljava/lang/ClassNotFoundException;
        //  78     81     383    443    Ljava/lang/reflect/InvocationTargetException;
        //  78     81     443    503    Ljava/lang/InstantiationException;
        //  78     81     503    563    Ljava/lang/IllegalAccessException;
        //  78     81     563    623    Ljava/lang/ClassCastException;
        //  85     90     267    383    Ljava/lang/NoSuchMethodException;
        //  85     90     191    251    Ljava/lang/ClassNotFoundException;
        //  85     90     383    443    Ljava/lang/reflect/InvocationTargetException;
        //  85     90     443    503    Ljava/lang/InstantiationException;
        //  85     90     503    563    Ljava/lang/IllegalAccessException;
        //  85     90     563    623    Ljava/lang/ClassCastException;
        //  95     100    267    383    Ljava/lang/NoSuchMethodException;
        //  95     100    191    251    Ljava/lang/ClassNotFoundException;
        //  95     100    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  95     100    443    503    Ljava/lang/InstantiationException;
        //  95     100    503    563    Ljava/lang/IllegalAccessException;
        //  95     100    563    623    Ljava/lang/ClassCastException;
        //  111    113    267    383    Ljava/lang/NoSuchMethodException;
        //  111    113    191    251    Ljava/lang/ClassNotFoundException;
        //  111    113    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  111    113    443    503    Ljava/lang/InstantiationException;
        //  111    113    503    563    Ljava/lang/IllegalAccessException;
        //  111    113    563    623    Ljava/lang/ClassCastException;
        //  120    122    267    383    Ljava/lang/NoSuchMethodException;
        //  120    122    191    251    Ljava/lang/ClassNotFoundException;
        //  120    122    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  120    122    443    503    Ljava/lang/InstantiationException;
        //  120    122    503    563    Ljava/lang/IllegalAccessException;
        //  120    122    563    623    Ljava/lang/ClassCastException;
        //  122    127    267    383    Ljava/lang/NoSuchMethodException;
        //  122    127    191    251    Ljava/lang/ClassNotFoundException;
        //  122    127    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  122    127    443    503    Ljava/lang/InstantiationException;
        //  122    127    503    563    Ljava/lang/IllegalAccessException;
        //  122    127    563    623    Ljava/lang/ClassCastException;
        //  136    139    267    383    Ljava/lang/NoSuchMethodException;
        //  136    139    191    251    Ljava/lang/ClassNotFoundException;
        //  136    139    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  136    139    443    503    Ljava/lang/InstantiationException;
        //  136    139    503    563    Ljava/lang/IllegalAccessException;
        //  136    139    563    623    Ljava/lang/ClassCastException;
        //  139    144    267    383    Ljava/lang/NoSuchMethodException;
        //  139    144    191    251    Ljava/lang/ClassNotFoundException;
        //  139    144    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  139    144    443    503    Ljava/lang/InstantiationException;
        //  139    144    503    563    Ljava/lang/IllegalAccessException;
        //  139    144    563    623    Ljava/lang/ClassCastException;
        //  153    156    267    383    Ljava/lang/NoSuchMethodException;
        //  153    156    191    251    Ljava/lang/ClassNotFoundException;
        //  153    156    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  153    156    443    503    Ljava/lang/InstantiationException;
        //  153    156    503    563    Ljava/lang/IllegalAccessException;
        //  153    156    563    623    Ljava/lang/ClassCastException;
        //  161    166    191    251    Ljava/lang/ClassNotFoundException;
        //  161    166    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  161    166    443    503    Ljava/lang/InstantiationException;
        //  161    166    503    563    Ljava/lang/IllegalAccessException;
        //  161    166    563    623    Ljava/lang/ClassCastException;
        //  168    173    191    251    Ljava/lang/ClassNotFoundException;
        //  168    173    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  168    173    443    503    Ljava/lang/InstantiationException;
        //  168    173    503    563    Ljava/lang/IllegalAccessException;
        //  168    173    563    623    Ljava/lang/ClassCastException;
        //  175    180    191    251    Ljava/lang/ClassNotFoundException;
        //  175    180    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  175    180    443    503    Ljava/lang/InstantiationException;
        //  175    180    503    563    Ljava/lang/IllegalAccessException;
        //  175    180    563    623    Ljava/lang/ClassCastException;
        //  183    188    191    251    Ljava/lang/ClassNotFoundException;
        //  183    188    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  183    188    443    503    Ljava/lang/InstantiationException;
        //  183    188    503    563    Ljava/lang/IllegalAccessException;
        //  183    188    563    623    Ljava/lang/ClassCastException;
        //  251    255    191    251    Ljava/lang/ClassNotFoundException;
        //  251    255    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  251    255    443    503    Ljava/lang/InstantiationException;
        //  251    255    503    563    Ljava/lang/IllegalAccessException;
        //  251    255    563    623    Ljava/lang/ClassCastException;
        //  257    262    191    251    Ljava/lang/ClassNotFoundException;
        //  257    262    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  257    262    443    503    Ljava/lang/InstantiationException;
        //  257    262    503    563    Ljava/lang/IllegalAccessException;
        //  257    262    563    623    Ljava/lang/ClassCastException;
        //  275    279    299    383    Ljava/lang/NoSuchMethodException;
        //  275    279    191    251    Ljava/lang/ClassNotFoundException;
        //  275    279    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  275    279    443    503    Ljava/lang/InstantiationException;
        //  275    279    503    563    Ljava/lang/IllegalAccessException;
        //  275    279    563    623    Ljava/lang/ClassCastException;
        //  283    288    299    383    Ljava/lang/NoSuchMethodException;
        //  283    288    191    251    Ljava/lang/ClassNotFoundException;
        //  283    288    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  283    288    443    503    Ljava/lang/InstantiationException;
        //  283    288    503    563    Ljava/lang/IllegalAccessException;
        //  283    288    563    623    Ljava/lang/ClassCastException;
        //  303    309    191    251    Ljava/lang/ClassNotFoundException;
        //  303    309    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  303    309    443    503    Ljava/lang/InstantiationException;
        //  303    309    503    563    Ljava/lang/IllegalAccessException;
        //  303    309    563    623    Ljava/lang/ClassCastException;
        //  309    312    191    251    Ljava/lang/ClassNotFoundException;
        //  309    312    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  309    312    443    503    Ljava/lang/InstantiationException;
        //  309    312    503    563    Ljava/lang/IllegalAccessException;
        //  309    312    563    623    Ljava/lang/ClassCastException;
        //  314    317    191    251    Ljava/lang/ClassNotFoundException;
        //  314    317    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  314    317    443    503    Ljava/lang/InstantiationException;
        //  314    317    503    563    Ljava/lang/IllegalAccessException;
        //  314    317    563    623    Ljava/lang/ClassCastException;
        //  319    324    191    251    Ljava/lang/ClassNotFoundException;
        //  319    324    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  319    324    443    503    Ljava/lang/InstantiationException;
        //  319    324    503    563    Ljava/lang/IllegalAccessException;
        //  319    324    563    623    Ljava/lang/ClassCastException;
        //  324    330    191    251    Ljava/lang/ClassNotFoundException;
        //  324    330    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  324    330    443    503    Ljava/lang/InstantiationException;
        //  324    330    503    563    Ljava/lang/IllegalAccessException;
        //  324    330    563    623    Ljava/lang/ClassCastException;
        //  334    339    191    251    Ljava/lang/ClassNotFoundException;
        //  334    339    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  334    339    443    503    Ljava/lang/InstantiationException;
        //  334    339    503    563    Ljava/lang/IllegalAccessException;
        //  334    339    563    623    Ljava/lang/ClassCastException;
        //  348    353    191    251    Ljava/lang/ClassNotFoundException;
        //  348    353    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  348    353    443    503    Ljava/lang/InstantiationException;
        //  348    353    503    563    Ljava/lang/IllegalAccessException;
        //  348    353    563    623    Ljava/lang/ClassCastException;
        //  357    362    191    251    Ljava/lang/ClassNotFoundException;
        //  357    362    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  357    362    443    503    Ljava/lang/InstantiationException;
        //  357    362    503    563    Ljava/lang/IllegalAccessException;
        //  357    362    563    623    Ljava/lang/ClassCastException;
        //  364    369    191    251    Ljava/lang/ClassNotFoundException;
        //  364    369    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  364    369    443    503    Ljava/lang/InstantiationException;
        //  364    369    503    563    Ljava/lang/IllegalAccessException;
        //  364    369    563    623    Ljava/lang/ClassCastException;
        //  375    380    191    251    Ljava/lang/ClassNotFoundException;
        //  375    380    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  375    380    443    503    Ljava/lang/InstantiationException;
        //  375    380    503    563    Ljava/lang/IllegalAccessException;
        //  375    380    563    623    Ljava/lang/ClassCastException;
        //  380    383    191    251    Ljava/lang/ClassNotFoundException;
        //  380    383    383    443    Ljava/lang/reflect/InvocationTargetException;
        //  380    383    443    503    Ljava/lang/InstantiationException;
        //  380    383    503    563    Ljava/lang/IllegalAccessException;
        //  380    383    563    623    Ljava/lang/ClassCastException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 283, Size: 283
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3551)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:113)
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
    
    private boolean didChildRangeChange(final int n, final int n2) {
        final int n3 = 1;
        boolean b = false;
        this.findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mMinMaxLayoutPositions[0] != n || this.mMinMaxLayoutPositions[n3] != n2) {
            b = (n3 != 0);
        }
        return b;
    }
    
    private void dispatchContentChangedIfNecessary() {
        final int mEatenAccessibilityChangeFlags = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (mEatenAccessibilityChangeFlags != 0 && this.isAccessibilityEnabled()) {
            final AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            android.support.v4.view.a.n.afX(obtain, mEatenAccessibilityChangeFlags);
            this.sendAccessibilityEventUnchecked(obtain);
        }
    }
    
    private void dispatchLayoutStep1() {
        int qo = 1;
        this.mState.XH(qo);
        this.fillRemainingScrollValues(this.mState);
        this.mState.QA = false;
        this.eatRequestLayout();
        this.mViewInfoStore.clear();
        this.onEnterLayoutOrScroll();
        this.processAdapterUpdatesAndSetAnimationFlags();
        this.saveFocusInfo();
        final e mState = this.mState;
        if (!this.mState.Qw || !this.mItemsChanged) {
            qo = 0;
        }
        mState.Qo = (qo != 0);
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        this.mState.Qt = this.mState.Qz;
        this.mState.Qx = this.mAdapter.getItemCount();
        this.findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.Qw) {
            for (int childCount = this.mChildHelper.getChildCount(), i = 0; i < childCount; ++i) {
                final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
                if (!childViewHolderInt.shouldIgnore() && (childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.ZK(childViewHolderInt, this.mItemAnimator.Xy(this.mState, childViewHolderInt, android.support.v7.widget.b.Xp(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.Qo && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.ZN(this.getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (!this.mState.Qz) {
            this.clearOldPositions();
        }
        else {
            this.saveOldPositions();
            final boolean qv = this.mState.Qv;
            this.mState.Qv = false;
            this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
            this.mState.Qv = qv;
            for (int j = 0; j < this.mChildHelper.getChildCount(); ++j) {
                final j childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.getChildAt(j));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.ZU(childViewHolderInt2)) {
                    int xp = android.support.v7.widget.b.Xp(childViewHolderInt2);
                    final boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    if (!hasAnyOfTheFlags) {
                        xp |= 0x1000;
                    }
                    final E xy = this.mItemAnimator.Xy(this.mState, childViewHolderInt2, xp, childViewHolderInt2.getUnmodifiedPayloads());
                    if (!hasAnyOfTheFlags) {
                        this.mViewInfoStore.ZQ(childViewHolderInt2, xy);
                    }
                    else {
                        this.recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, xy);
                    }
                }
            }
            this.clearOldPositions();
        }
        this.onExitLayoutOrScroll();
        this.resumeRequestLayout(false);
        this.mState.Qy = 2;
    }
    
    private void dispatchLayoutStep2() {
        this.eatRequestLayout();
        this.onEnterLayoutOrScroll();
        this.mState.XH(6);
        this.mAdapterHelper.aaq();
        this.mState.Qx = this.mAdapter.getItemCount();
        this.mState.Ql = 0;
        this.mState.Qt = false;
        this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
        this.mState.Qv = false;
        this.mPendingSavedState = null;
        this.mState.Qw = (this.mState.Qw && this.mItemAnimator != null);
        this.mState.Qy = 4;
        this.onExitLayoutOrScroll();
        this.resumeRequestLayout(false);
    }
    
    private void dispatchLayoutStep3() {
        final int qy = 1;
        this.mState.XH(4);
        this.eatRequestLayout();
        this.onEnterLayoutOrScroll();
        this.mState.Qy = qy;
        if (this.mState.Qw) {
            for (int i = this.mChildHelper.getChildCount() - 1; i >= 0; --i) {
                final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
                if (!childViewHolderInt.shouldIgnore()) {
                    final long changedHolderKey = this.getChangedHolderKey(childViewHolderInt);
                    final E xz = this.mItemAnimator.Xz(this.mState, childViewHolderInt);
                    final j zh = this.mViewInfoStore.ZH(changedHolderKey);
                    if (zh != null && !zh.shouldIgnore()) {
                        final boolean zl = this.mViewInfoStore.ZL(zh);
                        final boolean zl2 = this.mViewInfoStore.ZL(childViewHolderInt);
                        if (zl && zh == childViewHolderInt) {
                            this.mViewInfoStore.ZM(childViewHolderInt, xz);
                        }
                        else {
                            final E zw = this.mViewInfoStore.ZW(zh);
                            this.mViewInfoStore.ZM(childViewHolderInt, xz);
                            final E zo = this.mViewInfoStore.ZO(childViewHolderInt);
                            if (zw != null) {
                                this.animateChange(zh, childViewHolderInt, zw, zo, zl, zl2);
                            }
                            else {
                                this.handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, zh);
                            }
                        }
                    }
                    else {
                        this.mViewInfoStore.ZM(childViewHolderInt, xz);
                    }
                }
            }
            this.mViewInfoStore.ZI(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        this.mState.Qs = this.mState.Qx;
        this.mDataSetHasChangedAfterLayout = false;
        this.mState.Qw = false;
        this.mState.Qz = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        if (this.mRecycler.QR != null) {
            this.mRecycler.QR.clear();
        }
        if (this.mLayout.mPrefetchMaxObservedInInitialPrefetch) {
            this.mLayout.mPrefetchMaxCountObserved = 0;
            this.mLayout.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.Yv();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        this.onExitLayoutOrScroll();
        this.resumeRequestLayout(false);
        this.mViewInfoStore.clear();
        if (this.didChildRangeChange(this.mMinMaxLayoutPositions[0], this.mMinMaxLayoutPositions[qy])) {
            this.dispatchOnScrolled(0, 0);
        }
        this.recoverFocusFromState();
        this.resetFocusInfo();
    }
    
    private boolean dispatchOnItemTouch(final MotionEvent motionEvent) {
        final boolean b = true;
        final int action = motionEvent.getAction();
        if (this.mActiveOnItemTouchListener != null) {
            if (action != 0) {
                this.mActiveOnItemTouchListener.onTouchEvent(this, motionEvent);
                if (action == 3 || action == (b ? 1 : 0)) {
                    this.mActiveOnItemTouchListener = null;
                }
                return b;
            }
            this.mActiveOnItemTouchListener = null;
        }
        if (action != 0) {
            for (int size = this.mOnItemTouchListeners.size(), i = 0; i < size; ++i) {
                final n mActiveOnItemTouchListener = this.mOnItemTouchListeners.get(i);
                if (mActiveOnItemTouchListener.onInterceptTouchEvent(this, motionEvent)) {
                    this.mActiveOnItemTouchListener = mActiveOnItemTouchListener;
                    return b;
                }
            }
        }
        return false;
    }
    
    private boolean dispatchOnItemTouchIntercept(final MotionEvent motionEvent) {
        final int n = 3;
        final int action = motionEvent.getAction();
        if (action == n || action == 0) {
            this.mActiveOnItemTouchListener = null;
        }
        for (int size = this.mOnItemTouchListeners.size(), i = 0; i < size; ++i) {
            final n mActiveOnItemTouchListener = this.mOnItemTouchListeners.get(i);
            if (mActiveOnItemTouchListener.onInterceptTouchEvent(this, motionEvent) && action != n) {
                this.mActiveOnItemTouchListener = mActiveOnItemTouchListener;
                return true;
            }
        }
        return false;
    }
    
    private void findMinMaxChildLayoutPositions(final int[] array) {
        final int n = 1;
        final int n2 = -1;
        final int childCount = this.mChildHelper.getChildCount();
        if (childCount != 0) {
            int n3 = -1 >>> 1;
            int n4 = -1 << -1;
            int n5;
            for (int i = 0; i < childCount; ++i, n3 = n5) {
                final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
                if (!childViewHolderInt.shouldIgnore()) {
                    final int layoutPosition = childViewHolderInt.getLayoutPosition();
                    if (layoutPosition < n3) {
                        n3 = layoutPosition;
                    }
                    if (layoutPosition <= n4) {
                        n5 = n3;
                    }
                    else {
                        n4 = layoutPosition;
                        n5 = n3;
                    }
                }
                else {
                    n5 = n3;
                }
            }
            array[0] = n3;
            array[n] = n4;
            return;
        }
        array[n] = (array[0] = n2);
    }
    
    static RecyclerView findNestedRecyclerView(final View view) {
        int i = 0;
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (!(view instanceof RecyclerView)) {
            for (ViewGroup viewGroup = (ViewGroup)view; i < viewGroup.getChildCount(); ++i) {
                final RecyclerView nestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i));
                if (nestedRecyclerView != null) {
                    return nestedRecyclerView;
                }
            }
            return null;
        }
        return (RecyclerView)view;
    }
    
    private View findNextViewToFocus() {
        int qn = 0;
        if (this.mState.Qn != -1) {
            qn = this.mState.Qn;
        }
        final int itemCount = this.mState.getItemCount();
        for (int i = qn; i < itemCount; ++i) {
            final j viewHolderForAdapterPosition = this.findViewHolderForAdapterPosition(i);
            if (viewHolderForAdapterPosition == null) {
                break;
            }
            if (viewHolderForAdapterPosition.itemView.hasFocusable()) {
                return viewHolderForAdapterPosition.itemView;
            }
        }
        int min = Math.min(itemCount, qn);
        j viewHolderForAdapterPosition2;
        do {
            --min;
            if (min < 0) {
                return null;
            }
            viewHolderForAdapterPosition2 = this.findViewHolderForAdapterPosition(min);
            if (viewHolderForAdapterPosition2 != null) {
                continue;
            }
            return null;
        } while (!viewHolderForAdapterPosition2.itemView.hasFocusable());
        return viewHolderForAdapterPosition2.itemView;
    }
    
    static j getChildViewHolderInt(final View view) {
        if (view != null) {
            return ((i)view.getLayoutParams()).QH;
        }
        return null;
    }
    
    static void getDecoratedBoundsWithMarginsInt(final View view, final Rect rect) {
        final i i = (i)view.getLayoutParams();
        final Rect mDecorInsets = i.mDecorInsets;
        rect.set(view.getLeft() - mDecorInsets.left - i.leftMargin, view.getTop() - mDecorInsets.top - i.topMargin, view.getRight() + mDecorInsets.right + i.rightMargin, i.bottomMargin + (mDecorInsets.bottom + view.getBottom()));
    }
    
    private int getDeepestFocusedViewWithId(View focusedChild) {
        int id = focusedChild.getId();
        for (View view = focusedChild; !view.isFocused() && view instanceof ViewGroup && view.hasFocus(); view = focusedChild) {
            focusedChild = ((ViewGroup)view).getFocusedChild();
            int id2;
            if (focusedChild.getId() == -1) {
                id2 = id;
            }
            else {
                id2 = focusedChild.getId();
            }
            id = id2;
        }
        return id;
    }
    
    private String getFullClassName(final Context context, final String s) {
        final char c = '.';
        if (s.charAt(0) == c) {
            return context.getPackageName() + s;
        }
        if (!s.contains(".")) {
            return RecyclerView.class.getPackage().getName() + c + s;
        }
        return s;
    }
    
    private android.support.v4.view.a getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new android.support.v4.view.a((View)this);
        }
        return this.mScrollingChildHelper;
    }
    
    private void handleMissingPreInfoForChangeError(final long n, final j j, final j i) {
        int k = 0;
        while (k < this.mChildHelper.getChildCount()) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(k));
            if (childViewHolderInt != j && this.getChangedHolderKey(childViewHolderInt) == n) {
                if (this.mAdapter != null && this.mAdapter.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + j + this.exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + j + this.exceptionLabel());
            }
            else {
                ++k;
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + i + " cannot be found but it is necessary for " + j + this.exceptionLabel());
    }
    
    private boolean hasUpdatedView() {
        for (int childCount = this.mChildHelper.getChildCount(), i = 0; i < childCount; ++i) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }
    
    private void initChildrenHelper() {
        this.mChildHelper = new A(new aC(this));
    }
    
    private boolean isPreferredNextFocus(final View view, final View view2, final int n) {
        final int n2 = 2;
        boolean b = false;
        final boolean b2 = true;
        if (view2 == null || view2 == this) {
            return false;
        }
        if (view == null) {
            return b2;
        }
        if (n != n2 && n != (b2 ? 1 : 0)) {
            return this.isPreferredNextFocusAbsolute(view, view2, n);
        }
        final boolean b3 = this.mLayout.getLayoutDirection() == (b2 ? 1 : 0) && b2;
        if (n == n2) {
            b = b2;
        }
        int n3;
        if (!(b3 ^ b)) {
            n3 = 17;
        }
        else {
            n3 = 66;
        }
        if (this.isPreferredNextFocusAbsolute(view, view2, n3)) {
            return b2;
        }
        if (n != n2) {
            return this.isPreferredNextFocusAbsolute(view, view2, 33);
        }
        return this.isPreferredNextFocusAbsolute(view, view2, 130);
    }
    
    private boolean isPreferredNextFocusAbsolute(final View view, final View view2, final int n) {
        boolean b = true;
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        this.offsetDescendantRectToMyCoords(view, this.mTempRect);
        this.offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        switch (n) {
            default: {
                throw new IllegalArgumentException("direction must be absolute. received:" + n + this.exceptionLabel());
            }
            case 17: {
                if (this.mTempRect.right > this.mTempRect2.right || this.mTempRect.left >= this.mTempRect2.right) {
                    if (this.mTempRect.left > this.mTempRect2.left) {
                        return b;
                    }
                }
                b = false;
                return b;
            }
            case 66: {
                if (this.mTempRect.left < this.mTempRect2.left || this.mTempRect.right <= this.mTempRect2.left) {
                    if (this.mTempRect.right < this.mTempRect2.right) {
                        return b;
                    }
                }
                b = false;
                return b;
            }
            case 33: {
                if (this.mTempRect.bottom > this.mTempRect2.bottom || this.mTempRect.top >= this.mTempRect2.bottom) {
                    if (this.mTempRect.top > this.mTempRect2.top) {
                        return b;
                    }
                }
                b = false;
                return b;
            }
            case 130: {
                if (this.mTempRect.top < this.mTempRect2.top || this.mTempRect.bottom <= this.mTempRect2.top) {
                    if (this.mTempRect.bottom < this.mTempRect2.bottom) {
                        return b;
                    }
                }
                b = false;
                return b;
            }
        }
    }
    
    private void onPointerUp(final MotionEvent motionEvent) {
        int n = 0;
        final float n2 = 0.5f;
        final int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            if (actionIndex == 0) {
                n = 1;
            }
            this.mScrollPointerId = motionEvent.getPointerId(n);
            final int n3 = (int)(motionEvent.getX(n) + n2);
            this.mLastTouchX = n3;
            this.mInitialTouchX = n3;
            final int n4 = (int)(motionEvent.getY(n) + n2);
            this.mLastTouchY = n4;
            this.mInitialTouchY = n4;
        }
    }
    
    private boolean predictiveItemAnimationsEnabled() {
        boolean b = false;
        if (this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations()) {
            b = true;
        }
        return b;
    }
    
    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean qz = true;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.reset();
            this.mLayout.onItemsChanged(this);
        }
        if (!this.predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.aaq();
        }
        else {
            this.mAdapterHelper.aaf();
        }
        final boolean b = (this.mItemsAddedOrRemoved || this.mItemsChanged) && qz;
        final e mState = this.mState;
        boolean qw = false;
        Label_0063: {
            if (this.mFirstLayoutComplete && this.mItemAnimator != null) {
                if (this.mDataSetHasChangedAfterLayout || b || this.mLayout.mRequestedSimpleAnimations) {
                    if (this.mDataSetHasChangedAfterLayout || this.mAdapter.hasStableIds()) {
                        qw = qz;
                        break Label_0063;
                    }
                }
            }
            qw = false;
        }
        mState.Qw = qw;
        final e mState2 = this.mState;
        if (!this.mState.Qw || !b || this.mDataSetHasChangedAfterLayout || this.predictiveItemAnimationsEnabled()) {
            qz = false;
        }
        mState2.Qz = qz;
    }
    
    private void pullGlows(final float n, final float n2, final float n3, final float n4) {
        int n5 = 0;
        final float n6 = 1.0f;
        int n7 = 1;
        if (n2 < 0.0f) {
            this.ensureLeftGlow();
            g.ahK(this.mLeftGlow, -n2 / this.getWidth(), n6 - n3 / this.getHeight());
            n5 = n7;
        }
        else if (n2 > 0.0f) {
            this.ensureRightGlow();
            g.ahK(this.mRightGlow, n2 / this.getWidth(), n3 / this.getHeight());
            n5 = n7;
        }
        if (n4 < 0.0f) {
            this.ensureTopGlow();
            g.ahK(this.mTopGlow, -n4 / this.getHeight(), n / this.getWidth());
        }
        else if (n4 > 0.0f) {
            this.ensureBottomGlow();
            g.ahK(this.mBottomGlow, n4 / this.getHeight(), n6 - n / this.getWidth());
        }
        else {
            n7 = n5;
        }
        if (n7 != 0 || n2 != 0.0f || n4 != 0.0f) {
            f.agy((View)this);
        }
    }
    
    private void recoverFocusFromState() {
        final long n = -1;
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && this.hasFocus() && this.getDescendantFocusability() != 393216 && (this.getDescendantFocusability() != 131072 || this.isFocused())) {
            if (!this.isFocused()) {
                final View focusedChild = this.getFocusedChild();
                if (RecyclerView.IGNORE_DETACHED_FOCUSED_CHILD && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                    if (this.mChildHelper.getChildCount() == 0) {
                        this.requestFocus();
                        return;
                    }
                }
                else if (!this.mChildHelper.Zs(focusedChild)) {
                    return;
                }
            }
            j viewHolderForItemId;
            if (this.mState.Qm == n || !this.mAdapter.hasStableIds()) {
                viewHolderForItemId = null;
            }
            else {
                viewHolderForItemId = this.findViewHolderForItemId(this.mState.Qm);
            }
            View view;
            if (viewHolderForItemId != null && !this.mChildHelper.Zs(viewHolderForItemId.itemView) && viewHolderForItemId.itemView.hasFocusable()) {
                view = viewHolderForItemId.itemView;
            }
            else if (this.mChildHelper.getChildCount() <= 0) {
                view = null;
            }
            else {
                view = this.findNextViewToFocus();
            }
            if (view != null) {
                if (this.mState.Qq != n) {
                    final View viewById = view.findViewById(this.mState.Qq);
                    if (viewById != null && viewById.isFocusable()) {
                        view = viewById;
                    }
                }
                view.requestFocus();
            }
        }
    }
    
    private void releaseGlows() {
        boolean finished = false;
        if (this.mLeftGlow != null) {
            this.mLeftGlow.onRelease();
            finished = this.mLeftGlow.isFinished();
        }
        if (this.mTopGlow != null) {
            this.mTopGlow.onRelease();
            finished |= this.mTopGlow.isFinished();
        }
        if (this.mRightGlow != null) {
            this.mRightGlow.onRelease();
            finished |= this.mRightGlow.isFinished();
        }
        if (this.mBottomGlow != null) {
            this.mBottomGlow.onRelease();
            finished |= this.mBottomGlow.isFinished();
        }
        if (finished) {
            f.agy((View)this);
        }
    }
    
    private void requestChildOnScreen(final View view, final View view2) {
        final boolean b = true;
        boolean b2 = false;
        View view3;
        if (view2 == null) {
            view3 = view;
        }
        else {
            view3 = view2;
        }
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        final ViewGroup$LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof i) {
            final i i = (i)layoutParams;
            if (!i.QI) {
                final Rect mDecorInsets = i.mDecorInsets;
                final Rect mTempRect = this.mTempRect;
                mTempRect.left -= mDecorInsets.left;
                final Rect mTempRect2 = this.mTempRect;
                mTempRect2.right += mDecorInsets.right;
                final Rect mTempRect3 = this.mTempRect;
                mTempRect3.top -= mDecorInsets.top;
                final Rect mTempRect4 = this.mTempRect;
                mTempRect4.bottom += mDecorInsets.bottom;
            }
        }
        if (view2 != null) {
            this.offsetDescendantRectToMyCoords(view2, this.mTempRect);
            this.offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        final p mLayout = this.mLayout;
        final Rect mTempRect5 = this.mTempRect;
        final boolean b3 = !this.mFirstLayoutComplete && b;
        if (view2 == null) {
            b2 = b;
        }
        mLayout.requestChildRectangleOnScreen(this, view, mTempRect5, b3, b2);
    }
    
    private void resetFocusInfo() {
        final int n = -1;
        this.mState.Qm = -1;
        this.mState.Qn = n;
        this.mState.Qq = n;
    }
    
    private void resetTouch() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
        }
        this.stopNestedScroll(0);
        this.releaseGlows();
    }
    
    private void saveFocusInfo() {
        j containingViewHolder = null;
        View focusedChild;
        if (this.mPreserveFocusAfterLayout && this.hasFocus() && this.mAdapter != null) {
            focusedChild = this.getFocusedChild();
        }
        else {
            focusedChild = null;
        }
        if (focusedChild != null) {
            containingViewHolder = this.findContainingViewHolder(focusedChild);
        }
        if (containingViewHolder != null) {
            final e mState = this.mState;
            long itemId;
            if (!this.mAdapter.hasStableIds()) {
                itemId = -1;
            }
            else {
                itemId = containingViewHolder.getItemId();
            }
            mState.Qm = itemId;
            final e mState2 = this.mState;
            int qn;
            if (!this.mDataSetHasChangedAfterLayout) {
                if (!containingViewHolder.isRemoved()) {
                    qn = containingViewHolder.getAdapterPosition();
                }
                else {
                    qn = containingViewHolder.mOldPosition;
                }
            }
            else {
                qn = -1;
            }
            mState2.Qn = qn;
            this.mState.Qq = this.getDeepestFocusedViewWithId(containingViewHolder.itemView);
        }
        else {
            this.resetFocusInfo();
        }
    }
    
    private void setAdapterInternal(final q mAdapter, final boolean b, final boolean b2) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!b || b2) {
            this.removeAndRecycleViews();
        }
        this.mAdapterHelper.reset();
        final q mAdapter2 = this.mAdapter;
        this.mAdapter = mAdapter;
        if (mAdapter != null) {
            mAdapter.registerAdapterDataObserver(this.mObserver);
            mAdapter.onAttachedToRecyclerView(this);
        }
        if (this.mLayout != null) {
            this.mLayout.onAdapterChanged(mAdapter2, this.mAdapter);
        }
        this.mRecycler.Yr(mAdapter2, this.mAdapter, b);
        this.mState.Qv = true;
        this.markKnownViewsInvalid();
    }
    
    private void stopScrollersInternal() {
        this.mViewFlinger.stop();
        if (this.mLayout != null) {
            this.mLayout.stopSmoothScroller();
        }
    }
    
    void absorbGlows(final int n, final int n2) {
        if (n >= 0) {
            if (n > 0) {
                this.ensureRightGlow();
                this.mRightGlow.onAbsorb(n);
            }
        }
        else {
            this.ensureLeftGlow();
            this.mLeftGlow.onAbsorb(-n);
        }
        if (n2 >= 0) {
            if (n2 > 0) {
                this.ensureBottomGlow();
                this.mBottomGlow.onAbsorb(n2);
            }
        }
        else {
            this.ensureTopGlow();
            this.mTopGlow.onAbsorb(-n2);
        }
        if (n != 0 || n2 != 0) {
            f.agy((View)this);
        }
    }
    
    public void addFocusables(final ArrayList list, final int n, final int n2) {
        if (this.mLayout == null || !this.mLayout.onAddFocusables(this, list, n, n2)) {
            super.addFocusables(list, n, n2);
        }
    }
    
    public void addItemDecoration(final o o) {
        this.addItemDecoration(o, -1);
    }
    
    public void addItemDecoration(final o o, final int n) {
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            this.setWillNotDraw(false);
        }
        if (n >= 0) {
            this.mItemDecorations.add(n, o);
        }
        else {
            this.mItemDecorations.add(o);
        }
        this.markItemDecorInsetsDirty();
        this.requestLayout();
    }
    
    public void addOnChildAttachStateChangeListener(final k k) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(k);
    }
    
    public void addOnItemTouchListener(final n n) {
        this.mOnItemTouchListeners.add(n);
    }
    
    public void addOnScrollListener(final m m) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(m);
    }
    
    void animateAppearance(final j j, final E e, final E e2) {
        j.setIsRecyclable(false);
        if (this.mItemAnimator.animateAppearance(j, e, e2)) {
            this.postAnimationRunner();
        }
    }
    
    void animateDisappearance(final j j, final E e, final E e2) {
        this.addAnimatingView(j);
        j.setIsRecyclable(false);
        if (this.mItemAnimator.animateDisappearance(j, e, e2)) {
            this.postAnimationRunner();
        }
    }
    
    void assertInLayoutOrScroll(final String s) {
        if (this.isComputingLayout()) {
            return;
        }
        if (s != null) {
            throw new IllegalStateException(s + this.exceptionLabel());
        }
        throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + this.exceptionLabel());
    }
    
    void assertNotInLayoutOrScroll(final String s) {
        if (!this.isComputingLayout()) {
            if (this.mDispatchScrollCounter > 0) {
                Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", (Throwable)new IllegalStateException("" + this.exceptionLabel()));
            }
            return;
        }
        if (s != null) {
            throw new IllegalStateException(s);
        }
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + this.exceptionLabel());
    }
    
    boolean canReuseUpdatedViewHolder(final j j) {
        boolean b = false;
        if (this.mItemAnimator == null || this.mItemAnimator.Xu(j, j.getUnmodifiedPayloads())) {
            b = true;
        }
        return b;
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        boolean b = false;
        if (viewGroup$LayoutParams instanceof i && this.mLayout.checkLayoutParams((i)viewGroup$LayoutParams)) {
            b = true;
        }
        return b;
    }
    
    void clearOldPositions() {
        for (int i = 0; i < this.mChildHelper.Zv(); ++i) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.clearOldPositions();
    }
    
    public void clearOnChildAttachStateChangeListeners() {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.clear();
        }
    }
    
    public void clearOnScrollListeners() {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.clear();
        }
    }
    
    public int computeHorizontalScrollExtent() {
        int computeHorizontalScrollExtent = 0;
        if (this.mLayout != null) {
            if (this.mLayout.canScrollHorizontally()) {
                computeHorizontalScrollExtent = this.mLayout.computeHorizontalScrollExtent(this.mState);
            }
            return computeHorizontalScrollExtent;
        }
        return 0;
    }
    
    public int computeHorizontalScrollOffset() {
        int computeHorizontalScrollOffset = 0;
        if (this.mLayout != null) {
            if (this.mLayout.canScrollHorizontally()) {
                computeHorizontalScrollOffset = this.mLayout.computeHorizontalScrollOffset(this.mState);
            }
            return computeHorizontalScrollOffset;
        }
        return 0;
    }
    
    public int computeHorizontalScrollRange() {
        int computeHorizontalScrollRange = 0;
        if (this.mLayout != null) {
            if (this.mLayout.canScrollHorizontally()) {
                computeHorizontalScrollRange = this.mLayout.computeHorizontalScrollRange(this.mState);
            }
            return computeHorizontalScrollRange;
        }
        return 0;
    }
    
    public int computeVerticalScrollExtent() {
        int computeVerticalScrollExtent = 0;
        if (this.mLayout != null) {
            if (this.mLayout.canScrollVertically()) {
                computeVerticalScrollExtent = this.mLayout.computeVerticalScrollExtent(this.mState);
            }
            return computeVerticalScrollExtent;
        }
        return 0;
    }
    
    public int computeVerticalScrollOffset() {
        int computeVerticalScrollOffset = 0;
        if (this.mLayout != null) {
            if (this.mLayout.canScrollVertically()) {
                computeVerticalScrollOffset = this.mLayout.computeVerticalScrollOffset(this.mState);
            }
            return computeVerticalScrollOffset;
        }
        return 0;
    }
    
    public int computeVerticalScrollRange() {
        int computeVerticalScrollRange = 0;
        if (this.mLayout != null) {
            if (this.mLayout.canScrollVertically()) {
                computeVerticalScrollRange = this.mLayout.computeVerticalScrollRange(this.mState);
            }
            return computeVerticalScrollRange;
        }
        return 0;
    }
    
    void considerReleasingGlowsOnScroll(final int n, final int n2) {
        boolean finished = false;
        if (this.mLeftGlow != null && !this.mLeftGlow.isFinished() && n > 0) {
            this.mLeftGlow.onRelease();
            finished = this.mLeftGlow.isFinished();
        }
        if (this.mRightGlow != null && !this.mRightGlow.isFinished() && n < 0) {
            this.mRightGlow.onRelease();
            finished |= this.mRightGlow.isFinished();
        }
        if (this.mTopGlow != null && !this.mTopGlow.isFinished() && n2 > 0) {
            this.mTopGlow.onRelease();
            finished |= this.mTopGlow.isFinished();
        }
        if (this.mBottomGlow != null && !this.mBottomGlow.isFinished() && n2 < 0) {
            this.mBottomGlow.onRelease();
            finished |= this.mBottomGlow.isFinished();
        }
        if (finished) {
            f.agy((View)this);
        }
    }
    
    void consumePendingUpdateOperations() {
        if (this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            android.support.v4.os.b.asr("RV FullInvalidate");
            this.dispatchLayout();
            android.support.v4.os.b.asq();
            return;
        }
        if (this.mAdapterHelper.aap()) {
            if (this.mAdapterHelper.ZX(4) && !this.mAdapterHelper.ZX(11)) {
                android.support.v4.os.b.asr("RV PartialInvalidate");
                this.eatRequestLayout();
                this.onEnterLayoutOrScroll();
                this.mAdapterHelper.aaf();
                if (!this.mLayoutRequestEaten) {
                    if (!this.hasUpdatedView()) {
                        this.mAdapterHelper.aak();
                    }
                    else {
                        this.dispatchLayout();
                    }
                }
                this.resumeRequestLayout(true);
                this.onExitLayoutOrScroll();
                android.support.v4.os.b.asq();
            }
            else if (this.mAdapterHelper.aap()) {
                android.support.v4.os.b.asr("RV FullInvalidate");
                this.dispatchLayout();
                android.support.v4.os.b.asq();
            }
        }
    }
    
    void defaultOnMeasure(final int n, final int n2) {
        this.setMeasuredDimension(p.chooseSize(n, this.getPaddingLeft() + this.getPaddingRight(), f.agD((View)this)), p.chooseSize(n2, this.getPaddingTop() + this.getPaddingBottom(), f.agF((View)this)));
    }
    
    void dispatchChildAttached(final View view) {
        final j childViewHolderInt = getChildViewHolderInt(view);
        this.onChildAttachedToWindow(view);
        if (this.mAdapter != null && childViewHolderInt != null) {
            this.mAdapter.onViewAttachedToWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int i = this.mOnChildAttachStateListeners.size() - 1; i >= 0; --i) {
                ((k)this.mOnChildAttachStateListeners.get(i)).Yg(view);
            }
        }
    }
    
    void dispatchChildDetached(final View view) {
        final j childViewHolderInt = getChildViewHolderInt(view);
        this.onChildDetachedFromWindow(view);
        if (this.mAdapter != null && childViewHolderInt != null) {
            this.mAdapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int i = this.mOnChildAttachStateListeners.size() - 1; i >= 0; --i) {
                ((k)this.mOnChildAttachStateListeners.get(i)).Yh(view);
            }
        }
    }
    
    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout != null) {
            this.mState.QA = false;
            if (this.mState.Qy != 1) {
                if (!this.mAdapterHelper.aad() && this.mLayout.getWidth() == this.getWidth() && this.mLayout.getHeight() == this.getHeight()) {
                    this.mLayout.setExactMeasureSpecsFrom(this);
                }
                else {
                    this.mLayout.setExactMeasureSpecsFrom(this);
                    this.dispatchLayoutStep2();
                }
            }
            else {
                this.dispatchLayoutStep1();
                this.mLayout.setExactMeasureSpecsFrom(this);
                this.dispatchLayoutStep2();
            }
            this.dispatchLayoutStep3();
            return;
        }
        Log.e("RecyclerView", "No layout manager attached; skipping layout");
    }
    
    public boolean dispatchNestedFling(final float n, final float n2, final boolean b) {
        return this.getScrollingChildHelper().dispatchNestedFling(n, n2, b);
    }
    
    public boolean dispatchNestedPreFling(final float n, final float n2) {
        return this.getScrollingChildHelper().dispatchNestedPreFling(n, n2);
    }
    
    public boolean dispatchNestedPreScroll(final int n, final int n2, final int[] array, final int[] array2) {
        return this.getScrollingChildHelper().dispatchNestedPreScroll(n, n2, array, array2);
    }
    
    public boolean dispatchNestedPreScroll(final int n, final int n2, final int[] array, final int[] array2, final int n3) {
        return this.getScrollingChildHelper().dispatchNestedPreScroll(n, n2, array, array2, n3);
    }
    
    public boolean dispatchNestedScroll(final int n, final int n2, final int n3, final int n4, final int[] array) {
        return this.getScrollingChildHelper().dispatchNestedScroll(n, n2, n3, n4, array);
    }
    
    public boolean dispatchNestedScroll(final int n, final int n2, final int n3, final int n4, final int[] array, final int n5) {
        return this.getScrollingChildHelper().dispatchNestedScroll(n, n2, n3, n4, array, n5);
    }
    
    void dispatchOnScrollStateChanged(final int n) {
        if (this.mLayout != null) {
            this.mLayout.onScrollStateChanged(n);
        }
        this.onScrollStateChanged(n);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrollStateChanged(this, n);
        }
        if (this.mScrollListeners != null) {
            for (int i = this.mScrollListeners.size() - 1; i >= 0; --i) {
                ((m)this.mScrollListeners.get(i)).onScrollStateChanged(this, n);
            }
        }
    }
    
    void dispatchOnScrolled(final int n, final int n2) {
        ++this.mDispatchScrollCounter;
        final int scrollX = this.getScrollX();
        final int scrollY = this.getScrollY();
        this.onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        this.onScrolled(n, n2);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrolled(this, n, n2);
        }
        if (this.mScrollListeners != null) {
            for (int i = this.mScrollListeners.size() - 1; i >= 0; --i) {
                ((m)this.mScrollListeners.get(i)).onScrolled(this, n, n2);
            }
        }
        --this.mDispatchScrollCounter;
    }
    
    void dispatchPendingImportantForAccessibilityChanges() {
        final int mPendingAccessibilityState = -1;
        for (int i = this.mPendingAccessibilityImportanceChange.size() - 1; i >= 0; --i) {
            final j j = this.mPendingAccessibilityImportanceChange.get(i);
            if (j.itemView.getParent() == this && !j.shouldIgnore()) {
                final int mPendingAccessibilityState2 = j.mPendingAccessibilityState;
                if (mPendingAccessibilityState2 != mPendingAccessibilityState) {
                    f.agC(j.itemView, mPendingAccessibilityState2);
                    j.mPendingAccessibilityState = mPendingAccessibilityState;
                }
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }
    
    protected void dispatchRestoreInstanceState(final SparseArray sparseArray) {
        this.dispatchThawSelfOnly(sparseArray);
    }
    
    protected void dispatchSaveInstanceState(final SparseArray sparseArray) {
        this.dispatchFreezeSelfOnly(sparseArray);
    }
    
    public void draw(final Canvas canvas) {
        int n = 1;
        int n2 = 0;
        super.draw(canvas);
        for (int size = this.mItemDecorations.size(), i = 0; i < size; ++i) {
            ((o)this.mItemDecorations.get(i)).onDrawOver(canvas, this, this.mState);
        }
        int n3;
        if (this.mLeftGlow != null && !this.mLeftGlow.isFinished()) {
            final int save = canvas.save();
            int paddingBottom;
            if (!this.mClipToPadding) {
                paddingBottom = 0;
            }
            else {
                paddingBottom = this.getPaddingBottom();
            }
            canvas.rotate(270.0f);
            canvas.translate((float)(paddingBottom + -this.getHeight()), 0.0f);
            if (this.mLeftGlow != null && this.mLeftGlow.draw(canvas)) {
                n3 = n;
            }
            else {
                n3 = 0;
            }
            canvas.restoreToCount(save);
        }
        else {
            n3 = 0;
        }
        if (this.mTopGlow != null && !this.mTopGlow.isFinished()) {
            final int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate((float)this.getPaddingLeft(), (float)this.getPaddingTop());
            }
            int n4;
            if (this.mTopGlow != null && this.mTopGlow.draw(canvas)) {
                n4 = n;
            }
            else {
                n4 = 0;
            }
            n3 |= n4;
            canvas.restoreToCount(save2);
        }
        if (this.mRightGlow != null && !this.mRightGlow.isFinished()) {
            final int save3 = canvas.save();
            final int width = this.getWidth();
            int paddingTop;
            if (!this.mClipToPadding) {
                paddingTop = 0;
            }
            else {
                paddingTop = this.getPaddingTop();
            }
            canvas.rotate(90.0f);
            canvas.translate((float)(-paddingTop), (float)(-width));
            int n5;
            if (this.mRightGlow != null && this.mRightGlow.draw(canvas)) {
                n5 = n;
            }
            else {
                n5 = 0;
            }
            n3 |= n5;
            canvas.restoreToCount(save3);
        }
        if (this.mBottomGlow != null && !this.mBottomGlow.isFinished()) {
            final int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (!this.mClipToPadding) {
                canvas.translate((float)(-this.getWidth()), (float)(-this.getHeight()));
            }
            else {
                canvas.translate((float)(-this.getWidth() + this.getPaddingRight()), (float)(-this.getHeight() + this.getPaddingBottom()));
            }
            if (this.mBottomGlow != null && this.mBottomGlow.draw(canvas)) {
                n2 = n;
            }
            n3 |= n2;
            canvas.restoreToCount(save4);
        }
        if (n3 == 0 && this.mItemAnimator != null && this.mItemDecorations.size() > 0) {
            if (!this.mItemAnimator.XB()) {
                n = n3;
            }
        }
        else {
            n = n3;
        }
        if (n != 0) {
            f.agy((View)this);
        }
    }
    
    public boolean drawChild(final Canvas canvas, final View view, final long n) {
        return super.drawChild(canvas, view, n);
    }
    
    void eatRequestLayout() {
        ++this.mEatRequestLayout;
        if (this.mEatRequestLayout == 1 && !this.mLayoutFrozen) {
            this.mLayoutRequestEaten = false;
        }
    }
    
    void ensureBottomGlow() {
        if (this.mBottomGlow == null) {
            this.mBottomGlow = new EdgeEffect(this.getContext());
            if (!this.mClipToPadding) {
                this.mBottomGlow.setSize(this.getMeasuredWidth(), this.getMeasuredHeight());
            }
            else {
                this.mBottomGlow.setSize(this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight(), this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom());
            }
        }
    }
    
    void ensureLeftGlow() {
        if (this.mLeftGlow == null) {
            this.mLeftGlow = new EdgeEffect(this.getContext());
            if (!this.mClipToPadding) {
                this.mLeftGlow.setSize(this.getMeasuredHeight(), this.getMeasuredWidth());
            }
            else {
                this.mLeftGlow.setSize(this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom(), this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight());
            }
        }
    }
    
    void ensureRightGlow() {
        if (this.mRightGlow == null) {
            this.mRightGlow = new EdgeEffect(this.getContext());
            if (!this.mClipToPadding) {
                this.mRightGlow.setSize(this.getMeasuredHeight(), this.getMeasuredWidth());
            }
            else {
                this.mRightGlow.setSize(this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom(), this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight());
            }
        }
    }
    
    void ensureTopGlow() {
        if (this.mTopGlow == null) {
            this.mTopGlow = new EdgeEffect(this.getContext());
            if (!this.mClipToPadding) {
                this.mTopGlow.setSize(this.getMeasuredWidth(), this.getMeasuredHeight());
            }
            else {
                this.mTopGlow.setSize(this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight(), this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom());
            }
        }
    }
    
    String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + this.getContext();
    }
    
    final void fillRemainingScrollValues(final e e) {
        if (this.getScrollState() != 2) {
            e.Qr = 0;
            e.Qu = 0;
        }
        else {
            final OverScroller za = this.mViewFlinger.QY;
            e.Qr = za.getFinalX() - za.getCurrX();
            e.Qu = za.getFinalY() - za.getCurrY();
        }
    }
    
    public View findChildViewUnder(final float n, final float n2) {
        int childCount = this.mChildHelper.getChildCount();
        View child;
        float translationX;
        float translationY;
        do {
            --childCount;
            if (childCount < 0) {
                return null;
            }
            child = this.mChildHelper.getChildAt(childCount);
            translationX = child.getTranslationX();
            translationY = child.getTranslationY();
        } while (n < child.getLeft() + translationX || n > translationX + child.getRight() || n2 < child.getTop() + translationY || n2 > child.getBottom() + translationY);
        return child;
    }
    
    public View findContainingItemView(final View view) {
        ViewParent parent = view.getParent();
        View view2 = view;
        while (parent != null && parent != this && parent instanceof View) {
            final View view3 = (View)parent;
            final ViewParent parent2 = view3.getParent();
            view2 = view3;
            parent = parent2;
        }
        View view4;
        if (parent != this) {
            view4 = null;
        }
        else {
            view4 = view2;
        }
        return view4;
    }
    
    public j findContainingViewHolder(final View view) {
        j childViewHolder = null;
        final View containingItemView = this.findContainingItemView(view);
        if (containingItemView != null) {
            childViewHolder = this.getChildViewHolder(containingItemView);
        }
        return childViewHolder;
    }
    
    public j findViewHolderForAdapterPosition(final int n) {
        if (!this.mDataSetHasChangedAfterLayout) {
            final int zv = this.mChildHelper.Zv();
            int i = 0;
            j j = null;
            while (i < zv) {
                final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && this.getAdapterPositionFor(childViewHolderInt) == n) {
                    if (!this.mChildHelper.Zs(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    j = childViewHolderInt;
                }
                ++i;
            }
            return j;
        }
        return null;
    }
    
    public j findViewHolderForItemId(final long n) {
        if (this.mAdapter != null && this.mAdapter.hasStableIds()) {
            final int zv = this.mChildHelper.Zv();
            int i = 0;
            j j = null;
            while (i < zv) {
                final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == n) {
                    if (!this.mChildHelper.Zs(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    j = childViewHolderInt;
                }
                ++i;
            }
            return j;
        }
        return null;
    }
    
    public j findViewHolderForLayoutPosition(final int n) {
        return this.findViewHolderForPosition(n, false);
    }
    
    public j findViewHolderForPosition(final int n) {
        return this.findViewHolderForPosition(n, false);
    }
    
    j findViewHolderForPosition(final int n, final boolean b) {
        final int zv = this.mChildHelper.Zv();
        int i = 0;
        j j = null;
        while (i < zv) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
            Label_0052: {
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                    if (!b) {
                        if (childViewHolderInt.getLayoutPosition() != n) {
                            break Label_0052;
                        }
                    }
                    else if (childViewHolderInt.mPosition != n) {
                        break Label_0052;
                    }
                    if (!this.mChildHelper.Zs(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    j = childViewHolderInt;
                }
            }
            ++i;
        }
        return j;
    }
    
    public boolean fling(int n, int n2) {
        final int n3 = 1;
        if (this.mLayout == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutFrozen) {
            return false;
        }
        final boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
        final boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (canScrollHorizontally || Math.abs(n) < this.mMinFlingVelocity) {
            n = 0;
        }
        if (canScrollVertically || Math.abs(n2) < this.mMinFlingVelocity) {
            n2 = 0;
        }
        if (n == 0 && n2 == 0) {
            return false;
        }
        if (!this.dispatchNestedPreFling(n, n2)) {
            boolean b;
            if (!canScrollHorizontally && !canScrollVertically) {
                b = false;
            }
            else {
                b = (n3 != 0);
            }
            this.dispatchNestedFling(n, n2, b);
            if (this.mOnFlingListener != null && this.mOnFlingListener.XG(n, n2)) {
                return n3 != 0;
            }
            if (b) {
                int n4;
                if (!canScrollHorizontally) {
                    n4 = 0;
                }
                else {
                    n4 = n3;
                }
                if (canScrollVertically) {
                    n4 |= 0x2;
                }
                this.startNestedScroll(n4, n3);
                this.mViewFlinger.fling(Math.max(-this.mMaxFlingVelocity, Math.min(n, this.mMaxFlingVelocity)), Math.max(-this.mMaxFlingVelocity, Math.min(n2, this.mMaxFlingVelocity)));
                return n3 != 0;
            }
        }
        return false;
    }
    
    public View focusSearch(final View view, int n) {
        final int n2 = 2;
        int n3 = 1;
        final View onInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, n);
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        int n4;
        if (this.mAdapter != null && this.mLayout != null && !this.isComputingLayout() && !this.mLayoutFrozen) {
            n4 = n3;
        }
        else {
            n4 = 0;
        }
        final FocusFinder instance = FocusFinder.getInstance();
        View view2;
        if (n4 != 0 && (n == n2 || n == n3)) {
            int n5;
            if (!this.mLayout.canScrollVertically()) {
                n5 = 0;
            }
            else {
                int n6;
                if (n != n2) {
                    n6 = 33;
                }
                else {
                    n6 = 130;
                }
                int n7;
                if (instance.findNextFocus((ViewGroup)this, view, n6) != null) {
                    n7 = 0;
                }
                else {
                    n7 = n3;
                }
                if (!RecyclerView.FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    n5 = n7;
                }
                else {
                    n = n6;
                    n5 = n7;
                }
            }
            if (n5 == 0 && this.mLayout.canScrollHorizontally()) {
                int n8;
                if (this.mLayout.getLayoutDirection() != n3) {
                    n8 = 0;
                }
                else {
                    n8 = n3;
                }
                int n9;
                if (n != n2) {
                    n9 = 0;
                }
                else {
                    n9 = n3;
                }
                int n10;
                if ((n8 ^ n9) == 0x0) {
                    n10 = 17;
                }
                else {
                    n10 = 66;
                }
                if (instance.findNextFocus((ViewGroup)this, view, n10) != null) {
                    n3 = 0;
                }
                if (RecyclerView.FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    n = n10;
                }
            }
            else {
                n3 = n5;
            }
            if (n3 != 0) {
                this.consumePendingUpdateOperations();
                if (this.findContainingItemView(view) == null) {
                    return null;
                }
                this.eatRequestLayout();
                this.mLayout.onFocusSearchFailed(view, n, this.mRecycler, this.mState);
                this.resumeRequestLayout(false);
            }
            view2 = instance.findNextFocus((ViewGroup)this, view, n);
        }
        else {
            final View nextFocus = instance.findNextFocus((ViewGroup)this, view, n);
            if (nextFocus == null && n4 != 0) {
                this.consumePendingUpdateOperations();
                if (this.findContainingItemView(view) == null) {
                    return null;
                }
                this.eatRequestLayout();
                view2 = this.mLayout.onFocusSearchFailed(view, n, this.mRecycler, this.mState);
                this.resumeRequestLayout(false);
            }
            else {
                view2 = nextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            if (!this.isPreferredNextFocus(view, view2, n)) {
                view2 = super.focusSearch(view, n);
            }
            return view2;
        }
        if (this.getFocusedChild() != null) {
            this.requestChildOnScreen(view2, null);
            return view;
        }
        return super.focusSearch(view, n);
    }
    
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        if (this.mLayout != null) {
            return (ViewGroup$LayoutParams)this.mLayout.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + this.exceptionLabel());
    }
    
    public ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        if (this.mLayout != null) {
            return (ViewGroup$LayoutParams)this.mLayout.generateLayoutParams(this.getContext(), set);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + this.exceptionLabel());
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (this.mLayout != null) {
            return (ViewGroup$LayoutParams)this.mLayout.generateLayoutParams(viewGroup$LayoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + this.exceptionLabel());
    }
    
    public q getAdapter() {
        return this.mAdapter;
    }
    
    int getAdapterPositionFor(final j j) {
        if (!j.hasAnyOfTheFlags(524) && j.isBound()) {
            return this.mAdapterHelper.aal(j.mPosition);
        }
        return -1;
    }
    
    public int getBaseline() {
        if (this.mLayout == null) {
            return super.getBaseline();
        }
        return this.mLayout.getBaseline();
    }
    
    long getChangedHolderKey(final j j) {
        long itemId;
        if (!this.mAdapter.hasStableIds()) {
            itemId = j.mPosition;
        }
        else {
            itemId = j.getItemId();
        }
        return itemId;
    }
    
    public int getChildAdapterPosition(final View view) {
        final j childViewHolderInt = getChildViewHolderInt(view);
        int adapterPosition;
        if (childViewHolderInt == null) {
            adapterPosition = -1;
        }
        else {
            adapterPosition = childViewHolderInt.getAdapterPosition();
        }
        return adapterPosition;
    }
    
    protected int getChildDrawingOrder(final int n, final int n2) {
        if (this.mChildDrawingOrderCallback != null) {
            return this.mChildDrawingOrderCallback.Xl(n, n2);
        }
        return super.getChildDrawingOrder(n, n2);
    }
    
    public long getChildItemId(final View view) {
        long itemId = -1;
        if (this.mAdapter != null && this.mAdapter.hasStableIds()) {
            final j childViewHolderInt = getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                itemId = childViewHolderInt.getItemId();
            }
            return itemId;
        }
        return itemId;
    }
    
    public int getChildLayoutPosition(final View view) {
        final j childViewHolderInt = getChildViewHolderInt(view);
        int layoutPosition;
        if (childViewHolderInt == null) {
            layoutPosition = -1;
        }
        else {
            layoutPosition = childViewHolderInt.getLayoutPosition();
        }
        return layoutPosition;
    }
    
    public int getChildPosition(final View view) {
        return this.getChildAdapterPosition(view);
    }
    
    public j getChildViewHolder(final View view) {
        final ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return getChildViewHolderInt(view);
    }
    
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }
    
    public z getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }
    
    public void getDecoratedBoundsWithMargins(final View view, final Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }
    
    public android.support.v7.widget.b getItemAnimator() {
        return this.mItemAnimator;
    }
    
    Rect getItemDecorInsetsForChild(final View view) {
        final i i = (i)view.getLayoutParams();
        if (!i.QI) {
            return i.mDecorInsets;
        }
        if (this.mState.XM() && (i.Ye() || i.Yc())) {
            return i.mDecorInsets;
        }
        final Rect mDecorInsets = i.mDecorInsets;
        mDecorInsets.set(0, 0, 0, 0);
        for (int size = this.mItemDecorations.size(), j = 0; j < size; ++j) {
            this.mTempRect.set(0, 0, 0, 0);
            ((o)this.mItemDecorations.get(j)).getItemOffsets(this.mTempRect, view, this, this.mState);
            mDecorInsets.left += this.mTempRect.left;
            mDecorInsets.top += this.mTempRect.top;
            mDecorInsets.right += this.mTempRect.right;
            mDecorInsets.bottom += this.mTempRect.bottom;
        }
        i.QI = false;
        return mDecorInsets;
    }
    
    public o getItemDecorationAt(final int n) {
        if (n >= 0 && n < this.mItemDecorations.size()) {
            return this.mItemDecorations.get(n);
        }
        return null;
    }
    
    public p getLayoutManager() {
        return this.mLayout;
    }
    
    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }
    
    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }
    
    long getNanoTime() {
        if (!RecyclerView.ALLOW_THREAD_GAP_WORK) {
            return 0L;
        }
        return System.nanoTime();
    }
    
    public d getOnFlingListener() {
        return this.mOnFlingListener;
    }
    
    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }
    
    public t getRecycledViewPool() {
        return this.mRecycler.getRecycledViewPool();
    }
    
    public int getScrollState() {
        return this.mScrollState;
    }
    
    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }
    
    public boolean hasNestedScrollingParent() {
        return this.getScrollingChildHelper().hasNestedScrollingParent();
    }
    
    public boolean hasNestedScrollingParent(final int n) {
        return this.getScrollingChildHelper().hasNestedScrollingParent(n);
    }
    
    public boolean hasPendingAdapterUpdates() {
        boolean b = false;
        if (this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.aap()) {
            b = true;
        }
        return b;
    }
    
    void initAdapterManager() {
        this.mAdapterHelper = new C(new aH(this));
    }
    
    void initFastScroller(final StateListDrawable stateListDrawable, final Drawable drawable, final StateListDrawable stateListDrawable2, final Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            final Resources resources = this.getContext().getResources();
            new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R$dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R$dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R$dimen.fastscroll_margin));
            return;
        }
        throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + this.exceptionLabel());
    }
    
    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }
    
    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() != 0) {
            if (this.mLayout != null) {
                this.mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
            }
            this.markItemDecorInsetsDirty();
            this.requestLayout();
        }
    }
    
    boolean isAccessibilityEnabled() {
        boolean b = false;
        if (this.mAccessibilityManager != null && this.mAccessibilityManager.isEnabled()) {
            b = true;
        }
        return b;
    }
    
    public boolean isAnimating() {
        boolean b = false;
        if (this.mItemAnimator != null && this.mItemAnimator.XB()) {
            b = true;
        }
        return b;
    }
    
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }
    
    public boolean isComputingLayout() {
        boolean b = false;
        if (this.mLayoutOrScrollCounter > 0) {
            b = true;
        }
        return b;
    }
    
    public boolean isLayoutFrozen() {
        return this.mLayoutFrozen;
    }
    
    public boolean isNestedScrollingEnabled() {
        return this.getScrollingChildHelper().isNestedScrollingEnabled();
    }
    
    void jumpToPositionForSmoothScroller(final int n) {
        if (this.mLayout != null) {
            this.mLayout.scrollToPosition(n);
            this.awakenScrollBars();
        }
    }
    
    void markItemDecorInsetsDirty() {
        for (int zv = this.mChildHelper.Zv(), i = 0; i < zv; ++i) {
            ((i)this.mChildHelper.Zr(i).getLayoutParams()).QI = true;
        }
        this.mRecycler.markItemDecorInsetsDirty();
    }
    
    void markKnownViewsInvalid() {
        for (int i = 0; i < this.mChildHelper.Zv(); ++i) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        this.markItemDecorInsetsDirty();
        this.mRecycler.markKnownViewsInvalid();
    }
    
    public void offsetChildrenHorizontal(final int n) {
        for (int childCount = this.mChildHelper.getChildCount(), i = 0; i < childCount; ++i) {
            this.mChildHelper.getChildAt(i).offsetLeftAndRight(n);
        }
    }
    
    public void offsetChildrenVertical(final int n) {
        for (int childCount = this.mChildHelper.getChildCount(), i = 0; i < childCount; ++i) {
            this.mChildHelper.getChildAt(i).offsetTopAndBottom(n);
        }
    }
    
    void offsetPositionRecordsForInsert(final int n, final int n2) {
        for (int zv = this.mChildHelper.Zv(), i = 0; i < zv; ++i) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= n) {
                childViewHolderInt.offsetPosition(n2, false);
                this.mState.Qv = true;
            }
        }
        this.mRecycler.offsetPositionRecordsForInsert(n, n2);
        this.requestLayout();
    }
    
    void offsetPositionRecordsForMove(final int n, final int n2) {
        final int qv = 1;
        final int zv = this.mChildHelper.Zv();
        int n3;
        int n4;
        int n5;
        if (n >= n2) {
            n3 = qv;
            n4 = n;
            n5 = n2;
        }
        else {
            n3 = -1;
            n4 = n2;
            n5 = n;
        }
        for (int i = 0; i < zv; ++i) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
            if (childViewHolderInt != null && childViewHolderInt.mPosition >= n5 && childViewHolderInt.mPosition <= n4) {
                if (childViewHolderInt.mPosition != n) {
                    childViewHolderInt.offsetPosition(n3, false);
                }
                else {
                    childViewHolderInt.offsetPosition(n2 - n, false);
                }
                this.mState.Qv = (qv != 0);
            }
        }
        this.mRecycler.offsetPositionRecordsForMove(n, n2);
        this.requestLayout();
    }
    
    void offsetPositionRecordsForRemove(final int n, final int n2, final boolean b) {
        final boolean b2 = true;
        int i = 0;
        final int n3 = n + n2;
        while (i < this.mChildHelper.Zv()) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                if (childViewHolderInt.mPosition < n3) {
                    if (childViewHolderInt.mPosition >= n) {
                        childViewHolderInt.flagRemovedAndOffsetPosition(n - 1, -n2, b);
                        this.mState.Qv = b2;
                    }
                }
                else {
                    childViewHolderInt.offsetPosition(-n2, b);
                    this.mState.Qv = b2;
                }
            }
            ++i;
        }
        this.mRecycler.offsetPositionRecordsForRemove(n, n2, b);
        this.requestLayout();
    }
    
    protected void onAttachedToWindow() {
        boolean b = true;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = b;
        if (this.mFirstLayoutComplete || this.isLayoutRequested()) {
            b = false;
        }
        this.mFirstLayoutComplete = b;
        if (this.mLayout != null) {
            this.mLayout.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            this.mGapWorker = D.Ru.get();
            if (this.mGapWorker == null) {
                this.mGapWorker = new D();
                final Display agL = f.agL((View)this);
                float n = 60.0f;
                if (!this.isInEditMode() && agL != null) {
                    final float refreshRate = agL.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        n = refreshRate;
                    }
                }
                this.mGapWorker.Rs = (long)(1.0E9f / n);
                D.Ru.set(this.mGapWorker);
            }
            this.mGapWorker.aaA(this);
        }
    }
    
    public void onChildAttachedToWindow(final View view) {
    }
    
    public void onChildDetachedFromWindow(final View view) {
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mItemAnimator != null) {
            this.mItemAnimator.XE();
        }
        this.stopScroll();
        this.mIsAttached = false;
        if (this.mLayout != null) {
            this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        this.removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.ZT();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            this.mGapWorker.aas(this);
            this.mGapWorker = null;
        }
    }
    
    public void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        for (int size = this.mItemDecorations.size(), i = 0; i < size; ++i) {
            ((o)this.mItemDecorations.get(i)).onDraw(canvas, this, this.mState);
        }
    }
    
    void onEnterLayoutOrScroll() {
        ++this.mLayoutOrScrollCounter;
    }
    
    void onExitLayoutOrScroll() {
        this.onExitLayoutOrScroll(true);
    }
    
    void onExitLayoutOrScroll(final boolean b) {
        --this.mLayoutOrScrollCounter;
        if (this.mLayoutOrScrollCounter < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (b) {
                this.dispatchContentChangedIfNecessary();
                this.dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }
    
    public boolean onGenericMotionEvent(final MotionEvent motionEvent) {
        if (this.mLayout == null) {
            return false;
        }
        if (!this.mLayoutFrozen) {
            if (motionEvent.getAction() == 8) {
                float axisValue;
                float n;
                if ((motionEvent.getSource() & 0x2) == 0x0) {
                    if ((motionEvent.getSource() & 0x400000) == 0x0) {
                        axisValue = 0.0f;
                        n = 0.0f;
                    }
                    else {
                        axisValue = motionEvent.getAxisValue(26);
                        if (!this.mLayout.canScrollVertically()) {
                            if (!this.mLayout.canScrollHorizontally()) {
                                axisValue = 0.0f;
                                n = 0.0f;
                            }
                            else {
                                n = 0.0f;
                            }
                        }
                        else {
                            n = -axisValue;
                            axisValue = 0.0f;
                        }
                    }
                }
                else {
                    float n2;
                    if (!this.mLayout.canScrollVertically()) {
                        n2 = 0.0f;
                    }
                    else {
                        n2 = -motionEvent.getAxisValue(9);
                    }
                    if (!this.mLayout.canScrollHorizontally()) {
                        n = n2;
                        axisValue = 0.0f;
                    }
                    else {
                        final float axisValue2 = motionEvent.getAxisValue(10);
                        n = n2;
                        axisValue = axisValue2;
                    }
                }
                if (n != 0.0f || axisValue != 0.0f) {
                    this.scrollByInternal((int)(axisValue * this.mScaledHorizontalScrollFactor), (int)(this.mScaledVerticalScrollFactor * n), motionEvent);
                }
            }
            return false;
        }
        return false;
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final float n = 0.5f;
        final int n2 = 1;
        if (this.mLayoutFrozen) {
            return false;
        }
        if (this.dispatchOnItemTouchIntercept(motionEvent)) {
            this.cancelTouch();
            return n2 != 0;
        }
        if (this.mLayout != null) {
            final boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            final boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            final int actionMasked = motionEvent.getActionMasked();
            final int actionIndex = motionEvent.getActionIndex();
            switch (actionMasked) {
                case 0: {
                    if (this.mIgnoreMotionEventTillDown) {
                        this.mIgnoreMotionEventTillDown = false;
                    }
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    final int n3 = (int)(motionEvent.getX() + n);
                    this.mLastTouchX = n3;
                    this.mInitialTouchX = n3;
                    final int n4 = (int)(motionEvent.getY() + n);
                    this.mLastTouchY = n4;
                    this.mInitialTouchY = n4;
                    if (this.mScrollState == 2) {
                        this.getParent().requestDisallowInterceptTouchEvent((boolean)(n2 != 0));
                        this.setScrollState(n2);
                    }
                    this.mNestedOffsets[this.mNestedOffsets[n2] = 0] = 0;
                    int n5;
                    if (!canScrollHorizontally) {
                        n5 = 0;
                    }
                    else {
                        n5 = n2;
                    }
                    if (canScrollVertically) {
                        n5 |= 0x2;
                    }
                    this.startNestedScroll(n5, 0);
                    break;
                }
                case 5: {
                    this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                    final int n6 = (int)(motionEvent.getX(actionIndex) + n);
                    this.mLastTouchX = n6;
                    this.mInitialTouchX = n6;
                    final int n7 = (int)(motionEvent.getY(actionIndex) + n);
                    this.mLastTouchY = n7;
                    this.mInitialTouchY = n7;
                    break;
                }
                case 2: {
                    final int pointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (pointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    final int mLastTouchX = (int)(motionEvent.getX(pointerIndex) + n);
                    final int mLastTouchY = (int)(motionEvent.getY(pointerIndex) + n);
                    if (this.mScrollState == n2) {
                        break;
                    }
                    final int n8 = mLastTouchX - this.mInitialTouchX;
                    final int n9 = mLastTouchY - this.mInitialTouchY;
                    int n10;
                    if (canScrollHorizontally && Math.abs(n8) > this.mTouchSlop) {
                        this.mLastTouchX = mLastTouchX;
                        n10 = n2;
                    }
                    else {
                        n10 = 0;
                    }
                    if (canScrollVertically && Math.abs(n9) > this.mTouchSlop) {
                        this.mLastTouchY = mLastTouchY;
                        n10 = n2;
                    }
                    if (n10 != 0) {
                        this.setScrollState(n2);
                        break;
                    }
                    break;
                }
                case 6: {
                    this.onPointerUp(motionEvent);
                    break;
                }
                case 1: {
                    this.mVelocityTracker.clear();
                    this.stopNestedScroll(0);
                    break;
                }
                case 3: {
                    this.cancelTouch();
                    break;
                }
            }
            boolean b;
            if (this.mScrollState != n2) {
                b = false;
            }
            else {
                b = (n2 != 0);
            }
            return b;
        }
        return false;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        android.support.v4.os.b.asr("RV OnLayout");
        this.dispatchLayout();
        android.support.v4.os.b.asq();
        this.mFirstLayoutComplete = true;
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int n3 = 1073741824;
        final boolean qa = true;
        boolean b = false;
        if (this.mLayout != null) {
            if (!this.mLayout.mAutoMeasure) {
                if (this.mHasFixedSize) {
                    this.mLayout.onMeasure(this.mRecycler, this.mState, n, n2);
                    return;
                }
                if (!this.mAdapterUpdateDuringMeasure) {
                    if (this.mState.Qz) {
                        this.setMeasuredDimension(this.getMeasuredWidth(), this.getMeasuredHeight());
                        return;
                    }
                }
                else {
                    this.eatRequestLayout();
                    this.onEnterLayoutOrScroll();
                    this.processAdapterUpdatesAndSetAnimationFlags();
                    this.onExitLayoutOrScroll();
                    if (!this.mState.Qz) {
                        this.mAdapterHelper.aaq();
                        this.mState.Qt = false;
                    }
                    else {
                        this.mState.Qt = qa;
                    }
                    this.resumeRequestLayout(this.mAdapterUpdateDuringMeasure = false);
                }
                if (this.mAdapter == null) {
                    this.mState.Qx = 0;
                }
                else {
                    this.mState.Qx = this.mAdapter.getItemCount();
                }
                this.eatRequestLayout();
                this.mLayout.onMeasure(this.mRecycler, this.mState, n, n2);
                this.resumeRequestLayout(false);
                this.mState.Qt = false;
            }
            else {
                final int mode = View$MeasureSpec.getMode(n);
                final int mode2 = View$MeasureSpec.getMode(n2);
                if (mode == n3 && mode2 == n3) {
                    b = qa;
                }
                this.mLayout.onMeasure(this.mRecycler, this.mState, n, n2);
                if (b || this.mAdapter == null) {
                    return;
                }
                if (this.mState.Qy == (qa ? 1 : 0)) {
                    this.dispatchLayoutStep1();
                }
                this.mLayout.setMeasureSpecs(n, n2);
                this.mState.QA = qa;
                this.dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(n, n2);
                if (this.mLayout.shouldMeasureTwice()) {
                    this.mLayout.setMeasureSpecs(View$MeasureSpec.makeMeasureSpec(this.getMeasuredWidth(), n3), View$MeasureSpec.makeMeasureSpec(this.getMeasuredHeight(), n3));
                    this.mState.QA = qa;
                    this.dispatchLayoutStep2();
                    this.mLayout.setMeasuredDimensionFromChildren(n, n2);
                }
            }
            return;
        }
        this.defaultOnMeasure(n, n2);
    }
    
    protected boolean onRequestFocusInDescendants(final int n, final Rect rect) {
        return !this.isComputingLayout() && super.onRequestFocusInDescendants(n, rect);
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        if (parcelable instanceof RecyclerView$SavedState) {
            this.mPendingSavedState = (RecyclerView$SavedState)parcelable;
            super.onRestoreInstanceState(this.mPendingSavedState.ago());
            if (this.mLayout != null && this.mPendingSavedState.QB != null) {
                this.mLayout.onRestoreInstanceState(this.mPendingSavedState.QB);
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
    
    protected Parcelable onSaveInstanceState() {
        final RecyclerView$SavedState recyclerView$SavedState = new RecyclerView$SavedState(super.onSaveInstanceState());
        if (this.mPendingSavedState == null) {
            if (this.mLayout == null) {
                recyclerView$SavedState.QB = null;
            }
            else {
                recyclerView$SavedState.QB = this.mLayout.onSaveInstanceState();
            }
        }
        else {
            recyclerView$SavedState.XN(this.mPendingSavedState);
        }
        return (Parcelable)recyclerView$SavedState;
    }
    
    public void onScrollStateChanged(final int n) {
    }
    
    public void onScrolled(final int n, final int n2) {
    }
    
    protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        if (n != n3 || n2 != n4) {
            this.invalidateGlows();
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final float n = 0.5f;
        final int scrollState = 1;
        boolean b = false;
        if (this.mLayoutFrozen || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        if (this.dispatchOnItemTouch(motionEvent)) {
            this.cancelTouch();
            return scrollState != 0;
        }
        if (this.mLayout != null) {
            final boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            final boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            final MotionEvent obtain = MotionEvent.obtain(motionEvent);
            final int actionMasked = motionEvent.getActionMasked();
            final int actionIndex = motionEvent.getActionIndex();
            if (actionMasked == 0) {
                this.mNestedOffsets[this.mNestedOffsets[scrollState] = 0] = 0;
            }
            obtain.offsetLocation((float)this.mNestedOffsets[0], (float)this.mNestedOffsets[scrollState]);
            switch (actionMasked) {
                case 0: {
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    final int n2 = (int)(motionEvent.getX() + n);
                    this.mLastTouchX = n2;
                    this.mInitialTouchX = n2;
                    final int n3 = (int)(motionEvent.getY() + n);
                    this.mLastTouchY = n3;
                    this.mInitialTouchY = n3;
                    int n4;
                    if (!canScrollHorizontally) {
                        n4 = 0;
                    }
                    else {
                        n4 = scrollState;
                    }
                    if (canScrollVertically) {
                        n4 |= 0x2;
                    }
                    this.startNestedScroll(n4, 0);
                    break;
                }
                case 5: {
                    this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                    final int n5 = (int)(motionEvent.getX(actionIndex) + n);
                    this.mLastTouchX = n5;
                    this.mInitialTouchX = n5;
                    final int n6 = (int)(motionEvent.getY(actionIndex) + n);
                    this.mLastTouchY = n6;
                    this.mInitialTouchY = n6;
                    break;
                }
                case 2: {
                    final int pointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (pointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    final int n7 = (int)(motionEvent.getX(pointerIndex) + n);
                    final int n8 = (int)(motionEvent.getY(pointerIndex) + n);
                    int n9 = this.mLastTouchX - n7;
                    int n10 = this.mLastTouchY - n8;
                    if (this.dispatchNestedPreScroll(n9, n10, this.mScrollConsumed, this.mScrollOffset, 0)) {
                        n9 -= this.mScrollConsumed[0];
                        n10 -= this.mScrollConsumed[scrollState];
                        obtain.offsetLocation((float)this.mScrollOffset[0], (float)this.mScrollOffset[scrollState]);
                        final int[] mNestedOffsets = this.mNestedOffsets;
                        mNestedOffsets[0] += this.mScrollOffset[0];
                        final int[] mNestedOffsets2 = this.mNestedOffsets;
                        mNestedOffsets2[scrollState] += this.mScrollOffset[scrollState];
                    }
                    if (this.mScrollState != scrollState) {
                        int n12;
                        if (canScrollHorizontally && Math.abs(n9) > this.mTouchSlop) {
                            int n11;
                            if (n9 <= 0) {
                                n11 = this.mTouchSlop + n9;
                            }
                            else {
                                n11 = n9 - this.mTouchSlop;
                            }
                            n9 = n11;
                            n12 = scrollState;
                        }
                        else {
                            n12 = 0;
                        }
                        if (canScrollVertically && Math.abs(n10) > this.mTouchSlop) {
                            int n13;
                            if (n10 <= 0) {
                                n13 = this.mTouchSlop + n10;
                            }
                            else {
                                n13 = n10 - this.mTouchSlop;
                            }
                            n10 = n13;
                            n12 = scrollState;
                        }
                        if (n12 != 0) {
                            this.setScrollState(scrollState);
                        }
                    }
                    if (this.mScrollState != scrollState) {
                        break;
                    }
                    this.mLastTouchX = n7 - this.mScrollOffset[0];
                    this.mLastTouchY = n8 - this.mScrollOffset[scrollState];
                    int n14;
                    if (!canScrollHorizontally) {
                        n14 = 0;
                    }
                    else {
                        n14 = n9;
                    }
                    int n15;
                    if (!canScrollVertically) {
                        n15 = 0;
                    }
                    else {
                        n15 = n10;
                    }
                    if (this.scrollByInternal(n14, n15, obtain)) {
                        this.getParent().requestDisallowInterceptTouchEvent((boolean)(scrollState != 0));
                    }
                    if (this.mGapWorker == null) {
                        break;
                    }
                    if (n9 == 0 && n10 == 0) {
                        break;
                    }
                    this.mGapWorker.aay(this, n9, n10);
                    break;
                }
                case 6: {
                    this.onPointerUp(motionEvent);
                    break;
                }
                case 1: {
                    this.mVelocityTracker.addMovement(obtain);
                    this.mVelocityTracker.computeCurrentVelocity(1000, (float)this.mMaxFlingVelocity);
                    float n16;
                    if (!canScrollHorizontally) {
                        n16 = 0.0f;
                    }
                    else {
                        n16 = -this.mVelocityTracker.getXVelocity(this.mScrollPointerId);
                    }
                    float n17;
                    if (!canScrollVertically) {
                        n17 = 0.0f;
                    }
                    else {
                        n17 = -this.mVelocityTracker.getYVelocity(this.mScrollPointerId);
                    }
                    if ((n16 == 0.0f && n17 == 0.0f) || !this.fling((int)n16, (int)n17)) {
                        this.setScrollState(0);
                    }
                    this.resetTouch();
                    b = (scrollState != 0);
                    break;
                }
                case 3: {
                    this.cancelTouch();
                    break;
                }
            }
            if (!b) {
                this.mVelocityTracker.addMovement(obtain);
            }
            obtain.recycle();
            return scrollState != 0;
        }
        return false;
    }
    
    void postAnimationRunner() {
        if (!this.mPostedAnimatorRunner && this.mIsAttached) {
            f.agG((View)this, this.mItemAnimatorRunner);
            this.mPostedAnimatorRunner = true;
        }
    }
    
    void recordAnimationInfoIfBouncedHiddenView(final j j, final E e) {
        j.setFlags(0, 8192);
        if (this.mState.Qo && j.isUpdated() && !j.isRemoved() && !j.shouldIgnore()) {
            this.mViewInfoStore.ZN(this.getChangedHolderKey(j), j);
        }
        this.mViewInfoStore.ZK(j, e);
    }
    
    void removeAndRecycleViews() {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.XE();
        }
        if (this.mLayout != null) {
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.clear();
    }
    
    boolean removeAnimatingView(final View view) {
        boolean b = false;
        this.eatRequestLayout();
        final boolean zy = this.mChildHelper.Zy(view);
        if (zy) {
            final j childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.Yy(childViewHolderInt);
            this.mRecycler.YI(childViewHolderInt);
        }
        if (!zy) {
            b = true;
        }
        this.resumeRequestLayout(b);
        return zy;
    }
    
    protected void removeDetachedView(final View view, final boolean b) {
        final j childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached()) {
                if (!childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + this.exceptionLabel());
                }
            }
            else {
                childViewHolderInt.clearTmpDetachFlag();
            }
        }
        view.clearAnimation();
        this.dispatchChildDetached(view);
        super.removeDetachedView(view, b);
    }
    
    public void removeItemDecoration(final o o) {
        boolean willNotDraw = false;
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(o);
        if (this.mItemDecorations.isEmpty()) {
            if (this.getOverScrollMode() == 2) {
                willNotDraw = true;
            }
            this.setWillNotDraw(willNotDraw);
        }
        this.markItemDecorInsetsDirty();
        this.requestLayout();
    }
    
    public void removeOnChildAttachStateChangeListener(final k k) {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.remove(k);
        }
    }
    
    public void removeOnItemTouchListener(final n n) {
        this.mOnItemTouchListeners.remove(n);
        if (this.mActiveOnItemTouchListener == n) {
            this.mActiveOnItemTouchListener = null;
        }
    }
    
    public void removeOnScrollListener(final m m) {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.remove(m);
        }
    }
    
    void repositionShadowingViews() {
        for (int childCount = this.mChildHelper.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mChildHelper.getChildAt(i);
            final j childViewHolder = this.getChildViewHolder(child);
            if (childViewHolder != null && childViewHolder.mShadowingHolder != null) {
                final View itemView = childViewHolder.mShadowingHolder.itemView;
                final int left = child.getLeft();
                final int top = child.getTop();
                if (left != itemView.getLeft() || top != itemView.getTop()) {
                    itemView.layout(left, top, itemView.getWidth() + left, itemView.getHeight() + top);
                }
            }
        }
    }
    
    public void requestChildFocus(final View view, final View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            this.requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }
    
    public boolean requestChildRectangleOnScreen(final View view, final Rect rect, final boolean b) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, b);
    }
    
    public void requestDisallowInterceptTouchEvent(final boolean b) {
        for (int size = this.mOnItemTouchListeners.size(), i = 0; i < size; ++i) {
            ((n)this.mOnItemTouchListeners.get(i)).onRequestDisallowInterceptTouchEvent(b);
        }
        super.requestDisallowInterceptTouchEvent(b);
    }
    
    public void requestLayout() {
        if (this.mEatRequestLayout == 0 && !this.mLayoutFrozen) {
            super.requestLayout();
        }
        else {
            this.mLayoutRequestEaten = true;
        }
    }
    
    void resumeRequestLayout(final boolean b) {
        final int mEatRequestLayout = 1;
        if (this.mEatRequestLayout < mEatRequestLayout) {
            this.mEatRequestLayout = mEatRequestLayout;
        }
        if (!b) {
            this.mLayoutRequestEaten = false;
        }
        if (this.mEatRequestLayout == mEatRequestLayout) {
            if (b && this.mLayoutRequestEaten && !this.mLayoutFrozen && this.mLayout != null && this.mAdapter != null) {
                this.dispatchLayout();
            }
            if (!this.mLayoutFrozen) {
                this.mLayoutRequestEaten = false;
            }
        }
        --this.mEatRequestLayout;
    }
    
    void saveOldPositions() {
        for (int i = 0; i < this.mChildHelper.Zv(); ++i) {
            final j childViewHolderInt = getChildViewHolderInt(this.mChildHelper.Zr(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }
    
    public void scrollBy(int n, int n2) {
        if (this.mLayout == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.mLayoutFrozen) {
            final boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            final boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (canScrollHorizontally || canScrollVertically) {
                if (!canScrollHorizontally) {
                    n = 0;
                }
                if (!canScrollVertically) {
                    n2 = 0;
                }
                this.scrollByInternal(n, n2, null);
            }
        }
    }
    
    boolean scrollByInternal(final int n, final int n2, final MotionEvent motionEvent) {
        final int n3 = 1;
        boolean b = false;
        this.consumePendingUpdateOperations();
        int n4;
        int n5;
        int n6;
        int n7;
        if (this.mAdapter == null) {
            n4 = 0;
            n5 = 0;
            n6 = 0;
            n7 = 0;
        }
        else {
            this.eatRequestLayout();
            this.onEnterLayoutOrScroll();
            android.support.v4.os.b.asr("RV Scroll");
            this.fillRemainingScrollValues(this.mState);
            int scrollHorizontallyBy;
            if (n == 0) {
                scrollHorizontallyBy = 0;
                n7 = 0;
            }
            else {
                scrollHorizontallyBy = this.mLayout.scrollHorizontallyBy(n, this.mRecycler, this.mState);
                n7 = n - scrollHorizontallyBy;
            }
            int scrollVerticallyBy;
            int n8;
            if (n2 == 0) {
                scrollVerticallyBy = 0;
                n8 = 0;
            }
            else {
                scrollVerticallyBy = this.mLayout.scrollVerticallyBy(n2, this.mRecycler, this.mState);
                n8 = n2 - scrollVerticallyBy;
            }
            android.support.v4.os.b.asq();
            this.repositionShadowingViews();
            this.onExitLayoutOrScroll();
            this.resumeRequestLayout(false);
            n6 = n8;
            n5 = scrollHorizontallyBy;
            n4 = scrollVerticallyBy;
        }
        if (!this.mItemDecorations.isEmpty()) {
            this.invalidate();
        }
        if (!this.dispatchNestedScroll(n5, n4, n7, n6, this.mScrollOffset, 0)) {
            if (this.getOverScrollMode() != 2) {
                if (motionEvent != null && !android.support.v4.view.x.ahv(motionEvent, 8194)) {
                    this.pullGlows(motionEvent.getX(), n7, motionEvent.getY(), n6);
                }
                this.considerReleasingGlowsOnScroll(n, n2);
            }
        }
        else {
            this.mLastTouchX -= this.mScrollOffset[0];
            this.mLastTouchY -= this.mScrollOffset[n3];
            if (motionEvent != null) {
                motionEvent.offsetLocation((float)this.mScrollOffset[0], (float)this.mScrollOffset[n3]);
            }
            final int[] mNestedOffsets = this.mNestedOffsets;
            mNestedOffsets[0] += this.mScrollOffset[0];
            final int[] mNestedOffsets2 = this.mNestedOffsets;
            mNestedOffsets2[n3] += this.mScrollOffset[n3];
        }
        if (n5 != 0 || n4 != 0) {
            this.dispatchOnScrolled(n5, n4);
        }
        if (!this.awakenScrollBars()) {
            this.invalidate();
        }
        if (n5 != 0 || n4 != 0) {
            b = (n3 != 0);
        }
        return b;
    }
    
    public void scrollTo(final int n, final int n2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }
    
    public void scrollToPosition(final int n) {
        if (this.mLayoutFrozen) {
            return;
        }
        this.stopScroll();
        if (this.mLayout != null) {
            this.mLayout.scrollToPosition(n);
            this.awakenScrollBars();
            return;
        }
        Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    
    public void sendAccessibilityEventUnchecked(final AccessibilityEvent accessibilityEvent) {
        if (!this.shouldDeferAccessibilityEvent(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }
    
    public void setAccessibilityDelegateCompat(final z mAccessibilityDelegate) {
        f.agu((View)this, this.mAccessibilityDelegate = mAccessibilityDelegate);
    }
    
    public void setAdapter(final q q) {
        this.setLayoutFrozen(false);
        this.setAdapterInternal(q, false, true);
        this.requestLayout();
    }
    
    public void setChildDrawingOrderCallback(final a mChildDrawingOrderCallback) {
        if (mChildDrawingOrderCallback != this.mChildDrawingOrderCallback) {
            this.mChildDrawingOrderCallback = mChildDrawingOrderCallback;
            this.setChildrenDrawingOrderEnabled(this.mChildDrawingOrderCallback != null);
        }
    }
    
    boolean setChildImportantForAccessibilityInternal(final j j, final int mPendingAccessibilityState) {
        if (!this.isComputingLayout()) {
            f.agC(j.itemView, mPendingAccessibilityState);
            return true;
        }
        j.mPendingAccessibilityState = mPendingAccessibilityState;
        this.mPendingAccessibilityImportanceChange.add(j);
        return false;
    }
    
    public void setClipToPadding(final boolean mClipToPadding) {
        if (mClipToPadding != this.mClipToPadding) {
            this.invalidateGlows();
        }
        super.setClipToPadding(this.mClipToPadding = mClipToPadding);
        if (this.mFirstLayoutComplete) {
            this.requestLayout();
        }
    }
    
    void setDataSetChangedAfterLayout() {
        this.mDataSetHasChangedAfterLayout = true;
        this.markKnownViewsInvalid();
    }
    
    public void setHasFixedSize(final boolean mHasFixedSize) {
        this.mHasFixedSize = mHasFixedSize;
    }
    
    public void setItemAnimator(final android.support.v7.widget.b mItemAnimator) {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.XE();
            this.mItemAnimator.Xq(null);
        }
        this.mItemAnimator = mItemAnimator;
        if (this.mItemAnimator != null) {
            this.mItemAnimator.Xq(this.mItemAnimatorListener);
        }
    }
    
    public void setItemViewCacheSize(final int n) {
        this.mRecycler.Yt(n);
    }
    
    public void setLayoutFrozen(final boolean b) {
        final boolean b2 = true;
        if (b != this.mLayoutFrozen) {
            this.assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
            if (b) {
                final long uptimeMillis = SystemClock.uptimeMillis();
                this.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutFrozen = b2;
                this.mIgnoreMotionEventTillDown = b2;
                this.stopScroll();
            }
            else {
                this.mLayoutFrozen = false;
                if (this.mLayoutRequestEaten && this.mLayout != null && this.mAdapter != null) {
                    this.requestLayout();
                }
                this.mLayoutRequestEaten = false;
            }
        }
    }
    
    public void setLayoutManager(final p mLayout) {
        if (mLayout != this.mLayout) {
            this.stopScroll();
            if (this.mLayout == null) {
                this.mRecycler.clear();
            }
            else {
                if (this.mItemAnimator != null) {
                    this.mItemAnimator.XE();
                }
                this.mLayout.removeAndRecycleAllViews(this.mRecycler);
                this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
                this.mRecycler.clear();
                if (this.mIsAttached) {
                    this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
                }
                this.mLayout.setRecyclerView(null);
                this.mLayout = null;
            }
            this.mChildHelper.ZD();
            this.mLayout = mLayout;
            if (mLayout != null) {
                if (mLayout.mRecyclerView != null) {
                    throw new IllegalArgumentException("LayoutManager " + mLayout + " is already attached to a RecyclerView:" + mLayout.mRecyclerView.exceptionLabel());
                }
                this.mLayout.setRecyclerView(this);
                if (this.mIsAttached) {
                    this.mLayout.dispatchAttachedToWindow(this);
                }
            }
            this.mRecycler.Yv();
            this.requestLayout();
        }
    }
    
    public void setNestedScrollingEnabled(final boolean nestedScrollingEnabled) {
        this.getScrollingChildHelper().setNestedScrollingEnabled(nestedScrollingEnabled);
    }
    
    public void setOnFlingListener(final d mOnFlingListener) {
        this.mOnFlingListener = mOnFlingListener;
    }
    
    public void setOnScrollListener(final m mScrollListener) {
        this.mScrollListener = mScrollListener;
    }
    
    public void setPreserveFocusAfterLayout(final boolean mPreserveFocusAfterLayout) {
        this.mPreserveFocusAfterLayout = mPreserveFocusAfterLayout;
    }
    
    public void setRecycledViewPool(final t recycledViewPool) {
        this.mRecycler.setRecycledViewPool(recycledViewPool);
    }
    
    public void setRecyclerListener(final l mRecyclerListener) {
        this.mRecyclerListener = mRecyclerListener;
    }
    
    void setScrollState(final int mScrollState) {
        if (mScrollState != this.mScrollState) {
            if ((this.mScrollState = mScrollState) != 2) {
                this.stopScrollersInternal();
            }
            this.dispatchOnScrollStateChanged(mScrollState);
        }
    }
    
    public void setScrollingTouchSlop(final int n) {
        final ViewConfiguration value = ViewConfiguration.get(this.getContext());
        switch (n) {
            default: {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + n + "; using default value");
            }
            case 0: {
                this.mTouchSlop = value.getScaledTouchSlop();
                break;
            }
            case 1: {
                this.mTouchSlop = value.getScaledPagingTouchSlop();
                break;
            }
        }
    }
    
    public void setViewCacheExtension(final r viewCacheExtension) {
        this.mRecycler.setViewCacheExtension(viewCacheExtension);
    }
    
    boolean shouldDeferAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        if (!this.isComputingLayout()) {
            return false;
        }
        int afY;
        if (accessibilityEvent == null) {
            afY = 0;
        }
        else {
            afY = android.support.v4.view.a.n.afY(accessibilityEvent);
        }
        if (afY == 0) {
            afY = 0;
        }
        this.mEatenAccessibilityChangeFlags |= afY;
        return true;
    }
    
    public void smoothScrollBy(final int n, final int n2) {
        this.smoothScrollBy(n, n2, null);
    }
    
    public void smoothScrollBy(int n, int n2, final Interpolator interpolator) {
        if (this.mLayout == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.mLayoutFrozen) {
            if (!this.mLayout.canScrollHorizontally()) {
                n = 0;
            }
            if (!this.mLayout.canScrollVertically()) {
                n2 = 0;
            }
            if (n != 0 || n2 != 0) {
                this.mViewFlinger.smoothScrollBy(n, n2, interpolator);
            }
        }
    }
    
    public void smoothScrollToPosition(final int n) {
        if (this.mLayoutFrozen) {
            return;
        }
        if (this.mLayout != null) {
            this.mLayout.smoothScrollToPosition(this, this.mState, n);
            return;
        }
        Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    
    public boolean startNestedScroll(final int n) {
        return this.getScrollingChildHelper().startNestedScroll(n);
    }
    
    public boolean startNestedScroll(final int n, final int n2) {
        return this.getScrollingChildHelper().startNestedScroll(n, n2);
    }
    
    public void stopNestedScroll() {
        this.getScrollingChildHelper().stopNestedScroll();
    }
    
    public void stopNestedScroll(final int n) {
        this.getScrollingChildHelper().stopNestedScroll(n);
    }
    
    public void stopScroll() {
        this.setScrollState(0);
        this.stopScrollersInternal();
    }
    
    public void swapAdapter(final q q, final boolean b) {
        this.setLayoutFrozen(false);
        this.setAdapterInternal(q, true, b);
        this.setDataSetChangedAfterLayout();
        this.requestLayout();
    }
    
    void viewRangeUpdate(final int n, final int n2, final Object o) {
        final int zv = this.mChildHelper.Zv();
        final int n3 = n + n2;
        for (int i = 0; i < zv; ++i) {
            final View zr = this.mChildHelper.Zr(i);
            final j childViewHolderInt = getChildViewHolderInt(zr);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= n && childViewHolderInt.mPosition < n3) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(o);
                ((i)zr.getLayoutParams()).QI = true;
            }
        }
        this.mRecycler.Yx(n, n2);
    }
}
