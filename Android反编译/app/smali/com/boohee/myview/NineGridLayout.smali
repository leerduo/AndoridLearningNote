.class public Lcom/boohee/myview/NineGridLayout;
.super Landroid/view/ViewGroup;
.source "NineGridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;
    }
.end annotation


# instance fields
.field private final ITEM_GAP:I

.field private columns:I

.field private context:Landroid/content/Context;

.field private defaultHeight:I

.field private defaultWidth:I

.field private gap:I

.field private isSmallScreen:Z

.field private listData:Ljava/util/List;

.field private onItemClickListerner:Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;

.field private rows:I

.field singleHeight:I

.field singleWidth:I

.field private totalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/myview/NineGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v1, 0x3

    iput v1, p0, Lcom/boohee/myview/NineGridLayout;->ITEM_GAP:I

    .line 33
    iput v0, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    iput v0, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    .line 39
    iput-boolean v0, p0, Lcom/boohee/myview/NineGridLayout;->isSmallScreen:Z

    .line 48
    iput-object p1, p0, Lcom/boohee/myview/NineGridLayout;->context:Landroid/content/Context;

    .line 49
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    .line 50
    invoke-static {p1}, Lcom/boohee/utility/DensityUtil;->getDensity(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/boohee/myview/NineGridLayout;->isSmallScreen:Z

    .line 51
    const/high16 v0, 0x430c0000    # 140.0f

    invoke-static {p1, v0}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/boohee/myview/NineGridLayout;->defaultHeight:I

    iput v0, p0, Lcom/boohee/myview/NineGridLayout;->defaultWidth:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/myview/NineGridLayout;)Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/NineGridLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/boohee/myview/NineGridLayout;->onItemClickListerner:Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;

    return-object v0
.end method

.method private findPosition(I)[I
    .locals 4
    .param p1, "childNum"    # I

    .prologue
    .line 127
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 128
    .local v2, "position":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/boohee/myview/NineGridLayout;->rows:I

    if-ge v0, v3, :cond_2

    .line 129
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    if-ge v1, v3, :cond_0

    .line 130
    iget v3, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    if-ne v3, p1, :cond_1

    .line 131
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 132
    const/4 v3, 0x1

    aput v1, v2, v3

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    .end local v1    # "j":I
    :cond_2
    return-object v2
.end method

.method private generateChildrenLayout(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x3

    .line 197
    if-gt p1, v1, :cond_1

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/myview/NineGridLayout;->rows:I

    .line 199
    iput p1, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x6

    if-gt p1, v0, :cond_2

    .line 201
    iput v2, p0, Lcom/boohee/myview/NineGridLayout;->rows:I

    .line 202
    iput v1, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    .line 203
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 204
    iput v2, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    goto :goto_0

    .line 207
    :cond_2
    iput v1, p0, Lcom/boohee/myview/NineGridLayout;->rows:I

    .line 208
    iput v1, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    goto :goto_0
.end method

.method private generateImageView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 213
    new-instance v0, Lcom/boohee/myview/NineGridImageView;

    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/myview/NineGridImageView;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "iv":Lcom/boohee/myview/NineGridImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NineGridImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    return-object v0
.end method

.method private layoutChildrenView()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 92
    iget-object v11, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    .line 93
    .local v1, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 94
    invoke-direct {p0, v3}, Lcom/boohee/myview/NineGridLayout;->findPosition(I)[I

    move-result-object v8

    .line 95
    .local v8, "position":[I
    iget v11, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    iget v12, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    add-int/2addr v11, v12

    aget v12, v8, v13

    mul-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->getPaddingLeft()I

    move-result v12

    add-int v6, v11, v12

    .line 96
    .local v6, "left":I
    iget v11, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    iget v12, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    add-int/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v8, v12

    mul-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->getPaddingTop()I

    move-result v12

    add-int v10, v11, v12

    .line 97
    .local v10, "top":I
    iget v11, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    add-int v9, v6, v11

    .line 98
    .local v9, "right":I
    iget v11, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    add-int v0, v10, v11

    .line 99
    .local v0, "bottom":I
    invoke-virtual {p0, v3}, Lcom/boohee/myview/NineGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/boohee/myview/NineGridImageView;

    .line 100
    .local v2, "childrenView":Lcom/boohee/myview/NineGridImageView;
    if-ne v1, v13, :cond_1

    .line 102
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v11}, Lcom/boohee/myview/NineGridImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    :goto_1
    iget-object v11, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/boohee/model/status/Photo;

    .line 107
    .local v7, "photo":Lcom/boohee/model/status/Photo;
    if-eqz v7, :cond_0

    .line 108
    iget-boolean v11, p0, Lcom/boohee/myview/NineGridLayout;->isSmallScreen:Z

    if-eqz v11, :cond_2

    iget-object v4, v7, Lcom/boohee/model/status/Photo;->small_url:Ljava/lang/String;

    .line 109
    .local v4, "imageUrl":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v4}, Lcom/boohee/myview/NineGridImageView;->setImageUrl(Ljava/lang/String;)V

    .line 112
    .end local v4    # "imageUrl":Ljava/lang/String;
    :cond_0
    move v5, v3

    .line 113
    .local v5, "itemPosition":I
    new-instance v11, Lcom/boohee/myview/NineGridLayout$1;

    invoke-direct {v11, p0, v5}, Lcom/boohee/myview/NineGridLayout$1;-><init>(Lcom/boohee/myview/NineGridLayout;I)V

    invoke-virtual {v2, v11}, Lcom/boohee/myview/NineGridImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v2, v6, v10, v9, v0}, Lcom/boohee/myview/NineGridImageView;->layout(IIII)V

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v5    # "itemPosition":I
    .end local v7    # "photo":Lcom/boohee/model/status/Photo;
    :cond_1
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v11}, Lcom/boohee/myview/NineGridImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 108
    .restart local v7    # "photo":Lcom/boohee/model/status/Photo;
    :cond_2
    iget-object v4, v7, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    goto :goto_2

    .line 123
    .end local v0    # "bottom":I
    .end local v2    # "childrenView":Lcom/boohee/myview/NineGridImageView;
    .end local v6    # "left":I
    .end local v7    # "photo":Lcom/boohee/model/status/Photo;
    .end local v8    # "position":[I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getGap()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/boohee/myview/NineGridLayout;->layoutChildrenView()V

    .line 89
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 59
    .local v6, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 60
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 61
    .local v5, "sizeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 62
    .local v4, "sizeHeight":I
    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->getPaddingLeft()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/boohee/myview/NineGridLayout;->totalWidth:I

    .line 63
    iget-object v7, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 65
    iget-object v7, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    .local v0, "childrenCount":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    .line 67
    iget-boolean v7, p0, Lcom/boohee/myview/NineGridLayout;->isSmallScreen:Z

    if-nez v7, :cond_1

    .line 68
    iget-object v7, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/boohee/model/status/Photo;

    iget v7, v7, Lcom/boohee/model/status/Photo;->preview_width:I

    iput v7, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    .line 69
    iget-object v7, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/boohee/model/status/Photo;

    iget v7, v7, Lcom/boohee/model/status/Photo;->preview_height:I

    iput v7, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    .line 78
    :goto_0
    iget v7, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/boohee/myview/NineGridLayout;->measureChildren(II)V

    .line 80
    iget v7, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    iget v8, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    iget v9, p0, Lcom/boohee/myview/NineGridLayout;->columns:I

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .line 81
    .local v3, "measureWidth":I
    iget v7, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    iget v8, p0, Lcom/boohee/myview/NineGridLayout;->rows:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    iget v9, p0, Lcom/boohee/myview/NineGridLayout;->rows:I

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    add-int v2, v7, v8

    .line 82
    .local v2, "measureHeight":I
    invoke-virtual {p0, v5, v2}, Lcom/boohee/myview/NineGridLayout;->setMeasuredDimension(II)V

    .line 84
    .end local v0    # "childrenCount":I
    .end local v2    # "measureHeight":I
    .end local v3    # "measureWidth":I
    :cond_0
    return-void

    .line 71
    .restart local v0    # "childrenCount":I
    :cond_1
    iget v7, p0, Lcom/boohee/myview/NineGridLayout;->defaultWidth:I

    iput v7, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    .line 72
    iget v7, p0, Lcom/boohee/myview/NineGridLayout;->defaultHeight:I

    iput v7, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    goto :goto_0

    .line 75
    :cond_2
    iget v7, p0, Lcom/boohee/myview/NineGridLayout;->totalWidth:I

    iget v8, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x3

    iput v7, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    .line 76
    iget v7, p0, Lcom/boohee/myview/NineGridLayout;->singleWidth:I

    iput v7, p0, Lcom/boohee/myview/NineGridLayout;->singleHeight:I

    goto :goto_0
