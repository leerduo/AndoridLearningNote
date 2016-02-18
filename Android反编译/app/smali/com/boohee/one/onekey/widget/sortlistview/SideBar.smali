.class public Lcom/boohee/one/onekey/widget/sortlistview/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u70ed\u95e8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->choose:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->choose:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->choose:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 81
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 82
    .local v4, "y":F
    iget v3, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->choose:I

    .line 83
    .local v3, "oldChoose":I
    iget-object v2, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->onTouchingLetterChangedListener:Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 84
    .local v2, "listener":Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v6, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 86
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 97
    if-eq v3, v1, :cond_2

    .line 98
    if-ltz v1, :cond_2

    sget-object v5, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 99
    if-eqz v2, :cond_0

    .line 100
    sget-object v5, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v5, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 103
    iget-object v5, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    sget-object v6, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v5, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_1
    iput v1, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->choose:I

    .line 108
    invoke-virtual {p0}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->invalidate()V

    .line 114
    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 88
    :pswitch_0
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v5}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const/4 v5, -0x1

    iput v5, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->choose:I

    .line 90
    invoke-virtual {p0}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->invalidate()V

    .line 91
    iget-object v5, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 92
    iget-object v5, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->getHeight()I

    move-result v0

    .line 55
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->getWidth()I

    move-result v3

    .line 56
    .local v3, "width":I
    sget-object v6, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 58
    .local v2, "singleHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 59
    iget-object v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const/16 v7, 0x21

    const/16 v8, 0x41

    const/16 v9, 0x62

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    iget-object v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->choose:I

    if-ne v1, v6, :cond_0

    .line 66
    iget-object v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const-string v7, "#3399ff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 70
    :cond_0
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 71
    .local v4, "xPos":F
    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    .line 72
    .local v5, "yPos":F
    sget-object v6, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v6, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v4    # "xPos":F
    .end local v5    # "yPos":F
    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->onTouchingLetterChangedListener:Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 125
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mTextDialog"    # Landroid/widget/TextView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    .line 33
    return-void
.end method
