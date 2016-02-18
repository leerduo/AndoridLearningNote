.class public Lcom/boohee/myview/highlight/HighLight;
.super Ljava/lang/Object;
.source "HighLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;,
        Lcom/boohee/myview/highlight/HighLight$OnPosCallback;,
        Lcom/boohee/myview/highlight/HighLight$MarginInfo;,
        Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;
    }
.end annotation


# instance fields
.field private intercept:Z

.field private lightClickListener:Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;

.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

.field private mViewRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;",
            ">;"
        }
    .end annotation
.end field

.field private maskColor:I

.field private shadow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/boohee/myview/highlight/HighLight;->intercept:Z

    .line 50
    iput-boolean v0, p0, Lcom/boohee/myview/highlight/HighLight;->shadow:Z

    .line 51
    const/high16 v0, -0x34000000    # -3.3554432E7f

    iput v0, p0, Lcom/boohee/myview/highlight/HighLight;->maskColor:I

    .line 55
    iput-object p1, p0, Lcom/boohee/myview/highlight/HighLight;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/myview/highlight/HighLight;->mViewRects:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/boohee/myview/highlight/HighLight;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/myview/highlight/HighLight;)Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/highlight/HighLight;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/myview/highlight/HighLight;->lightClickListener:Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;

    return-object v0
.end method


