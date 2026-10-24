.class public Lcom/hzbhd/common/ui/paged/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/ui/paged/PagedView$SavedState;,
        Lcom/hzbhd/common/ui/paged/PagedView$ScrollInterpolator;,
        Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;,
        Lcom/hzbhd/common/ui/paged/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field private static final ANIM_TAG_KEY:I = 0x64

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x12c

.field private static REORDERING_DROP_REPOSITION_DURATION:I = 0xc8

.field static REORDERING_REORDER_REPOSITION_DURATION:I = 0x12c

.field private static REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I = 0x50

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mCancelTap:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field protected mChildCountOnLastLayout:I

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field protected mDensity:F

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mFreeScroll:Z

.field private mFreeScrollMaxScrollX:I

.field private mFreeScrollMinScrollX:I

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected final mIsRtl:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field private mPageScrolls:[I

.field mPageSpacing:I

.field private mPageSwitchListener:Lcom/hzbhd/common/ui/paged/PagedView$PageSwitchListener;

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field private mScrollAble:Z

.field protected mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

.field mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 191
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 192
    sput-object v1, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    new-array v0, v0, [I

    .line 193
    sput-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpIntPoint:[I

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/paged/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 214
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScroll:Z

    const/4 p2, -0x1

    .line 86
    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMinScrollX:I

    .line 87
    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMaxScrollX:I

    const/4 p3, 0x1

    .line 99
    iput-boolean p3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFirstLayout:Z

    const/16 v0, -0x3e9

    .line 103
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mRestorePage:I

    .line 106
    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    .line 111
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    .line 123
    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastScreenCenter:I

    .line 137
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    .line 138
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceScreenScrolled:Z

    .line 144
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCellCountX:I

    .line 145
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCellCountY:I

    .line 147
    iput-boolean p3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mAllowOverScroll:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 148
    iput-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    .line 153
    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    .line 158
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFadeInAdjacentScreens:Z

    .line 160
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsPageMoving:Z

    .line 162
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mWasInOverscroll:Z

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 175
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMinScale:F

    .line 176
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mUseMinScale:Z

    .line 179
    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverIndex:I

    .line 181
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mReorderingStarted:Z

    .line 186
    iput p3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 196
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 199
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScrollAble:Z

    .line 215
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 216
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    .line 217
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->init()V

    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->abortAnimation()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 382
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    :cond_0
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1777
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1778
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 9

    .line 2032
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2033
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2034
    sget v1, Lcom/hzbhd/common/ui/paged/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2035
    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const-string/jumbo v7, "translationX"

    .line 2036
    invoke-static {v2, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    new-array v4, v3, [F

    aput v6, v4, v5

    const-string/jumbo v6, "translationY"

    .line 2037
    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    new-array v6, v3, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v5

    const-string/jumbo v8, "scaleX"

    .line 2038
    invoke-static {v4, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    new-array v3, v3, [F

    aput v7, v3, v5

    const-string/jumbo v5, "scaleY"

    .line 2039
    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2035
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2040
    new-instance v1, Lcom/hzbhd/common/ui/paged/PagedView$3;

    invoke-direct {v1, p0}, Lcom/hzbhd/common/ui/paged/PagedView$3;-><init>(Lcom/hzbhd/common/ui/paged/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2046
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 1859
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private forceFinishScroller()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->forceFinished(Z)V

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    return-void
.end method

.method private getNearestHoverOverPageIndex()I
    .locals 6

    .line 1438
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1439
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    .line 1440
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1441
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getFreeScrollPageRange([I)V

    const v1, 0x7fffffff

    .line 1443
    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1444
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    :goto_0
    iget-object v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_1

    .line 1445
    invoke-virtual {p0, v3}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1446
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    sub-int v4, v0, v5

    .line 1447
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_0

    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    .line 1196
    sget-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1197
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1196
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1198
    sget-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 2

    .line 268
    sget-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 269
    sget-object p2, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 271
    sget-object p1, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object p2, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 272
    sget-object p1, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    return-object p1
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 3

    .line 260
    sget-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    .line 261
    aput p3, v0, p2

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    sget-object v0, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 263
    sget-object p3, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    aget v0, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    aput v0, p3, v1

    .line 264
    sget-object p3, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    aget v0, p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    aput v0, p3, p2

    .line 265
    sget-object p1, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpPoint:[F

    return-object p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1794
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1795
    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1800
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    .line 1801
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    const/4 v1, 0x0

    .line 1802
    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionXRemainder:F

    .line 1803
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    .line 1804
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1805
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1785
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1786
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1787
    iput-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private removeMarkerForView(I)V
    .locals 1

    .line 921
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator(II)V

    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .line 1725
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->releaseVelocityTracker()V

    .line 1726
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->endReordering()V

    const/4 v0, 0x0

    .line 1727
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCancelTap:Z

    .line 1728
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    const/4 v0, -0x1

    .line 1729
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 551
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1000

    .line 554
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 555
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 557
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 558
    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaxScrollX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    const/4 v1, 0x0

    .line 559
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 561
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .locals 5

    .line 1418
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScroll:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1421
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateFreescrollBounds()V

    .line 1422
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getFreeScrollPageRange([I)V

    .line 1423
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    if-ge v1, v4, :cond_0

    .line 1424
    aget v1, v2, v3

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1425
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v2, v0

    if-le v1, v3, :cond_1

    .line 1426
    aget v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->setCurrentPage(I)V

    :cond_1
    :goto_0
    xor-int/2addr p1, v0

    .line 1430
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->setEnableOverscroll(Z)V

    return-void
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 277
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownScrollX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragViewBaselineLeft:F

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    .line 278
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 279
    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionY:F

    sub-float/2addr v1, v2

    .line 280
    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 281
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 449
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator(II)V

    return-void
.end method

.method private validateNewPage(I)I
    .locals 4

    .line 396
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScroll:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getFreeScrollPageRange([I)V

    .line 398
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v0, v2

    aget v0, v0, v1

    .line 399
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 398
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1116
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1117
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 1120
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 1121
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 1124
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1125
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addFullScreenPage(Landroid/view/View;)V
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->generateDefaultLayoutParams()Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 643
    iput-boolean v1, v0, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    const/4 v1, 0x0

    .line 644
    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    .line 1340
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 638
    instance-of p1, p1, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    return p1
.end method

.method public computeScroll()V
    .locals 0

    .line 599
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 570
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v2}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->getCurrX()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v2}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->getCurrY()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 572
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScroll:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScaleX()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 573
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v3}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 574
    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v2}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollTo(II)V

    .line 576
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->invalidate()V

    return v1

    .line 578
    :cond_3
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 579
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->sendScrollAccessibilityEvent()V

    .line 581
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    invoke-direct {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    .line 582
    iput v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    .line 583
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->notifyPageSwitchListener()V

    .line 587
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    if-nez v0, :cond_4

    .line 588
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->pageEndMoving()V

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->onPostReorderingAnimationCompleted()V

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1301
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 2

    .line 1310
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1314
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1315
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int v0, v1

    float-to-int p1, p1

    .line 1316
    invoke-direct {p0, v0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1318
    :cond_1
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 1320
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x1

    if-le p1, p2, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1325
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    .line 1326
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    iget p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    .line 1327
    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    const/4 p1, 0x0

    .line 1328
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionXRemainder:F

    .line 1329
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchX:F

    .line 1330
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSmoothingTime:F

    .line 1331
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->onScrollInteractionBegin()V

    .line 1332
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->pageBeginMoving()V

    :cond_3
    return-void
.end method

.method public didAbleScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2217
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScrollAble:Z

    return-void
.end method

.method public disableFreeScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1403
    invoke-direct {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->setEnableFreeScroll(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1028
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1030
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1031
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v2

    add-int/2addr v2, v1

    .line 1033
    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastScreenCenter:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    iget-boolean v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceScreenScrolled:Z

    if-eqz v1, :cond_1

    .line 1036
    :cond_0
    iput-boolean v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceScreenScrolled:Z

    .line 1037
    invoke-virtual {p0, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->screenScrolled(I)V

    .line 1038
    iput v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastScreenCenter:I

    .line 1041
    :cond_1
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getVisiblePages([I)V

    .line 1042
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v1, v3

    const/4 v4, 0x1

    .line 1043
    aget v1, v1, v4

    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 1045
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getDrawingTime()J

    move-result-wide v5

    .line 1047
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1048
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1049
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1048
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_5

    .line 1053
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1054
    iget-object v7, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    if-ne v4, v7, :cond_2

    goto :goto_1

    .line 1055
    :cond_2
    iget-boolean v7, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v7, :cond_3

    if-gt v2, v0, :cond_4

    if-gt v0, v1, :cond_4

    .line 1056
    invoke-virtual {p0, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1057
    :cond_3
    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/hzbhd/common/ui/paged/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1061
    :cond_5
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1062
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/hzbhd/common/ui/paged/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1065
    :cond_6
    iput-boolean v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2203
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->enableScroll()V

    .line 2205
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScrollAble:Z

    if-eqz v0, :cond_1

    .line 2206
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1101
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1105
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 1106
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    return v0

    .line 1110
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public enableFreeScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 1399
    invoke-direct {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->setEnableFreeScroll(Z)V

    return-void
.end method

.method public enableScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 2213
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScrollAble:Z

    return-void
.end method

.method endReordering()V
    .locals 3

    .line 2109
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mReorderingStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2110
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mReorderingStarted:Z

    .line 2114
    new-instance v1, Lcom/hzbhd/common/ui/paged/PagedView$4;

    invoke-direct {v1, p0}, Lcom/hzbhd/common/ui/paged/PagedView$4;-><init>(Lcom/hzbhd/common/ui/paged/PagedView;)V

    .line 2121
    new-instance v2, Lcom/hzbhd/common/ui/paged/PagedView$5;

    invoke-direct {v2, p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView$5;-><init>(Lcom/hzbhd/common/ui/paged/PagedView;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2128
    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2131
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(II)V

    .line 2133
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->animateDragViewToOriginalPosition()V

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 1139
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 1143
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    .line 1149
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1150
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1151
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->generateDefaultLayoutParams()Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;
    .locals 2

    .line 628
    new-instance v0, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 633
    new-instance v0, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;
    .locals 2

    .line 623
    new-instance v0, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 955
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentPage()I
    .locals 1

    .line 339
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 3

    const/4 v0, 0x0

    .line 963
    aput v0, p1, v0

    .line 964
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    return-void
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 3

    .line 1382
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageScrolls:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 1385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    .line 1389
    iget-boolean v2, v2, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v2, :cond_2

    .line 1390
    iget-boolean v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingLeft()I

    move-result v1

    .line 1393
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageScrolls:[I

    aget p1, v2, p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result v1

    add-int/2addr p1, v1

    .line 1394
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method getNextPage()I
    .locals 2

    .line 346
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    :goto_0
    return v0
.end method

.method public getNormalChildHeight()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getPageCount()I
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 1983
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1984
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1986
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 8

    .line 1822
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1823
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 1825
    invoke-virtual {p0, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1826
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1827
    div-int/lit8 v5, v5, 0x2

    .line 1828
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    sub-int/2addr v6, v0

    .line 1829
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_0

    move v3, v4

    move v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method getRestorePage()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mRestorePage:I

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 2

    .line 1372
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1375
    :cond_0
    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 3

    .line 1347
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1349
    invoke-virtual {p0, p3}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 1350
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-gez p1, :cond_0

    .line 1355
    iget-boolean v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-boolean v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v1, p3, -0x1

    :cond_2
    if-ltz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_3

    goto :goto_0

    .line 1362
    :cond_3
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_1

    .line 1360
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget p3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    add-int/2addr p2, p3

    :goto_1
    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    .line 1366
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    .line 1367
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method getViewportHeight()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 10

    .line 968
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    .line 969
    sget-object v1, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpIntPoint:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    aput v3, v1, v3

    const/4 v1, -0x1

    .line 971
    aput v1, p1, v3

    .line 972
    aput v1, p1, v2

    if-lez v0, :cond_4

    .line 975
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v0

    .line 978
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v4

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_3

    .line 980
    invoke-virtual {p0, v5}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 982
    sget-object v8, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpIntPoint:[I

    aput v3, v8, v3

    .line 983
    aget v9, v8, v3

    if-le v9, v0, :cond_0

    .line 984
    aget v7, p1, v3

    if-ne v7, v1, :cond_3

    goto :goto_1

    .line 991
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v8, v3

    .line 992
    sget-object v7, Lcom/hzbhd/common/ui/paged/PagedView;->sTmpIntPoint:[I

    aget v7, v7, v3

    if-gez v7, :cond_1

    .line 993
    aget v7, p1, v3

    if-ne v7, v1, :cond_3

    goto :goto_1

    .line 1000
    :cond_1
    aget v6, p1, v3

    if-gez v6, :cond_2

    .line 1001
    aput v5, p1, v3

    :cond_2
    move v6, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1005
    :cond_3
    aput v6, p1, v2

    goto :goto_2

    .line 1007
    :cond_4
    aput v1, p1, v3

    .line 1008
    aput v1, p1, v2

    :goto_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3

    .line 1187
    iget-boolean p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1188
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingLeft()I

    move-result v2

    add-int/2addr p2, v2

    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    add-int/2addr p2, v2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1190
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v2

    add-int/2addr p2, v2

    .line 1191
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3

    .line 1176
    iget-boolean p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1177
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v2

    add-int/2addr p2, v2

    .line 1178
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1180
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingLeft()I

    move-result v2

    add-int/2addr p2, v2

    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    add-int/2addr p2, v2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 3

    .line 224
    new-instance v0, Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hzbhd/common/ui/paged/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    .line 225
    new-instance v0, Lcom/hzbhd/common/ui/paged/PagedView$ScrollInterpolator;

    invoke-direct {v0}, Lcom/hzbhd/common/ui/paged/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    const/4 v1, 0x1

    .line 227
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCenterPagesVertically:Z

    .line 229
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchSlop:I

    .line 231
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaximumVelocity:I

    .line 232
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDensity:F

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 234
    iput v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFlingThresholdVelocity:I

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 235
    iput v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMinFlingVelocity:I

    const v2, 0x44bb8000    # 1500.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 236
    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMinSnapVelocity:I

    .line 237
    invoke-virtual {p0, p0}, Lcom/hzbhd/common/ui/paged/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->setWillNotDraw(Z)V

    return-void
.end method

.method protected isPageMoving()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 2

    .line 2100
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsReordering:Z

    if-eqz p1, :cond_1

    .line 2102
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSwitchListener:Lcom/hzbhd/common/ui/paged/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/hzbhd/common/ui/paged/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 247
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 250
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 905
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator(II)V

    const/4 p1, 0x1

    .line 908
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceScreenScrolled:Z

    .line 909
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateFreescrollBounds()V

    .line 910
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->invalidate()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 915
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceScreenScrolled:Z

    .line 916
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateFreescrollBounds()V

    .line 917
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->invalidate()V

    return-void
.end method

.method public onEndReordering()V
    .locals 1

    const/4 v0, 0x0

    .line 2071
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsReordering:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1748
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 1753
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1755
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v3

    goto :goto_0

    .line 1757
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    .line 1758
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_7

    .line 1761
    :cond_2
    iget-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_4

    cmpg-float p1, v2, v3

    if-gez p1, :cond_5

    goto :goto_1

    :cond_3
    if-gtz v4, :cond_4

    cmpl-float p1, v2, v3

    if-lez p1, :cond_5

    :cond_4
    :goto_1
    move v5, v1

    :cond_5
    if-eqz v5, :cond_6

    .line 1764
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollRight()Z

    goto :goto_2

    .line 1766
    :cond_6
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollLeft()V

    :goto_2
    return v1

    .line 1773
    :cond_7
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2169
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2170
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 2142
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2143
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2144
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    const/16 v0, 0x1000

    .line 2145
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2147
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x2000

    .line 2148
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2150
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2155
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2156
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1208
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1211
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1218
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1219
    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    .line 1288
    :cond_2
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1289
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_2

    .line 1230
    :cond_3
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 1231
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1284
    :cond_4
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->resetTouchState()V

    goto/16 :goto_2

    .line 1242
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1245
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionX:F

    .line 1246
    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionY:F

    .line 1247
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownScrollX:F

    .line 1248
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    .line 1249
    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    .line 1250
    invoke-direct {p0, p0, v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1251
    aget v1, v0, v4

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionX:F

    .line 1252
    aget v0, v0, v2

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionY:F

    const/4 v0, 0x0

    .line 1253
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionXRemainder:F

    .line 1254
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    .line 1255
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    .line 1262
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->getFinalX()I

    move-result p1

    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->getCurrX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1263
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchSlop:I

    div-int/2addr v0, v3

    if-ge p1, v0, :cond_6

    goto :goto_0

    :cond_6
    move p1, v4

    goto :goto_1

    :cond_7
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_8

    .line 1266
    iput v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    .line 1267
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScroll:Z

    if-nez p1, :cond_a

    .line 1268
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->setCurrentPage(I)V

    .line 1269
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->pageEndMoving()V

    goto :goto_2

    .line 1272
    :cond_8
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionX:F

    float-to-int p1, p1

    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionY:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1273
    iput v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    goto :goto_2

    .line 1275
    :cond_9
    iput v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    .line 1297
    :cond_a
    :goto_2
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move v2, v4

    :goto_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 767
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v1

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result v2

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetY()I

    move-result v3

    .line 773
    iget-object v4, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 775
    iget-boolean v4, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 776
    :goto_0
    iget-boolean v6, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v1

    .line 777
    :goto_1
    iget-boolean v8, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    .line 779
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    .line 781
    invoke-virtual {v0, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    .line 784
    iget-boolean v10, v10, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v10, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingLeft()I

    move-result v10

    :goto_3
    add-int/2addr v10, v2

    .line 785
    iget-object v11, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageScrolls:[I

    if-eqz v11, :cond_5

    iget v11, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mChildCountOnLastLayout:I

    if-eq v1, v11, :cond_6

    .line 786
    :cond_5
    new-array v11, v1, [I

    iput-object v11, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageScrolls:[I

    :cond_6
    :goto_4
    if-eq v4, v6, :cond_e

    .line 790
    invoke-virtual {v0, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 791
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_d

    .line 792
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    .line 794
    iget-boolean v13, v12, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v13, :cond_7

    move v13, v3

    goto :goto_5

    .line 797
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    .line 798
    iget-boolean v14, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mCenterPagesVertically:Z

    if-eqz v14, :cond_8

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportHeight()I

    move-result v14

    iget-object v15, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    iget-object v15, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v8

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 803
    :cond_8
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 804
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 808
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v9, v10, v16

    add-int/2addr v15, v13

    .line 807
    invoke-virtual {v11, v10, v13, v9, v15}, Landroid/view/View;->layout(IIII)V

    .line 810
    iget-boolean v9, v12, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v9, :cond_9

    move v9, v5

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingLeft()I

    move-result v9

    .line 811
    :goto_6
    iget-object v11, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageScrolls:[I

    sub-int v9, v10, v9

    sub-int/2addr v9, v2

    aput v9, v11, v4

    .line 813
    iget v9, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    add-int v11, v4, v7

    if-eq v11, v6, :cond_a

    .line 816
    invoke-virtual {v0, v11}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 823
    :goto_7
    iget-boolean v12, v12, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v12, :cond_b

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingLeft()I

    move-result v9

    goto :goto_8

    :cond_b
    if-eqz v11, :cond_c

    .line 825
    iget-boolean v11, v11, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v11, :cond_c

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingRight()I

    move-result v9

    :cond_c
    :goto_8
    add-int/2addr v14, v9

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildGap()I

    move-result v9

    add-int/2addr v14, v9

    add-int/2addr v10, v14

    :cond_d
    add-int/2addr v4, v7

    goto/16 :goto_4

    .line 833
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 836
    invoke-virtual {v2}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 837
    new-instance v3, Lcom/hzbhd/common/ui/paged/PagedView$1;

    invoke-direct {v3, v0}, Lcom/hzbhd/common/ui/paged/PagedView$1;-><init>(Lcom/hzbhd/common/ui/paged/PagedView;)V

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_9

    .line 854
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateMaxScrollX()V

    .line 857
    :goto_9
    iget-boolean v2, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mFirstLayout:Z

    if-eqz v2, :cond_10

    iget v2, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-ltz v2, :cond_10

    if-ge v2, v1, :cond_10

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateCurrentPageScroll()V

    .line 859
    iput-boolean v5, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mFirstLayout:Z

    .line 862
    :cond_10
    iget-object v2, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v2}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mChildCountOnLastLayout:I

    if-eq v2, v1, :cond_12

    .line 863
    iget v2, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mRestorePage:I

    const/16 v3, -0x3e9

    if-eq v2, v3, :cond_11

    .line 864
    invoke-virtual {v0, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->setCurrentPage(I)V

    .line 865
    iput v3, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mRestorePage:I

    goto :goto_a

    .line 867
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->setCurrentPage(I)V

    .line 870
    :cond_12
    :goto_a
    iput v1, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mChildCountOnLastLayout:I

    const/4 v1, 0x1

    .line 872
    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 653
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 660
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 661
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 662
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 663
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 666
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 667
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 673
    iget-boolean v5, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mUseMinScale:Z

    if-eqz v5, :cond_1

    int-to-float v4, v4

    .line 674
    iget v5, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMinScale:F

    div-float v6, v4, v5

    float-to-int v6, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    :cond_1
    move v6, v1

    move v4, v3

    .line 680
    :goto_0
    iget-object v5, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mViewport:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_b

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-lez v1, :cond_a

    if-gtz v3, :cond_3

    goto/16 :goto_4

    .line 698
    :cond_3
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 699
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 709
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_1
    if-ge v7, v0, :cond_9

    .line 712
    invoke-virtual {p0, v7}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 713
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    .line 714
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;

    .line 721
    iget-boolean v5, v3, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->isFullScreenPage:Z

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v5, :cond_6

    .line 722
    iget v5, v3, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->width:I

    const/high16 v9, -0x80000000

    const/4 v10, -0x2

    if-ne v5, v10, :cond_4

    move v5, v9

    goto :goto_2

    :cond_4
    move v5, v8

    .line 728
    :goto_2
    iget v3, v3, Lcom/hzbhd/common/ui/paged/PagedView$LayoutParams;->height:I

    if-ne v3, v10, :cond_5

    move v8, v9

    .line 734
    :cond_5
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v9, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v9

    iget-object v9, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v9

    .line 736
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportHeight()I

    move-result v9

    sub-int/2addr v9, p1

    iget-object v10, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 738
    iput v9, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNormalChildHeight:I

    move v11, v8

    move v8, v5

    move v5, v11

    goto :goto_3

    .line 743
    :cond_6
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v3

    iget-object v5, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    .line 744
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportHeight()I

    move-result v9

    move v5, v8

    :goto_3
    if-nez v1, :cond_7

    move v1, v3

    .line 751
    :cond_7
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 753
    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 754
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->measure(II)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 757
    :cond_9
    invoke-virtual {p0, v6, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->setMeasuredDimension(II)V

    return-void

    .line 689
    :cond_a
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 683
    :cond_b
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 0

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mWasInOverscroll:Z

    return-void
.end method

.method onPostReorderingAnimationCompleted()V
    .locals 2

    .line 2062
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2063
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 2065
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2066
    iput-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1084
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    .line 1089
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    return-void
.end method

.method public onStartReordering()V
    .locals 1

    const/4 v0, 0x4

    .line 2052
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    const/4 v0, 0x1

    .line 2053
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsReordering:Z

    .line 2057
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1460
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1463
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1465
    :cond_0
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v2, :cond_a

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_a

    .line 1716
    :cond_1
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1717
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_a

    .line 1709
    :cond_2
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    if-ne p1, v2, :cond_3

    .line 1710
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToDestination()V

    .line 1712
    :cond_3
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->resetTouchState()V

    goto/16 :goto_a

    .line 1497
    :cond_4
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    const/4 v4, -0x1

    if-ne v0, v2, :cond_7

    .line 1499
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_5

    return v2

    .line 1503
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1504
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v0, v3

    sub-float/2addr v0, p1

    .line 1506
    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    .line 1511
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    .line 1512
    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchX:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchX:F

    .line 1513
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSmoothingTime:F

    float-to-int v3, v0

    .line 1514
    invoke-virtual {p0, v3, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollBy(II)V

    .line 1515
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    int-to-float p1, v3

    sub-float/2addr v0, p1

    .line 1516
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_a

    .line 1518
    :cond_6
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->awakenScrollBars()Z

    goto/16 :goto_a

    :cond_7
    if-ne v0, v3, :cond_9

    .line 1522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    .line 1527
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    invoke-direct {p0, p0, v0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object p1

    .line 1528
    aget v0, p1, v1

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionX:F

    .line 1529
    aget p1, p1, v2

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionY:F

    .line 1530
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1533
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1540
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNearestHoverOverPageIndex()I

    move-result v0

    if-le v0, v4, :cond_8

    .line 1541
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-eq v0, v3, :cond_8

    .line 1542
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aput v1, v3, v1

    .line 1543
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v3, v2

    .line 1544
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3}, Lcom/hzbhd/common/ui/paged/PagedView;->getFreeScrollPageRange([I)V

    .line 1545
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v3, v1

    if-gt v1, v0, :cond_25

    aget v1, v3, v2

    if-gt v0, v1, :cond_25

    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverIndex:I

    if-eq v0, v1, :cond_25

    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    .line 1547
    invoke-virtual {v1}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1548
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverIndex:I

    .line 1549
    new-instance v1, Lcom/hzbhd/common/ui/paged/PagedView$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/hzbhd/common/ui/paged/PagedView$2;-><init>(Lcom/hzbhd/common/ui/paged/PagedView;II)V

    iput-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1593
    sget p1, Lcom/hzbhd/common/ui/paged/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v3, p1

    invoke-virtual {p0, v1, v3, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 1596
    :cond_8
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1597
    iput v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_a

    .line 1600
    :cond_9
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 1605
    :cond_a
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_1c

    .line 1606
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    .line 1607
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1608
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1609
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 1610
    iget v5, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1611
    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 1612
    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionX:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    .line 1613
    iget v4, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1614
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v4, v4

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    move v5, v2

    goto :goto_0

    :cond_b
    move v5, v1

    .line 1617
    :goto_0
    iget v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    iget v7, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    iget v8, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v7, v8

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v6, p1

    iput v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    const/high16 p1, 0x41c80000    # 25.0f

    cmpl-float p1, v6, p1

    if-lez p1, :cond_c

    .line 1620
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFlingThresholdVelocity:I

    if-le p1, v6, :cond_c

    move p1, v2

    goto :goto_1

    :cond_c
    move p1, v1

    .line 1622
    :goto_1
    iget-boolean v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScroll:Z

    if-nez v6, :cond_1a

    .line 1627
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v4, v7

    cmpl-float v4, v6, v4

    if-lez v4, :cond_d

    int-to-float v4, v0

    .line 1628
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    int-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_d

    if-eqz p1, :cond_d

    move v4, v2

    goto :goto_2

    :cond_d
    move v4, v1

    .line 1636
    :goto_2
    iget-boolean v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_e

    if-lez v3, :cond_f

    goto :goto_3

    :cond_e
    if-gez v3, :cond_f

    :goto_3
    move v3, v2

    goto :goto_4

    :cond_f
    move v3, v1

    .line 1637
    :goto_4
    iget-boolean v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_10

    if-lez v0, :cond_11

    goto :goto_5

    :cond_10
    if-gez v0, :cond_11

    :goto_5
    move v1, v2

    :cond_11
    if-eqz v5, :cond_12

    if-nez v3, :cond_12

    if-eqz p1, :cond_13

    :cond_12
    if-eqz p1, :cond_15

    if-nez v1, :cond_15

    .line 1638
    :cond_13
    iget v6, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-lez v6, :cond_15

    if-eqz v4, :cond_14

    goto :goto_6

    :cond_14
    add-int/lit8 v6, v6, -0x1

    .line 1641
    :goto_6
    invoke-virtual {p0, v6, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    :cond_15
    if-eqz v5, :cond_16

    if-eqz v3, :cond_16

    if-eqz p1, :cond_17

    :cond_16
    if-eqz p1, :cond_19

    if-eqz v1, :cond_19

    .line 1642
    :cond_17
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    .line 1644
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_19

    .line 1645
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-eqz v4, :cond_18

    goto :goto_7

    :cond_18
    add-int/2addr p1, v2

    .line 1646
    :goto_7
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 1648
    :cond_19
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToDestination()V

    goto :goto_8

    .line 1651
    :cond_1a
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 1652
    invoke-direct {p0, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->abortScrollerAnimation(Z)V

    .line 1655
    :cond_1b
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScaleX()F

    move-result p1

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v6, v0

    .line 1657
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v4, v0

    .line 1659
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1660
    iget-object v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    .line 1661
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollY()I

    move-result v5

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1660
    invoke-virtual/range {v3 .. v11}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->fling(IIIIIIII)V

    .line 1662
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->invalidate()V

    .line 1664
    :goto_8
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->onScrollInteractionEnd()V

    goto :goto_9

    :cond_1c
    if-ne v0, v5, :cond_1e

    .line 1669
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1670
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1d

    .line 1671
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    goto :goto_9

    .line 1673
    :cond_1d
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToDestination()V

    goto :goto_9

    :cond_1e
    if-ne v0, v4, :cond_20

    .line 1679
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1680
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1f

    .line 1681
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    goto :goto_9

    .line 1683
    :cond_1f
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToDestination()V

    goto :goto_9

    :cond_20
    if-ne v0, v3, :cond_21

    .line 1687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    .line 1688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    .line 1692
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    invoke-direct {p0, p0, v0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object p1

    .line 1693
    aget v0, p1, v1

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionX:F

    .line 1694
    aget p1, p1, v2

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionY:F

    .line 1695
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateDragViewTranslationDuringDrag()V

    goto :goto_9

    .line 1697
    :cond_21
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCancelTap:Z

    if-nez v0, :cond_22

    .line 1698
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    .line 1703
    :cond_22
    :goto_9
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1705
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->resetTouchState()V

    goto :goto_a

    .line 1475
    :cond_23
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1476
    invoke-direct {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->abortScrollerAnimation(Z)V

    .line 1480
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionX:F

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownMotionY:F

    .line 1482
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDownScrollX:F

    .line 1483
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v3}, Lcom/hzbhd/common/ui/paged/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1484
    aget v3, v0, v1

    iput v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionX:F

    .line 1485
    aget v0, v0, v2

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionY:F

    const/4 v0, 0x0

    .line 1486
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionXRemainder:F

    .line 1487
    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTotalMotionX:F

    .line 1488
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mActivePointerId:I

    .line 1490
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    if-ne p1, v2, :cond_25

    .line 1491
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->onScrollInteractionBegin()V

    .line 1492
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->pageBeginMoving()V

    :cond_25
    :goto_a
    return v2
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1014
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 1015
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1016
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1018
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator()V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsPageMoving:Z

    .line 458
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->onPageBeginMoving()V

    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .line 463
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsPageMoving:Z

    .line 465
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->onPageEndMoving()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 2175
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2186
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result p1

    if-lez p1, :cond_3

    .line 2187
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollLeft()V

    return v0

    .line 2180
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 2181
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollRight()Z

    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 1996
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCancelTap:Z

    .line 1997
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .line 949
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator(II)V

    .line 951
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 928
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->removeMarkerForView(I)V

    .line 929
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 942
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->removeMarkerForView(I)V

    .line 943
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 935
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->removeMarkerForView(I)V

    .line 936
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1812
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1813
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexToPage(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1814
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getCurrentPage()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1815
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 1073
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexToPage(I)I

    move-result p1

    .line 1074
    iget p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p2}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1075
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1166
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1169
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 0

    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 1968
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public scrollRight()Z
    .locals 3

    .line 1972
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1973
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollTo(II)V
    .locals 4

    .line 505
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMaxScrollX:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMinScrollX:I

    if-ge p1, v0, :cond_1

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->forceFinishScroller()V

    .line 513
    :cond_1
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMaxScrollX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 514
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMinScrollX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 517
    :cond_2
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_4

    goto :goto_0

    :cond_3
    if-gez p1, :cond_4

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 518
    :goto_1
    iget-boolean v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_5

    if-gez p1, :cond_6

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaxScrollX:I

    if-le p1, v3, :cond_6

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    if-eqz v0, :cond_8

    .line 520
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaxScrollX:I

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 521
    iget-boolean p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_c

    .line 522
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mWasInOverscroll:Z

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_a

    .line 525
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaxScrollX:I

    :goto_5
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 526
    iget-boolean p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_c

    .line 527
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mWasInOverscroll:Z

    goto :goto_6

    .line 530
    :cond_a
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mWasInOverscroll:Z

    if-eqz v0, :cond_b

    .line 531
    iput-boolean v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mWasInOverscroll:Z

    .line 533
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_c
    :goto_6
    int-to-float p1, p1

    .line 536
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchX:F

    .line 537
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mSmoothingTime:F

    .line 540
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->isReordering(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 541
    iget p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionX:F

    iget p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, p1, p2}, Lcom/hzbhd/common/ui/paged/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object p1

    .line 542
    aget p2, p1, v2

    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    .line 543
    aget p1, p1, v1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    .line 544
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_d
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 2163
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->abortScrollerAnimation(Z)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 418
    :cond_1
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceScreenScrolled:Z

    .line 419
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    .line 420
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateCurrentPageScroll()V

    .line 421
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->notifyPageSwitchListener()V

    .line 422
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->invalidate()V

    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 242
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v0, p1}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0

    .line 1434
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mAllowOverScroll:Z

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMinScale:F

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mUseMinScale:Z

    .line 291
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->requestLayout()V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 489
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 490
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 492
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    .line 892
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSpacing:I

    .line 893
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->requestLayout()V

    return-void
.end method

.method public setPageSwitchListener(Lcom/hzbhd/common/ui/paged/PagedView$PageSwitchListener;)V
    .locals 2

    .line 329
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mPageSwitchListener:Lcom/hzbhd/common/ui/paged/PagedView$PageSwitchListener;

    if-eqz p1, :cond_0

    .line 331
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-interface {p1, v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method setRestorePage(I)V
    .locals 0

    .line 430
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mRestorePage:I

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 296
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    const/4 p1, 0x1

    .line 297
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 299
    aget v1, v0, v1

    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionX:F

    .line 300
    aget p1, v0, p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mLastMotionY:F

    .line 301
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 0

    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected snapToDestination()V
    .locals 2

    .line 1839
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(II)V

    return-void
.end method

.method public snapToPage(I)V
    .locals 1

    const/16 v0, 0x12c

    .line 1897
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1905
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1922
    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .line 1927
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1929
    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mNextPage:I

    .line 1930
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1931
    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    if-eq p1, v1, :cond_0

    .line 1932
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 1933
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1936
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->pageBeginMoving()V

    .line 1937
    invoke-virtual {p0, p3}, Lcom/hzbhd/common/ui/paged/PagedView;->awakenScrollBars(I)Z

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    move v5, p1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 1941
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_2
    move v5, p3

    .line 1944
    :goto_0
    iget-object p3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p3}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_3

    .line 1945
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->abortScrollerAnimation(Z)V

    :cond_3
    if-eqz p5, :cond_4

    .line 1949
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p1, p5}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 1951
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    iget-object p3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1954
    :goto_1
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->startScroll(IIIII)V

    .line 1956
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator()V

    if-eqz p4, :cond_5

    .line 1960
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->computeScroll()V

    :cond_5
    const/4 p1, 0x1

    .line 1963
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mForceScreenScrolled:Z

    .line 1964
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->invalidate()V

    return-void
.end method

.method protected snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1

    const/4 v0, 0x0

    .line 1909
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .line 1914
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->validateNewPage(I)I

    move-result v1

    .line 1916
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result p1

    .line 1917
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v0

    sub-int v2, p1, v0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1918
    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 3

    const/16 v0, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1901
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 5

    .line 1863
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1864
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1866
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 1867
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1870
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMinFlingVelocity:I

    if-ge v2, v3, :cond_0

    const/16 p2, 0x12c

    .line 1873
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(II)V

    return-void

    .line 1881
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    .line 1883
    invoke-direct {p0, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v0, v2

    .line 1885
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1886
    iget v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMinSnapVelocity:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 1891
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    .line 1893
    invoke-virtual {p0, p1, v1, p2}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(III)V

    return-void
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 4

    .line 2075
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2077
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTouchState:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aput v1, v0, v1

    .line 2080
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v0, v3

    .line 2081
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getFreeScrollPageRange([I)V

    .line 2082
    iput-boolean v3, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mReorderingStarted:Z

    .line 2085
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v0, v1

    if-gt v2, p1, :cond_1

    aget v0, v0, v3

    if-gt p1, v0, :cond_1

    .line 2088
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    .line 2089
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f933333    # 1.15f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2090
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragViewBaselineLeft:F

    .line 2091
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageNearestToCenterOfScreen()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    .line 2092
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->disableFreeScroll()V

    .line 2093
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->onStartReordering()V

    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .line 369
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 370
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 372
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->scrollTo(II)V

    .line 373
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mScroller:Lcom/hzbhd/common/ui/paged/LauncherScroller;

    invoke-virtual {v1, v0}, Lcom/hzbhd/common/ui/paged/LauncherScroller;->setFinalX(I)V

    .line 374
    invoke-direct {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->forceFinishScroller()V

    return-void
.end method

.method updateFreescrollBounds()V
    .locals 3

    .line 1407
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getFreeScrollPageRange([I)V

    .line 1408
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMinScrollX:I

    .line 1410
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMaxScrollX:I

    goto :goto_0

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMinScrollX:I

    .line 1413
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mFreeScrollMaxScrollX:I

    :goto_0
    return-void
.end method

.method updateMaxScrollX()V
    .locals 3

    .line 882
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 884
    iget-boolean v2, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 885
    :goto_0
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaxScrollX:I

    goto :goto_1

    .line 887
    :cond_1
    iput v1, p0, Lcom/hzbhd/common/ui/paged/PagedView;->mMaxScrollX:I

    :goto_1
    return-void
.end method

.method protected updatePageIndicator(II)V
    .locals 0

    return-void
.end method
