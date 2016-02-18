.class public Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "VideoHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/video/ui/VideoHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoHistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/one/video/entity/VideoHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/VideoHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/VideoHistory;>;"
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    .line 110
    invoke-direct {p0, p2, p3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f03015e

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/one/video/entity/VideoHistory;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/one/video/entity/VideoHistory;>.ViewHolder;"
    iget-object v6, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;->data:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/one/video/entity/VideoHistory;

    .line 121
    .local v5, "videoHistory":Lcom/boohee/one/video/entity/VideoHistory;
    const v6, 0x7f0e0456

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 122
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x7f0e0457

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 123
    .local v3, "tvName":Landroid/widget/TextView;
    const v6, 0x7f0e0381

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 124
    .local v2, "tvDes":Landroid/widget/TextView;
    const v6, 0x7f0e017a

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 125
    .local v4, "tvTime":Landroid/widget/TextView;
    const v6, 0x7f0e0458

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "btn":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoHistoryActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v6}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->access$300(Lcom/boohee/one/video/ui/VideoHistoryActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v5, Lcom/boohee/one/video/entity/VideoHistory;->pic_url:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    iget-object v6, v5, Lcom/boohee/one/video/entity/VideoHistory;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v6, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07028c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v5, Lcom/boohee/one/video/entity/VideoHistory;->calorie:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v6, v5, Lcom/boohee/one/video/entity/VideoHistory;->created_at:Ljava/lang/String;

    const-string v7, "MM-dd HH:mm"

    invoke-static {v6, v7}, Lcom/boohee/utils/DateHelper;->timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v6, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter$1;

    invoke-direct {v6, p0, v5}, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter$1;-><init>(Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;Lcom/boohee/one/video/entity/VideoHistory;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-object p2
.end method
