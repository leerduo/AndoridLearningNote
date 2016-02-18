.class public Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MentionRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mentionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "mentionList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->mentionList:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->mentionList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->mentionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 27
    check-cast p1, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->onBindViewHolder(Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->mentionList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    .line 47
    .local v0, "mention":Lcom/boohee/one/video/entity/Mention;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/one/video/entity/Mention;->thumbnail:Ljava/lang/String;

    iget-object v3, p1, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;->ivMention:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 48
    iget-object v1, p1, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;->tvMentionName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/boohee/one/video/entity/Mention;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p1, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;->tvMentionInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/boohee/one/video/entity/Mention;->group_count:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/boohee/one/video/entity/Mention;->number:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, v0, Lcom/boohee/one/video/entity/Mention;->is_times:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p1, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;->layout:Landroid/view/View;

    new-instance v2, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$1;-><init>(Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void

    .line 49
    :cond_0
    const-string v1, "\""

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03013f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    .local v1, "viewHolder":Lcom/boohee/one/video/adapter/MentionRecyclerAdapter$ViewHolder;
    return-object v1
.end method