.end method

.method public setGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/boohee/myview/NineGridLayout;->gap:I

    .line 146
    return-void
.end method

.method public setImagesData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/boohee/myview/NineGridLayout;->generateChildrenLayout(I)V

    .line 156
    iget-object v4, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    if-nez v4, :cond_2

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 158
    invoke-direct {p0, v0}, Lcom/boohee/myview/NineGridLayout;->generateImageView(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/boohee/myview/NineGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "i":I
    .end local v1    # "itemView":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    .local v3, "oldViewCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 165
    .local v2, "newViewCount":I
    if-le v3, v2, :cond_4

    .line 166
    add-int/lit8 v4, v2, -0x1

    sub-int v5, v3, v2

    invoke-virtual {p0, v4, v5}, Lcom/boohee/myview/NineGridLayout;->removeViews(II)V

    .line 174
    .end local v2    # "newViewCount":I
    .end local v3    # "oldViewCount":I
    :cond_3
    iput-object p1, p0, Lcom/boohee/myview/NineGridLayout;->listData:Ljava/util/List;

    .line 176
    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->requestLayout()V

    goto :goto_0

    .line 167
    .restart local v2    # "newViewCount":I
    .restart local v3    # "oldViewCount":I
    :cond_4
    if-ge v3, v2, :cond_3

    .line 168
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sub-int v4, v2, v3

    if-ge v0, v4, :cond_3

    .line 169
    invoke-direct {p0, v0}, Lcom/boohee/myview/NineGridLayout;->generateImageView(I)Landroid/view/View;

    move-result-object v1

    .line 170
    .restart local v1    # "itemView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/boohee/myview/NineGridLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/boohee/myview/NineGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setOnItemClickListerner(Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;)V
    .locals 0
    .param p1, "onItemClickListerner"    # Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/boohee/myview/NineGridLayout;->onItemClickListerner:Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;

    .line 220
    return-void
.end method
