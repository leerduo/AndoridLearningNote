.class public Lcom/boohee/myview/GuidePopWindow;
.super Ljava/lang/Object;
.source "GuidePopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;
    }
.end annotation


# instance fields
.field private iv_bg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mResId:I

.field public onGuideClickListener:Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;

.field private popWindow:Landroid/widget/PopupWindow;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 38
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030244

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->view:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->view:Landroid/view/View;

    const v1, 0x7f0e03d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->iv_bg:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->iv_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/boohee/myview/GuidePopWindow;->view:Landroid/view/View;

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->popWindow:Landroid/widget/PopupWindow;

    .line 44
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->popWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 46
    iget v0, p0, Lcom/boohee/myview/GuidePopWindow;->mResId:I

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const-string v1, "drawable://%d"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/boohee/myview/GuidePopWindow;->mResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/myview/GuidePopWindow;->iv_bg:Landroid/widget/ImageView;

    const v3, 0x7f0d0102

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/boohee/myview/GuidePopWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 82
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/boohee/myview/GuidePopWindow;->mContext:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/boohee/myview/GuidePopWindow;->mResId:I

    .line 34
    invoke-direct {p0}, Lcom/boohee/myview/GuidePopWindow;->initView()V

    .line 35
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/myview/GuidePopWindow;->dismiss()V

    .line 57
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->onGuideClickListener:Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->onGuideClickListener:Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;

    invoke-interface {v0}, Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;->onGuideClick()V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03d8
        :pswitch_0
    .end packed-switch
.end method

.method public setOnGuideClickListener(Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;)V
    .locals 0
    .param p1, "onGuideClickListener"    # Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/boohee/myview/GuidePopWindow;->onGuideClickListener:Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;

    .line 92
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/myview/GuidePopWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/boohee/myview/GuidePopWindow;->popWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/boohee/myview/GuidePopWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method
