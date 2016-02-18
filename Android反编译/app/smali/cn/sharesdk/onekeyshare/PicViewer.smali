.class public Lcn/sharesdk/onekeyshare/PicViewer;
.super Lcom/mob/tools/FakeActivity;
.source "PicViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final DRAG:I = 0x1

.field static final MAX_SCALE:F = 10.0f

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field dist:F

.field dm:Landroid/util/DisplayMetrics;

.field private ivViewer:Landroid/widget/ImageView;

.field matrix:Landroid/graphics/Matrix;

.field mid:Landroid/graphics/PointF;

.field minScaleR:F

.field mode:I

.field private pic:Landroid/graphics/Bitmap;

.field prev:Landroid/graphics/PointF;

.field savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->savedMatrix:Landroid/graphics/Matrix;

    .line 36
    iput v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->minScaleR:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mode:I

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->prev:Landroid/graphics/PointF;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mid:Landroid/graphics/PointF;

    .line 52
    iput v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dist:F

    return-void
.end method

.method private CheckView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 132
    .local v0, "p":[F
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 133
    iget v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 134
    aget v1, v0, v4

    iget v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->minScaleR:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->minScaleR:F

    iget v3, p0, Lcn/sharesdk/onekeyshare/PicViewer;->minScaleR:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 138
    :cond_0
    aget v1, v0, v4

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 143
    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/PicViewer;->center()V

    .line 144
    return-void
.end method

.method private center()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0, v0}, Lcn/sharesdk/onekeyshare/PicViewer;->center(ZZ)V

    .line 159
    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 215
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 216
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 217
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 218
    return-void
.end method

.method private minZoom()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->minScaleR:F

    .line 154
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->minScaleR:F

    iget v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->minScaleR:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 155
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FloatMath"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 207
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 208
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 166
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    .local v3, "m":Landroid/graphics/Matrix;
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 168
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 169
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 171
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 172
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 174
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 176
    .local v1, "deltaY":F
    if-eqz p2, :cond_0

    .line 178
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dm:Landroid/util/DisplayMetrics;

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 179
    .local v5, "screenHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_2

    .line 180
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 188
    .end local v5    # "screenHeight":I
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 189
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dm:Landroid/util/DisplayMetrics;

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 190
    .local v6, "screenWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4

    .line 191
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 198
    .end local v6    # "screenWidth":I
    :cond_1
    :goto_1
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 199
    return-void

    .line 181
    .restart local v5    # "screenHeight":I
    :cond_2
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_3

    .line 182
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_0

    .line 183
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 184
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_0

    .line 192
    .end local v5    # "screenHeight":I
    .restart local v6    # "screenWidth":I
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_5

    .line 193
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_1

    .line 194
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 195
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 66
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dm:Landroid/util/DisplayMetrics;

    .line 71
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/PicViewer;->minZoom()V

    .line 73
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/PicViewer;->CheckView()V

    .line 74
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 75
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v6, 0x1

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 123
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/PicViewer;->CheckView()V

    .line 124
    return v6

    .line 89
    :pswitch_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 90
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->prev:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 91
    iput v6, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mode:I

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-direct {p0, p2}, Lcn/sharesdk/onekeyshare/PicViewer;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dist:F

    .line 97
    invoke-direct {p0, p2}, Lcn/sharesdk/onekeyshare/PicViewer;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 98
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 99
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v2, p2}, Lcn/sharesdk/onekeyshare/PicViewer;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 100
    iput v4, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mode:I

    goto :goto_0

    .line 105
    :pswitch_3
    const/4 v2, 0x0

    iput v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mode:I

    goto :goto_0

    .line 108
    :pswitch_4
    iget v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mode:I

    if-ne v2, v6, :cond_1

    .line 109
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/PicViewer;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 110
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/PicViewer;->prev:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/PicViewer;->prev:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 112
    :cond_1
    iget v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mode:I

    if-ne v2, v4, :cond_0

    .line 113
    invoke-direct {p0, p2}, Lcn/sharesdk/onekeyshare/PicViewer;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    .line 114
    .local v0, "newDist":F
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/PicViewer;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 116
    iget v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->dist:F

    div-float v1, v0, v2

    .line 117
    .local v1, "tScale":F
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/PicViewer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/PicViewer;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "pic"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    .line 57
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    :cond_0
    return-void
.end method
