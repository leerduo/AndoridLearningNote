.class public Lcom/boohee/more/NoticeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoticeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/NoticeListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private notices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Notice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Notice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "notices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Notice;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/more/NoticeListAdapter;->notices:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/boohee/more/NoticeListAdapter;->ctx:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/boohee/more/NoticeListAdapter;->notices:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/more/NoticeListAdapter;->notices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/boohee/model/Notice;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/more/NoticeListAdapter;->notices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Notice;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/boohee/more/NoticeListAdapter;->getItem(I)Lcom/boohee/model/Notice;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "holder":Lcom/boohee/more/NoticeListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/more/NoticeListAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/boohee/more/NoticeListAdapter$ViewHolder;-><init>()V

    .line 45
    .restart local v0    # "holder":Lcom/boohee/more/NoticeListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/boohee/more/NoticeListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301de

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    const v1, 0x7f0e0597

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->message_label:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0e0595

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->is_opened_image:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f0e0596

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->category_label:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    iget-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->message_label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/boohee/more/NoticeListAdapter;->getItem(I)Lcom/boohee/model/Notice;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/Notice;->alarm_tip_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/boohee/more/NoticeListAdapter;->getItem(I)Lcom/boohee/model/Notice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/model/Notice;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->is_opened_image:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_1
    invoke-virtual {p0, p1}, Lcom/boohee/more/NoticeListAdapter;->getItem(I)Lcom/boohee/model/Notice;

    move-result-object v1

    iget v1, v1, Lcom/boohee/model/Notice;->alarm_tip_id:I

    if-nez v1, :cond_2

    .line 62
    iget-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->category_label:Landroid/widget/TextView;

    const v2, 0x7f070367

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    :goto_2
    return-object p2

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/more/NoticeListAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/more/NoticeListAdapter$ViewHolder;
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->is_opened_image:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 64
    :cond_2
    iget-object v1, v0, Lcom/boohee/more/NoticeListAdapter$ViewHolder;->category_label:Landroid/widget/TextView;

    const v2, 0x7f0703e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
