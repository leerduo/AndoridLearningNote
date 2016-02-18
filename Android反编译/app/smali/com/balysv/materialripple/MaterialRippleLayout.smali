.class public Lcom/balysv/materialripple/MaterialRippleLayout;
.super Landroid/widget/FrameLayout;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;,
        Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;,
        Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA:F = 0.2f

.field private static final DEFAULT_BACKGROUND:I = 0x0

.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final DEFAULT_DELAY_CLICK:Z = true

.field private static final DEFAULT_DIAMETER_DP:F = 35.0f

.field private static final DEFAULT_DURATION:I = 0x15e

.field private static final DEFAULT_FADE_DURATION:I = 0x4b

.field private static final DEFAULT_HOVER:Z = true

.field private static final DEFAULT_PERSISTENT:Z = false

.field private static final DEFAULT_RIPPLE_OVERLAY:Z = false

.field private static final DEFAULT_ROUNDED_CORNERS:I = 0x0

.field private static final DEFAULT_SEARCH_ADAPTER:Z = false

.field private static final FADE_EXTRA_DELAY:I = 0x32

.field private static final HOVER_DURATION:J = 0x9c4L


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private childView:Landroid/view/View;

.field private circleAlphaProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/balysv/materialripple/MaterialRippleLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentCoords:Landroid/graphics/Point;

.field private eventCancelled:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasPerformedLongPress:Z

.field private hoverAnimator:Landroid/animation/ObjectAnimator;

.field private layerType:I

.field private longClickListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final paint:Landroid/graphics/Paint;

.field private parentAdapter:Landroid/widget/AdapterView;

.field private pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

.field private pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

.field private positionInAdapter:I

.field private prepressed:Z

.field private previousCoords:Landroid/graphics/Point;

.field private radius:F

.field private radiusProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/balysv/materialripple/MaterialRippleLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private rippleAlpha:I

.field private rippleAnimator:Landroid/animation/AnimatorSet;

.field private rippleBackground:Landroid/graphics/drawable/Drawable;

.field private rippleColor:I

.field private rippleDelayClick:Z

.field private rippleDiameter:I

.field private rippleDuration:I

.field private rippleFadeDuration:I

.field private rippleHover:Z

.field private rippleInAdapter:Z

.field private rippleOverlay:Z

.field private ripplePersistent:Z

.field private rippleRoundedCorners:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    .line 96
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    .line 97
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    .line 290
    new-instance v1, Lcom/balysv/materialripple/MaterialRippleLayout$2;

    invoke-direct {v1, p0}, Lcom/balysv/materialripple/MaterialRippleLayout$2;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->longClickListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 501
    new-instance v1, Lcom/balysv/materialripple/MaterialRippleLayout$4;

    const-class v2, Ljava/lang/Float;

    const-string v3, "radius"

    invoke-direct {v1, p0, v2, v3}, Lcom/balysv/materialripple/MaterialRippleLayout$4;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    .line 524
    new-instance v1, Lcom/balysv/materialripple/MaterialRippleLayout$5;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "rippleAlpha"

    invoke-direct {v1, p0, v2, v3}, Lcom/balysv/materialripple/MaterialRippleLayout$5;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->circleAlphaProperty:Landroid/util/Property;

    .line 124
    invoke-virtual {p0, v4}, Lcom/balysv/materialripple/MaterialRippleLayout;->setWillNotDraw(Z)V

    .line 125
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->longClickListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 127
    sget-object v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleColor:I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleColor:I

    .line 129
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleDimension:I

    .line 131
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v2, v3}, Lcom/balysv/materialripple/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v2

    float-to-int v2, v2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDiameter:I

    .line 133
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleOverlay:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleOverlay:Z

    .line 134
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleHover:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    .line 135
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleDuration:I

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    .line 136
    const/high16 v1, 0x437f0000    # 255.0f

    sget v2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleAlpha:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    .line 137
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleDelayClick:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    .line 138
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleFadeDuration:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    .line 139
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleBackground:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_ripplePersistent:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    .line 141
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleInAdapter:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    .line 142
    sget v1, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleRoundedCorners:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->enableClipPathSupportIfNecessary()V

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/widget/AdapterView;
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->findParentAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/balysv/materialripple/MaterialRippleLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/balysv/materialripple/MaterialRippleLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->startHover()V

    return-void
