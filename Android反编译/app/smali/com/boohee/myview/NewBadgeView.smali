.class public Lcom/boohee/myview/NewBadgeView;
.super Landroid/widget/TextView;
.source "NewBadgeView.java"


# instance fields
.field private mHideOnNull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/myview/NewBadgeView;->mHideOnNull:Z

    .line 56
    invoke-direct {p0}, Lcom/boohee/myview/NewBadgeView;->init()V

    .line 57
    return-void
.end method

.method private dip2Px(F)I
    .locals 2
    .param p1, "dip"    # F

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, -0x2

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_0

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 66
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/boohee/myview/NewBadgeView;->setTextColor(I)V

    .line 71
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/boohee/myview/NewBadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p0, v1, v2}, Lcom/boohee/myview/NewBadgeView;->setTextSize(IF)V

    .line 73
    invoke-direct {p0, v3}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/boohee/myview/NewBadgeView;->setPadding(IIII)V

    .line 76
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/boohee/myview/NewBadgeView;->setBackground(II)V

    .line 78
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/boohee/myview/NewBadgeView;->setGravity(I)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/boohee/myview/NewBadgeView;->setHideOnNull(Z)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 83
    return-void
.end method


# virtual methods
.method public decrementBadgeCount(I)V
    .locals 1
    .param p1, "decrement"    # I

    .prologue
    .line 182
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->incrementBadgeCount(I)V

    .line 183
    return-void
.end method

.method public getBadgeCount()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    .line 139
    :goto_0
    return-object v2

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getBadgeGravity()I
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v1
.end method

.method public getBadgeMargin()[I
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v3, v1, v2

    return-object v1
.end method

.method public incrementBadgeCount(I)V
    .locals 2
    .param p1, "increment"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getBadgeCount()Ljava/lang/Integer;

    move-result-object v0

    .line 174
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    goto :goto_0
.end method

.method public isHideOnNull()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/boohee/myview/NewBadgeView;->mHideOnNull:Z

    return v0
.end method

.method public setBackground(II)V
    .locals 7
    .param p1, "dipRadius"    # I
    .param p2, "badgeColor"    # I

    .prologue
    const/4 v6, 0x0

    .line 87
    int-to-float v4, p1

    invoke-direct {p0, v4}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v1

    .line 88
    .local v1, "radius":I
    const/16 v4, 0x8

    new-array v2, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x2

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x3

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x4

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x5

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x6

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x7

    int-to-float v5, v1

    aput v5, v2, v4

    .line 90
    .local v2, "radiusArray":[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 91
    .local v3, "roundRect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 92
    .local v0, "bgDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public setBadgeGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 0
    .param p1, "dipMargin"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/boohee/myview/NewBadgeView;->setBadgeMargin(IIII)V

    .line 156
    return-void
.end method

.method public setBadgeMargin(IIII)V
    .locals 2
    .param p1, "leftDipMargin"    # I
    .param p2, "topDipMargin"    # I
    .param p3, "rightDipMargin"    # I
    .param p4, "bottomDipMargin"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 161
    int-to-float v1, p2

    invoke-direct {p0, v1}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 162
    int-to-float v1, p3

    invoke-direct {p0, v1}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 163
    int-to-float v1, p4

    invoke-direct {p0, v1}, Lcom/boohee/myview/NewBadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 164
    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method

.method public setHideOnNull(Z)V
    .locals 1
    .param p1, "hideOnNull"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/boohee/myview/NewBadgeView;->mHideOnNull:Z

    .line 108
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 203
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    :cond_0
    if-nez p1, :cond_2

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 217
    .local v2, "parentContainer":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 218
    .local v1, "groupIndex":I
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "badgeContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 222
    .local v3, "parentlayoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 230
    .end local v0    # "badgeContainer":Landroid/widget/FrameLayout;
    .end local v1    # "groupIndex":I
    .end local v2    # "parentContainer":Landroid/view/ViewGroup;
    .end local v3    # "parentlayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ParentView is needed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTargetView(Landroid/widget/TabWidget;I)V
    .locals 1
    .param p1, "target"    # Landroid/widget/TabWidget;
    .param p2, "tabIndex"    # I

    .prologue
    .line 193
    invoke-virtual {p1, p2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "tabView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/boohee/myview/NewBadgeView;->isHideOnNull()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 123
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 124
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    goto :goto_0
.end method
