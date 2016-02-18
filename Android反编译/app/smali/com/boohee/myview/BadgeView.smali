.class public Lcom/boohee/myview/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# static fields
.field private static final DEFAULT_BADGE_COLOR:I

.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

.field private static final DEFAULT_LR_PADDING_DIP:I = 0x5

.field private static final DEFAULT_MARGIN_DIP:I = 0x5

.field private static final DEFAULT_POSITION:I = 0x2

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_CENTER:I = 0x5

.field public static final POSITION_CENTER_RIGHT:I = 0x6

.field public static final POSITION_TOP_LEFT:I = 0x1

.field public static final POSITION_TOP_RIGHT:I = 0x2

.field private static fadeIn:Landroid/view/animation/Animation;

.field private static fadeOut:Landroid/view/animation/Animation;


# instance fields
.field private badgeBg:Landroid/graphics/drawable/ShapeDrawable;

.field private badgeColor:I

.field private badgeMarginH:I

.field private badgeMarginV:I

.field private badgePosition:I

.field private context:Landroid/content/Context;

.field private isShown:Z

.field private target:Landroid/view/View;

.field private targetTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "#FFFF4C4B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/boohee/myview/BadgeView;->DEFAULT_BADGE_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 110
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "target"    # Landroid/view/View;
    .param p5, "tabIndex"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    invoke-direct {p0, p1, p4, p5}, Lcom/boohee/myview/BadgeView;->init(Landroid/content/Context;Landroid/view/View;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 89
    const/4 v2, 0x0

    const v3, 0x1010084

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/widget/TabWidget;
    .param p3, "index"    # I

    .prologue
    .line 106
    const/4 v2, 0x0

    const v3, 0x1010084

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 107
    return-void
.end method

.method private applyLayoutParams()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 359
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 362
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/boohee/myview/BadgeView;->badgePosition:I

    packed-switch v1, :pswitch_data_0

    .line 391
    :goto_0
    invoke-virtual {p0, v0}, Lcom/boohee/myview/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    return-void

    .line 364
    :pswitch_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 365
    iget v1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 368
    :pswitch_1
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 369
    iget v1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    iget v2, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 372
    :pswitch_2
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    iget v1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 376
    :pswitch_3
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 377
    iget v1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 380
    :pswitch_4
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 384
    :pswitch_5
    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 385
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private dipToPixels(I)I
    .locals 5
    .param p1, "dip"    # I

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/boohee/myview/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 500
    .local v1, "r":Landroid/content/res/Resources;
    const/4 v2, 0x1

    int-to-float v3, p1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 502
    .local v0, "px":F
    float-to-int v2, v0

    return v2
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 346
    invoke-direct {p0, v4}, Lcom/boohee/myview/BadgeView;->dipToPixels(I)I

    move-result v2

    .line 347
    .local v2, "r":I
    new-array v1, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x7

    int-to-float v5, v2

    aput v5, v1, v4

    .line 349
    .local v1, "outerR":[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 350
    .local v3, "rr":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 351
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lcom/boohee/myview/BadgeView;->badgeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    return-object v0
.end method

.method private hide(ZLandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 294
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/boohee/myview/BadgeView;->setVisibility(I)V

    .line 295
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0, p2}, Lcom/boohee/myview/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/myview/BadgeView;->isShown:Z

    .line 299
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/view/View;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "tabIndex"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 120
    iput-object p1, p0, Lcom/boohee/myview/BadgeView;->context:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/boohee/myview/BadgeView;->target:Landroid/view/View;

    .line 122
    iput p3, p0, Lcom/boohee/myview/BadgeView;->targetTabIndex:I

    .line 125
    const/4 v1, 0x2

    iput v1, p0, Lcom/boohee/myview/BadgeView;->badgePosition:I

    .line 126
    invoke-direct {p0, v2}, Lcom/boohee/myview/BadgeView;->dipToPixels(I)I

    move-result v1

    iput v1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    .line 127
    iget v1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    iput v1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    .line 128
    sget v1, Lcom/boohee/myview/BadgeView;->DEFAULT_BADGE_COLOR:I

    iput v1, p0, Lcom/boohee/myview/BadgeView;->badgeColor:I

    .line 130
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/boohee/myview/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    invoke-direct {p0, v2}, Lcom/boohee/myview/BadgeView;->dipToPixels(I)I

    move-result v0

    .line 132
    .local v0, "paddingPixels":I
    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/boohee/myview/BadgeView;->setPadding(IIII)V

    .line 133
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/boohee/myview/BadgeView;->setTextColor(I)V

    .line 135
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v1, Lcom/boohee/myview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    .line 136
    sget-object v1, Lcom/boohee/myview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    sget-object v1, Lcom/boohee/myview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 139
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v1, Lcom/boohee/myview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    .line 140
    sget-object v1, Lcom/boohee/myview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 141
    sget-object v1, Lcom/boohee/myview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 143
    iput-boolean v3, p0, Lcom/boohee/myview/BadgeView;->isShown:Z

    .line 145
    iget-object v1, p0, Lcom/boohee/myview/BadgeView;->target:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/boohee/myview/BadgeView;->target:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/boohee/myview/BadgeView;->applyTo(Landroid/view/View;)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/myview/BadgeView;->show()V

    goto :goto_0
.end method

.method private show(ZLandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/boohee/myview/BadgeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/boohee/myview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/boohee/myview/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/boohee/myview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lcom/boohee/myview/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/boohee/myview/BadgeView;->applyLayoutParams()V

    .line 286
    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {p0, p2}, Lcom/boohee/myview/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boohee/myview/BadgeView;->setVisibility(I)V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/myview/BadgeView;->isShown:Z

    .line 291
    return-void
.end method

.method private toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "animIn"    # Landroid/view/animation/Animation;
    .param p3, "animOut"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    iget-boolean v2, p0, Lcom/boohee/myview/BadgeView;->isShown:Z

    if-eqz v2, :cond_1

    .line 303
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/boohee/myview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 307
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 303
    goto :goto_0

    .line 305
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/boohee/myview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public applyTo(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 156
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 157
    .local v4, "parent":Landroid/view/ViewParent;
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/boohee/myview/BadgeView;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "container":Landroid/widget/FrameLayout;
    instance-of v5, p1, Landroid/widget/TabWidget;

    if-eqz v5, :cond_0

    .line 162
    check-cast p1, Landroid/widget/TabWidget;

    .end local p1    # "target":Landroid/view/View;
    iget v5, p0, Lcom/boohee/myview/BadgeView;->targetTabIndex:I

    invoke-virtual {p1, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    .line 163
    .restart local p1    # "target":Landroid/view/View;
    iput-object p1, p0, Lcom/boohee/myview/BadgeView;->target:Landroid/view/View;

    move-object v5, p1

    .line 165
    check-cast v5, Landroid/view/ViewGroup;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {p0, v8}, Lcom/boohee/myview/BadgeView;->setVisibility(I)V

    .line 169
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 189
    :goto_0
    return-void

    :cond_0
    move-object v1, v4

    .line 174
    check-cast v1, Landroid/view/ViewGroup;

    .line 175
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 177
    .local v2, "index":I
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {p0, v8}, Lcom/boohee/myview/BadgeView;->setVisibility(I)V

    .line 183
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public decrement(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 341
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/boohee/myview/BadgeView;->increment(I)I

    move-result v0

    return v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/boohee/myview/BadgeView;->badgeColor:I

    return v0
.end method

.method public getBadgePosition()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/boohee/myview/BadgeView;->badgePosition:I

    return v0
.end method

.method public getHorizontalBadgeMargin()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/boohee/myview/BadgeView;->target:Landroid/view/View;

    return-object v0
.end method

.method public getVerticalBadgeMargin()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/boohee/myview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 225
    return-void
.end method

.method public hide(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/boohee/myview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 245
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 234
    sget-object v0, Lcom/boohee/myview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/boohee/myview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 235
    return-void
.end method

.method public increment(I)I
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/boohee/myview/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 319
    .local v2, "txt":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 321
    :try_start_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    .local v1, "i":I
    :goto_0
    add-int/2addr v1, p1

    .line 329
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/boohee/myview/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return v1

    .line 322
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 324
    .restart local v1    # "i":I
    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/boohee/myview/BadgeView;->isShown:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 1
    .param p1, "badgeColor"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/boohee/myview/BadgeView;->badgeColor:I

    .line 495
    invoke-direct {p0}, Lcom/boohee/myview/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 496
    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 1
    .param p1, "badgeMargin"    # I

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/boohee/myview/BadgeView;->dipToPixels(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    .line 462
    invoke-direct {p0, p1}, Lcom/boohee/myview/BadgeView;->dipToPixels(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    .line 463
    return-void
.end method

.method public setBadgeMargin(II)V
    .locals 0
    .param p1, "horizontal"    # I
    .param p2, "vertical"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/boohee/myview/BadgeView;->badgeMarginH:I

    .line 476
    iput p2, p0, Lcom/boohee/myview/BadgeView;->badgeMarginV:I

    .line 477
    return-void
.end method

.method public setBadgePosition(I)V
    .locals 0
    .param p1, "layoutPosition"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/boohee/myview/BadgeView;->badgePosition:I

    .line 433
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/boohee/myview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 197
    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/boohee/myview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 217
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 206
    sget-object v0, Lcom/boohee/myview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/boohee/myview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 207
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/boohee/myview/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 253
    return-void
.end method

.method public toggle(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animIn"    # Landroid/view/animation/Animation;
    .param p2, "animOut"    # Landroid/view/animation/Animation;

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/boohee/myview/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 275
    return-void
.end method

.method public toggle(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 262
    sget-object v0, Lcom/boohee/myview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/boohee/myview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Lcom/boohee/myview/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 263
    return-void
.end method