.end method

.method static synthetic access$200(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/balysv/materialripple/MaterialRippleLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    return v0
.end method

.method static synthetic access$400(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/balysv/materialripple/MaterialRippleLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    return v0
.end method

.method static synthetic access$700(Lcom/balysv/materialripple/MaterialRippleLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    iget v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    return v0
.end method

.method static synthetic access$800(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    return v0
.end method

.method static synthetic access$900(Lcom/balysv/materialripple/MaterialRippleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getRadius()F

    move-result v0

    return v0
.end method

.method private adapterPositionChanged()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-boolean v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    if-eqz v3, :cond_2

    .line 423
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->findParentAdapterView()Landroid/widget/AdapterView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 424
    .local v1, "newPosition":I
    iget v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->positionInAdapter:I

    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    .line 425
    .local v0, "changed":Z
    :goto_0
    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->positionInAdapter:I

    .line 426
    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    .line 428
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelAnimations()V

    .line 429
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 430
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRadius(F)V

    .line 434
    .end local v0    # "changed":Z
    .end local v1    # "newPosition":I
    :cond_0
    :goto_1
    return v0

    .restart local v1    # "newPosition":I
    :cond_1
    move v0, v2

    .line 424
    goto :goto_0

    .end local v1    # "newPosition":I
    :cond_2
    move v0, v2

    .line 434
    goto :goto_1
.end method

.method private cancelAnimations()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 364
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 370
    :cond_1
    return-void
.end method

.method private cancelPressedEvent()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    invoke-virtual {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    .line 287
    :cond_0
    return-void
.end method

.method static dpToPx(Landroid/content/res/Resources;F)F
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dp"    # F

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private enableClipPathSupportIfNecessary()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 623
    iget v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->layerType:I

    .line 625
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->layerType:I

    invoke-virtual {p0, v0, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private findClickableViewInChild(Landroid/view/View;II)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 438
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 439
    check-cast v4, Landroid/view/ViewGroup;

    .line 440
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 441
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "child":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 443
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 445
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 446
    .local v1, "contains":Z
    if-eqz v1, :cond_0

    .line 447
    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int v5, p2, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int v6, p3, v6

    invoke-direct {p0, v0, v5, v6}, Lcom/balysv/materialripple/MaterialRippleLayout;->findClickableViewInChild(Landroid/view/View;II)Z

    move-result v5

    .line 454
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "contains":Z
    .end local v2    # "i":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :goto_1
    return v5

    .line 440
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "contains":Z
    .restart local v2    # "i":I
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "contains":Z
    .end local v2    # "i":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    if-eq p1, v5, :cond_4

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 454
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    goto :goto_1
.end method

.method private findParentAdapterView()Landroid/widget/AdapterView;
    .locals 4

    .prologue
    .line 397
    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->parentAdapter:Landroid/widget/AdapterView;

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->parentAdapter:Landroid/widget/AdapterView;

    .line 404
    :goto_0
    return-object v2

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 402
    .local v0, "current":Landroid/view/ViewParent;
    :goto_1
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-eqz v2, :cond_1

    .line 403
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "current":Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->parentAdapter:Landroid/widget/AdapterView;

    .line 404
    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->parentAdapter:Landroid/widget/AdapterView;

    goto :goto_0

    .line 407
    .restart local v0    # "current":Landroid/view/ViewParent;
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "npe":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not find a parent AdapterView"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEndRadius()F
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 373
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getWidth()I

    move-result v5

    .line 374
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getHeight()I

    move-result v2

    .line 376
    .local v2, "height":I
    div-int/lit8 v1, v5, 0x2

    .line 377
    .local v1, "halfWidth":I
    div-int/lit8 v0, v2, 0x2

    .line 379
    .local v0, "halfHeight":I
    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-le v1, v6, :cond_0

    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v5, v6

    int-to-float v3, v6

    .line 380
    .local v3, "radiusX":F
    :goto_0
    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v0, v6, :cond_1

    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v2, v6

    int-to-float v4, v6

    .line 382
    .local v4, "radiusY":F
    :goto_1
    float-to-double v6, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v6, v7

    return v6

    .line 379
    .end local v3    # "radiusX":F
    .end local v4    # "radiusY":F
    :cond_0
    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v3, v6

    goto :goto_0

    .line 380
    .restart local v3    # "radiusX":F
    :cond_1
    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v4, v6

    goto :goto_1
.end method

.method private getRadius()F
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    return v0
.end method

.method private isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 387
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 388
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const/4 v1, 0x1

    .line 393
    :goto_1
    return v1

    .line 391
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static on(Landroid/view/View;)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 110
    new-instance v0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;

    invoke-direct {v0, p0}, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private setPositionInAdapter()V
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->findParentAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->positionInAdapter:I

    .line 419
    :cond_0
    return-void
.end method

.method private startHover()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 309
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    if-eqz v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getWidth()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 315
    .local v0, "radius":F
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDiameter:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    .line 316
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    .line 317
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private startRipple(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 322
    iget-boolean v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    if-eqz v3, :cond_0

    .line 359
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getEndRadius()F

    move-result v0

    .line 326
    .local v0, "endRadius":F
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelAnimations()V

    .line 328
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    .line 329
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/balysv/materialripple/MaterialRippleLayout$3;

    invoke-direct {v4, p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout$3;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    new-array v4, v8, [F

    iget v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    aput v5, v4, v6

    aput v0, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 343
    .local v2, "ripple":Landroid/animation/ObjectAnimator;
    iget v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->circleAlphaProperty:Landroid/util/Property;

    new-array v4, v8, [I

    iget v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    aput v5, v4, v6

    aput v6, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 346
    .local v1, "fade":Landroid/animation/ObjectAnimator;
    iget v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 347
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    iget v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    iget v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x32

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 350
    iget-boolean v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 358
    :goto_1
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getRadius()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_2

    .line 353
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 354
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 356
    :cond_2
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MaterialRippleLayout can host only one child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 474
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->adapterPositionChanged()Z

    move-result v1

    .line 475
    .local v1, "positionChanged":Z
    iget-boolean v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleOverlay:Z

    if-eqz v3, :cond_3

    .line 476
    if-nez v1, :cond_0

    .line 477
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 479
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 480
    if-nez v1, :cond_2

    .line 481
    iget v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    .line 482
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 483
    .local v0, "clipPath":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 484
    .local v2, "rect":Landroid/graphics/RectF;
    iget v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    iget v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 487
    .end local v0    # "clipPath":Landroid/graphics/Path;
    .end local v2    # "rect":Landroid/graphics/RectF;
    :cond_1
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 496
    :cond_2
    :goto_0
    return-void

    .line 490
    :cond_3
    if-nez v1, :cond_4

    .line 491
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 492
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 494
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getChildView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    return-object v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->findClickableViewInChild(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 460
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 462
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 191
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 193
    .local v3, "superOnTouchEvent":Z
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 278
    .end local v3    # "superOnTouchEvent":Z
    :cond_0
    :goto_0
    return v3

    .line 195
    .restart local v3    # "superOnTouchEvent":Z
    :cond_1
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 197
    .local v2, "isEventInBounds":Z
    if-eqz v2, :cond_2

    .line 198
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 199
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 202
    :cond_2
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 203
    .local v1, "gestureResult":Z
    if-nez v1, :cond_3

    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hasPerformedLongPress:Z

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    .line 204
    goto :goto_0

    .line 206
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 207
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    move v3, v4

    .line 278
    goto :goto_0

    .line 209
    :pswitch_0
    new-instance v5, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    invoke-direct {v5, p0, v8}, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Lcom/balysv/materialripple/MaterialRippleLayout$1;)V

    iput-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    .line 211
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    if-eqz v5, :cond_6

    .line 212
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 213
    new-instance v5, Lcom/balysv/materialripple/MaterialRippleLayout$1;

    invoke-direct {v5, p0}, Lcom/balysv/materialripple/MaterialRippleLayout$1;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;)V

    .line 218
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    .line 213
    invoke-virtual {p0, v5, v6, v7}, Lcom/balysv/materialripple/MaterialRippleLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_6
    if-eqz v2, :cond_9

    .line 222
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    invoke-direct {p0, v5}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    .line 226
    :cond_7
    :goto_2
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    if-nez v5, :cond_8

    if-eqz v2, :cond_8

    .line 227
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    invoke-virtual {v5}, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->run()V

    .line 229
    :cond_8
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    goto :goto_1

    .line 223
    :cond_9
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    if-nez v5, :cond_7

    .line 224
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRadius(F)V

    goto :goto_2

    .line 232
    :pswitch_1
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->setPositionInAdapter()V

    .line 233
    iput-boolean v9, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    .line 234
    new-instance v5, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    invoke-direct {v5, p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Landroid/view/MotionEvent;)V

    iput-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    .line 235
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->isInScrollingContainer()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 236
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    .line 237
    iput-boolean v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    .line 238
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/balysv/materialripple/MaterialRippleLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 240
    :cond_a
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    invoke-virtual {v5}, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->run()V

    goto :goto_1

    .line 244
    :pswitch_2
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    if-eqz v5, :cond_b

    .line 246
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 247
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    .line 249
    :cond_b
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 250
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    if-eqz v5, :cond_d

    .line 251
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    if-nez v5, :cond_c

    .line 252
    invoke-direct {p0, v8}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    .line 257
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    goto/16 :goto_1

    .line 255
    :cond_d
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3

    .line 260
    :pswitch_3
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    if-eqz v5, :cond_e

    .line 261
    if-eqz v2, :cond_10

    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    if-nez v5, :cond_10

    .line 262
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    .line 268
    :cond_e
    :goto_4
    if-nez v2, :cond_5

    .line 269
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    .line 270
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_f

    .line 271
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 273
    :cond_f
    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 274
    iput-boolean v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    goto/16 :goto_1

    .line 263
    :cond_10
    if-nez v2, :cond_e

    .line 264
    invoke-direct {p0, v8}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public performRipple()V
    .locals 3

    .prologue
    .line 606
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    .line 608
    return-void
.end method

.method public performRipple(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "anchor"    # Landroid/graphics/Point;

    .prologue
    .line 611
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    .line 613
    return-void
.end method

.method public setDefaultRippleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    .line 601
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 602
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    .line 603
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MaterialRippleLayout must have a child view to handle clicks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MaterialRippleLayout must have a child view to handle clicks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 520
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    .line 521
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    .line 522
    return-void
.end method

.method public setRippleAlpha(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "rippleAlpha"    # Ljava/lang/Integer;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 543
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    .line 544
    return-void
.end method

.method public setRippleBackground(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 569
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    .line 570
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 571
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    .line 572
    return-void
.end method

.method public setRippleColor(I)V
    .locals 2
    .param p1, "rippleColor"    # I

    .prologue
    .line 550
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleColor:I

    .line 551
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 553
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    .line 554
    return-void
.end method

.method public setRippleDelayClick(Z)V
    .locals 0
    .param p1, "rippleDelayClick"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    .line 580
    return-void
.end method

.method public setRippleDiameter(I)V
    .locals 0
    .param p1, "rippleDiameter"    # I

    .prologue
    .line 561
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDiameter:I

    .line 562
    return-void
.end method

.method public setRippleDuration(I)V
    .locals 0
    .param p1, "rippleDuration"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    .line 566
    return-void
.end method

.method public setRippleFadeDuration(I)V
    .locals 0
    .param p1, "rippleFadeDuration"    # I

    .prologue
    .line 583
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    .line 584
    return-void
.end method

.method public setRippleHover(Z)V
    .locals 0
    .param p1, "rippleHover"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    .line 576
    return-void
.end method

.method public setRippleInAdapter(Z)V
    .locals 0
    .param p1, "rippleInAdapter"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    .line 592
    return-void
.end method

.method public setRippleOverlay(Z)V
    .locals 0
    .param p1, "rippleOverlay"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleOverlay:Z

    .line 558
    return-void
.end method

.method public setRipplePersistent(Z)V
    .locals 0
    .param p1, "ripplePersistent"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    .line 588
    return-void
.end method

.method public setRippleRoundedCorners(I)V
    .locals 1
    .param p1, "rippleRoundedCorner"    # I

    .prologue
    .line 595
    int-to-float v0, p1

    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    .line 596
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->enableClipPathSupportIfNecessary()V

    .line 597
    return-void
.end method
