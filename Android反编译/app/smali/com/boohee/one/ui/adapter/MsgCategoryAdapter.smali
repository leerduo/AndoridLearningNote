.class public Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;
.super Lcom/boohee/one/ui/adapter/MyAdapter;
.source "MsgCategoryAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/MyAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 28
    iget-object v4, p0, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;->activity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030171

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    .line 31
    .local v1, "category":Lcom/boohee/model/MsgCategory;
    const v4, 0x7f0e047d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 32
    .local v2, "icon":Landroid/widget/ImageView;
    iget v4, v1, Lcom/boohee/model/MsgCategory;->iconId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    const v4, 0x7f0e0266

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/MsgCategory;

    iget-object v4, v4, Lcom/boohee/model/MsgCategory;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v4, 0x7f0e047e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, "bubble":Landroid/widget/TextView;
    iget v4, v1, Lcom/boohee/model/MsgCategory;->count:I

    if-lez v4, :cond_2

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget v4, v1, Lcom/boohee/model/MsgCategory;->count:I

    const/16 v5, 0x63

    if-le v4, v5, :cond_1

    const-string v4, "99+"

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_1
    return-object p2

    .line 39
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/boohee/model/MsgCategory;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 41
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