# virtual methods
.method public addHighLight(IILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "decorLayoutId"    # I
    .param p3, "onPosCallback"    # Lcom/boohee/myview/highlight/HighLight$OnPosCallback;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, p2, p3}, Lcom/boohee/myview/highlight/HighLight;->addHighLight(Landroid/view/View;ILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;

    .line 85
    return-object p0
.end method

.method public addHighLight(Landroid/view/View;ILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "decorLayoutId"    # I
    .param p3, "onPosCallback"    # Lcom/boohee/myview/highlight/HighLight$OnPosCallback;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 102
    .local v1, "parent":Landroid/view/ViewGroup;
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v1, p1}, Lcom/boohee/myview/highlight/ViewUtils;->getLocationInView(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 103
    .local v2, "rect":Landroid/graphics/RectF;
    new-instance v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;

    invoke-direct {v3}, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;-><init>()V

    .line 104
    .local v3, "viewPosInfo":Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;
    iput p2, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->layoutId:I

    .line 105
    iput-object v2, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->rectF:Landroid/graphics/RectF;

    .line 106
    iput-object p1, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->view:Landroid/view/View;

    .line 107
    if-nez p3, :cond_0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 108
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "onPosCallback can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    :cond_0
    new-instance v0, Lcom/boohee/myview/highlight/HighLight$MarginInfo;

    invoke-direct {v0}, Lcom/boohee/myview/highlight/HighLight$MarginInfo;-><init>()V

    .line 111
    .local v0, "marginInfo":Lcom/boohee/myview/highlight/HighLight$MarginInfo;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-interface {p3, v4, v5, v2, v0}, Lcom/boohee/myview/highlight/HighLight$OnPosCallback;->getPos(FFLandroid/graphics/RectF;Lcom/boohee/myview/highlight/HighLight$MarginInfo;)V

    .line 112
    iput-object v0, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->marginInfo:Lcom/boohee/myview/highlight/HighLight$MarginInfo;

    .line 113
    iput-object p3, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->onPosCallback:Lcom/boohee/myview/highlight/HighLight$OnPosCallback;

    .line 114
    iget-object v4, p0, Lcom/boohee/myview/highlight/HighLight;->mViewRects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p0
.end method

.method public anchor(Landroid/view/View;)Lcom/boohee/myview/highlight/HighLight;
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    .line 62
    return-object p0
.end method

.method public intercept(Z)Lcom/boohee/myview/highlight/HighLight;
    .locals 0
    .param p1, "intercept"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/boohee/myview/highlight/HighLight;->intercept:Z

    .line 67
    return-object p0
.end method

.method public maskColor(I)Lcom/boohee/myview/highlight/HighLight;
    .locals 0
    .param p1, "maskColor"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/boohee/myview/highlight/HighLight;->maskColor:I

    .line 77
    return-object p0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 158
    iget-object v3, p0, Lcom/boohee/myview/highlight/HighLight;->mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

    if-nez v3, :cond_0

    .line 170
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/boohee/myview/highlight/HighLight;->mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

    invoke-virtual {v3}, Lcom/boohee/myview/highlight/HightLightView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 160
    .local v2, "parent":Landroid/view/ViewGroup;
    instance-of v3, v2, Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/boohee/myview/highlight/HighLight;->mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 169
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/boohee/myview/highlight/HighLight;->mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

    goto :goto_0

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/boohee/myview/highlight/HighLight;->mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, "origin":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 166
    .local v0, "graParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setOnHighLightClickListener(Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/boohee/myview/highlight/HighLight;->lightClickListener:Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;

    .line 174
    return-void
.end method

.method public shadow(Z)Lcom/boohee/myview/highlight/HighLight;
    .locals 0
    .param p1, "shadow"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/boohee/myview/highlight/HighLight;->shadow:Z

    .line 72
    return-object p0
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 122
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

    if-eqz v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/boohee/myview/highlight/HightLightView;

    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/boohee/myview/highlight/HighLight;->maskColor:I

    iget-boolean v4, p0, Lcom/boohee/myview/highlight/HighLight;->shadow:Z

    iget-object v5, p0, Lcom/boohee/myview/highlight/HighLight;->mViewRects:Ljava/util/List;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/boohee/myview/highlight/HightLightView;-><init>(Landroid/content/Context;Lcom/boohee/myview/highlight/HighLight;IZLjava/util/List;)V

    .line 125
    .local v0, "hightLightView":Lcom/boohee/myview/highlight/HightLightView;
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 126
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :goto_1
    iget-boolean v1, p0, Lcom/boohee/myview/highlight/HighLight;->intercept:Z

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Lcom/boohee/myview/highlight/HighLight$1;

    invoke-direct {v1, p0}, Lcom/boohee/myview/highlight/HighLight$1;-><init>(Lcom/boohee/myview/highlight/HighLight;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/highlight/HightLightView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_1
    iput-object v0, p0, Lcom/boohee/myview/highlight/HighLight;->mHightLightView:Lcom/boohee/myview/highlight/HightLightView;

    goto :goto_0

    .line 131
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    .local v6, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 133
    .local v8, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 137
    .restart local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    invoke-virtual {v6, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public updateInfo()V
    .locals 8

    .prologue
    .line 89
    iget-object v1, p0, Lcom/boohee/myview/highlight/HighLight;->mAnchor:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 90
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/boohee/myview/highlight/HighLight;->mViewRects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;

    .line 92
    .local v3, "viewPosInfo":Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->view:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/boohee/myview/highlight/ViewUtils;->getLocationInView(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 93
    .local v2, "rect":Landroid/graphics/RectF;
    iput-object v2, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->rectF:Landroid/graphics/RectF;

    .line 94
    iget-object v4, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->onPosCallback:Lcom/boohee/myview/highlight/HighLight$OnPosCallback;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iget-object v7, v3, Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;->marginInfo:Lcom/boohee/myview/highlight/HighLight$MarginInfo;

    invoke-interface {v4, v5, v6, v2, v7}, Lcom/boohee/myview/highlight/HighLight$OnPosCallback;->getPos(FFLandroid/graphics/RectF;Lcom/boohee/myview/highlight/HighLight$MarginInfo;)V

    goto :goto_0

    .line 97
    .end local v2    # "rect":Landroid/graphics/RectF;
    .end local v3    # "viewPosInfo":Lcom/boohee/myview/highlight/HighLight$ViewPosInfo;
    :cond_0
    return-void
.end method
