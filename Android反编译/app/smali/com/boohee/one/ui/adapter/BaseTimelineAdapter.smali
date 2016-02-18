.class public abstract Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseTimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$AnimateFirstDisplayListener;
    }
.end annotation


# static fields
.field protected static final COLORS:[I

.field protected static sDensity:F


# instance fields
.field protected final PREVIEW_COLORS:[I

.field protected activity:Landroid/app/Activity;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field protected isFavorite:Z

.field protected mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

.field options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected posts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field protected resource:Landroid/content/res/Resources;

.field protected user:Lcom/boohee/model/status/StatusUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utility/DensityUtil;->getDensity(Landroid/content/Context;)F

    move-result v0

    sput v0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->sDensity:F

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0058
        0x7f0d0056
        0x7f0d0059
        0x7f0d0057
    .end array-data
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->PREVIEW_COLORS:[I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->isFavorite:Z

    .line 75
    iput-object p1, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->activity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->posts:Ljava/util/ArrayList;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->resource:Landroid/content/res/Resources;

    .line 79
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->resource:Landroid/content/res/Resources;

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    return-void

    .line 64
    nop

    :array_0
    .array-data 4
        0x7f0d006b
        0x7f0d006c
        0x7f0d006d
        0x7f0d006e
        0x7f0d006f
    .end array-data
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;Lcom/boohee/model/status/Post;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;
    .param p1, "x1"    # Lcom/boohee/model/status/Post;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->showDeleteDialog(Lcom/boohee/model/status/Post;)V

    return-void
.end method

.method private displayImage(Landroid/widget/ImageView;Ljava/lang/String;IILjava/lang/String;)V
    .locals 4
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bigUrl"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/boohee/utility/ImageLoaderOptions;->global(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$AnimateFirstDisplayListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$AnimateFirstDisplayListener;-><init>(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$1;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 145
    new-instance v0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$3;

    invoke-direct {v0, p0, p5}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$3;-><init>(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method private showDeleteDialog(Lcom/boohee/model/status/Post;)V
    .locals 3
    .param p1, "post"    # Lcom/boohee/model/status/Post;

    .prologue
    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$5;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$5;-><init>(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;Lcom/boohee/model/status/Post;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 208
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->posts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/boohee/model/status/Post;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->posts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Post;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->getItem(I)Lcom/boohee/model/status/Post;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method protected initAttachment(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/status/AttachMent;)V
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "tvAttachment"    # Landroid/widget/TextView;
    .param p3, "ivAttachment"    # Landroid/widget/ImageView;
    .param p4, "attachMent"    # Lcom/boohee/model/status/AttachMent;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/boohee/utility/TimeLineUtility;->initAttachment(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/status/AttachMent;)V

    .line 248
    return-void
.end method

.method protected initDeleteButton(Landroid/widget/Button;Lcom/boohee/model/status/Post;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "post"    # Lcom/boohee/model/status/Post;

    .prologue
    .line 175
    iget-boolean v0, p2, Lcom/boohee/model/status/Post;->own:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    new-instance v0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$4;-><init>(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;Lcom/boohee/model/status/Post;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initPostImage(Lcom/boohee/myview/NineGridLayout;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "nineGridLayout"    # Lcom/boohee/myview/NineGridLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boohee/myview/NineGridLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Photo;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/boohee/myview/NineGridLayout;->setVisibility(I)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/boohee/myview/NineGridLayout;->setImagesData(Ljava/util/List;)V

    .line 127
    new-instance v0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$2;-><init>(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lcom/boohee/myview/NineGridLayout;->setOnItemClickListerner(Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/boohee/myview/NineGridLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initTimeAndBody(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/boohee/model/status/Post;)V
    .locals 2
    .param p1, "timeText"    # Landroid/widget/TextView;
    .param p2, "bodyText"    # Landroid/widget/TextView;
    .param p3, "post"    # Lcom/boohee/model/status/Post;

    .prologue
    .line 109
    iget-object v0, p3, Lcom/boohee/model/status/Post;->created_at:Ljava/lang/String;

    const-string v1, "MM-dd HH:mm"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p3, Lcom/boohee/model/status/Post;->body:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$1;-><init>(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;Lcom/boohee/model/status/Post;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    invoke-static {p2}, Lcom/boohee/utility/TimeLineUtility;->addLinks(Landroid/widget/TextView;)V

    .line 120
    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 0
    .param p1, "isFavorite"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->isFavorite:Z

    .line 85
    return-void
.end method

.method protected showPopupMenu(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 212
    invoke-virtual {p0, p2}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->getItem(I)Lcom/boohee/model/status/Post;

    move-result-object v0

    .line 213
    .local v0, "post":Lcom/boohee/model/status/Post;
    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;->user:Lcom/boohee/model/status/StatusUser;

    new-instance v3, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$6;

    invoke-direct {v3, p0, v0}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter$6;-><init>(Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;Lcom/boohee/model/status/Post;)V

    invoke-static {v1, p1, v0, v2, v3}, Lcom/boohee/utility/TimeLineUtility;->showCommentPopView(Landroid/app/Activity;Landroid/view/View;Lcom/boohee/model/status/Post;Lcom/boohee/model/status/StatusUser;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V

    goto :goto_0
.end method
