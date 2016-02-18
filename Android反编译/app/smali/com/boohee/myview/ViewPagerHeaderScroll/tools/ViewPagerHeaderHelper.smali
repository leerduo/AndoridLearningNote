.class public Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;
.super Ljava/lang/Object;
.source "ViewPagerHeaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;
    }
.end annotation


# instance fields
.field private mHandlingTouchEventFromDown:Z

.field private mHeaderHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingMove:Z

.field private mIsHeaderExpand:Z

.field private mLastMotionY:F

.field private mListener:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 34
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mTouchSlop:I

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mMinimumFlingVelocity:I

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mMaximumFlingVelocity:I

    .line 38
    iput-object p2, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mListener:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

    .line 39
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    .line 173
    iput-boolean v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mHandlingTouchEventFromDown:Z

    .line 174
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mLastMotionY:F

    iput v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mInitialMotionY:F

    .line 175
    iget-object v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public getInitialMotionY()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mInitialMotionY:F

    return v0
.end method

.method public getLastMotionY()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mLastMotionY:F

    return v0
.end method

.method public onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "headerHeight"    # I

    .prologue
    const/4 v8, 0x0

    .line 42
    iput p2, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mHeaderHeight:I

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 45
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 46
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    :goto_1
    return v6

    .line 49
    :pswitch_0
    iget-object v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mListener:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

    invoke-interface {v6, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;->isViewBeingDragged(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 51
    .local v1, "isViewBeingDragged":Z
    if-eqz v1, :cond_1

    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    if-eqz v6, :cond_2

    :cond_1
    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    if-eqz v6, :cond_0

    .line 53
    :cond_2
    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    if-eqz v6, :cond_3

    int-to-float v6, p2

    cmpg-float v6, v4, v6

    if-gez v6, :cond_3

    .line 54
    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    goto :goto_1

    .line 57
    :cond_3
    iput v2, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mInitialMotionX:F

    .line 58
    iput v4, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mInitialMotionY:F

    goto :goto_0

    .line 63
    .end local v1    # "isViewBeingDragged":Z
    :pswitch_1
    iget v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mInitialMotionY:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    if-nez v6, :cond_0

    .line 64
    iget v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mInitialMotionY:F

    sub-float v5, v4, v6

    .line 65
    .local v5, "yDiff":F
    iget v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mInitialMotionX:F

    sub-float v3, v2, v6

    .line 66
    .local v3, "xDiff":F
    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-gtz v6, :cond_5

    :cond_4
    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    if-eqz v6, :cond_0

    cmpg-float v6, v5, v8

    if-gez v6, :cond_0

    .line 69
    :cond_5
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 70
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    .line 71
    iget-object v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mListener:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

    invoke-interface {v6, v4}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;->onMoveStarted(F)V

    goto :goto_0

    .line 79
    .end local v3    # "xDiff":F
    .end local v5    # "yDiff":F
    :pswitch_2
    iget-boolean v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    if-eqz v6, :cond_6

    .line 80
    iget-object v6, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mListener:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v8}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;->onMoveEnded(ZF)V

    .line 82
    :cond_6
    invoke-direct {p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->resetTouch()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLayoutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_0

    .line 91
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mHandlingTouchEventFromDown:Z

    .line 94
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mHandlingTouchEventFromDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mLastMotionY:F

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 104
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 106
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 109
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 111
    .local v4, "count":I
    packed-switch v3, :pswitch_data_0

    .line 168
    :cond_3
    :goto_0
    :pswitch_0
    const/16 v20, 0x1

    .end local v3    # "action":I
    .end local v4    # "count":I
    :goto_1
    return v20

    .line 98
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mHeaderHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 99
    const/16 v20, 0x1

    goto :goto_1

    .line 113
    .restart local v3    # "action":I
    .restart local v4    # "count":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 114
    .local v17, "y":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mLastMotionY:F

    move/from16 v20, v0

    cmpl-float v20, v17, v20

    if-eqz v20, :cond_3

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mLastMotionY:F

    move/from16 v20, v0

    const/high16 v21, -0x40800000    # -1.0f

    cmpl-float v20, v20, v21

    if-nez v20, :cond_5

    const/16 v19, 0x0

    .line 116
    .local v19, "yDx":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mListener:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;->onMove(FF)V

    .line 117
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mLastMotionY:F

    goto :goto_0

    .line 115
    .end local v19    # "yDx":F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mLastMotionY:F

    move/from16 v20, v0

    sub-float v19, v17, v20

    goto :goto_2

    .line 124
    .end local v17    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mMaximumFlingVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    .line 126
    .local v11, "upIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 127
    .local v7, "id1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v16

    .line 128
    .local v16, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    .line 129
    .local v18, "y1":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v4, :cond_3

    .line 130
    if-ne v6, v11, :cond_7

    .line 129
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 131
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 132
    .local v8, "id2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v20

    mul-float v14, v16, v20

    .line 133
    .local v14, "vx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v20

    mul-float v15, v18, v20

    .line 135
    .local v15, "vy":F
    add-float v5, v14, v15

    .line 136
    .local v5, "dot":F
    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 146
    .end local v5    # "dot":F
    .end local v6    # "i":I
    .end local v7    # "id1":I
    .end local v8    # "id2":I
    .end local v11    # "upIndex":I
    .end local v14    # "vx":F
    .end local v15    # "vy":F
    .end local v16    # "x1":F
    .end local v18    # "y1":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsBeingMove:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 148
    const/4 v9, 0x0

    .line 149
    .local v9, "isFling":Z
    const/4 v13, 0x0

    .line 151
    .local v13, "velocityY":F
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 153
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 154
    .local v10, "pointerId":I
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mMaximumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 155
    invoke-virtual {v12, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    .line 156
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8

    .line 157
    const/4 v9, 0x1

    .line 161
    .end local v10    # "pointerId":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mListener:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9, v13}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;->onMoveEnded(ZF)V

    .line 163
    .end local v9    # "isFling":Z
    .end local v13    # "velocityY":F
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->resetTouch()V

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHeaderExpand(Z)V
    .locals 0
    .param p1, "isHeaderExpand"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->mIsHeaderExpand:Z

    .line 183
    return-void
.end method
