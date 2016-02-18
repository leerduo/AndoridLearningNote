.class public Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;
.super Landroid/widget/FrameLayout;
.source "TouchCallbackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;
    }
.end annotation


# instance fields
.field private mTouchEventListener:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->mTouchEventListener:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->mTouchEventListener:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;->onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->mTouchEventListener:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->mTouchEventListener:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;

    invoke-interface {v0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;->onLayoutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTouchEventListener(Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;)V
    .locals 0
    .param p1, "touchEventListener"    # Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->mTouchEventListener:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;

    .line 12
    return-void
.end method
