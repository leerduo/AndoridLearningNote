.class public Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "PunchCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/status/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private onCommentListener:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;


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
            "Lcom/boohee/model/status/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Comment;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;)Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;->onCommentListener:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;

    return-object v0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0300aa

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
            "Lcom/boohee/model/status/Comment;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/status/Comment;>.ViewHolder;"
    iget-object v7, p0, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;->data:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Comment;

    .line 47
    .local v0, "comment":Lcom/boohee/model/status/Comment;
    const v7, 0x7f0e01d8

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 48
    .local v2, "iv_avatar":Landroid/widget/ImageView;
    const v7, 0x7f0e02b2

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    .local v5, "tv_nickname":Landroid/widget/TextView;
    const v7, 0x7f0e02b3

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 50
    .local v6, "tv_post_time":Landroid/widget/TextView;
    const v7, 0x7f0e02c0

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "tv_comment_text":Landroid/widget/TextView;
    const v7, 0x7f0e02c1

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 53
    .local v3, "iv_comment":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v0, Lcom/boohee/model/status/Comment;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v8, v8, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    invoke-virtual {v7, v8, v2, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 55
    iget-object v7, v0, Lcom/boohee/model/status/Comment;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v7, v7, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v7, v0, Lcom/boohee/model/status/Comment;->created_at:Ljava/lang/String;

    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v7, v8}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 58
    .local v1, "createdAt":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v7, v1}, Lcom/boohee/utils/DateKnife;->display(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v7, v0, Lcom/boohee/model/status/Comment;->body:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {v4}, Lcom/boohee/utility/TimeLineUtility;->addLinks(Landroid/widget/TextView;)V

    .line 62
    new-instance v7, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$1;-><init>(Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;Lcom/boohee/model/status/Comment;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v7, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$2;

    invoke-direct {v7, p0, v0}, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$2;-><init>(Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;Lcom/boohee/model/status/Comment;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-object p2
.end method

.method public setOnCommentListener(Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;)V
    .locals 0
    .param p1, "onCommentListener"    # Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;->onCommentListener:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;

    .line 91
    return-void
.end method
