.class public Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "SuccessStoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/SuccessStoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuccessStoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/SuccessStory$ItemsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/SuccessStoryActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/SuccessStory$ItemsEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/SuccessStory$ItemsEntity;>;"
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    .line 235
    invoke-direct {p0, p2, p3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 236
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 240
    const v0, 0x7f030157

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/SuccessStory$ItemsEntity;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 245
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/SuccessStory$ItemsEntity;>.ViewHolder;"
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/SuccessStory$ItemsEntity;

    .line 246
    .local v2, "itemsEntity":Lcom/boohee/model/SuccessStory$ItemsEntity;
    const v7, 0x7f0e0449

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 247
    .local v1, "imageView":Landroid/widget/ImageView;
    const v7, 0x7f0e0266

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 248
    .local v6, "tvTitle":Landroid/widget/TextView;
    const v7, 0x7f0e044a

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 250
    .local v5, "tvTags":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    iget-object v7, v7, Lcom/boohee/one/ui/SuccessStoryActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, v2, Lcom/boohee/model/SuccessStory$ItemsEntity;->pic:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 251
    iget-object v7, v2, Lcom/boohee/model/SuccessStory$ItemsEntity;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    if-eqz v2, :cond_1

    iget-object v7, v2, Lcom/boohee/model/SuccessStory$ItemsEntity;->tags:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v4, "tagString":Ljava/lang/StringBuilder;
    iget-object v7, v2, Lcom/boohee/model/SuccessStory$ItemsEntity;->tags:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 255
    .local v3, "tag":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 257
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "tagString":Ljava/lang/StringBuilder;
    :cond_1
    return-object p2
.end method
