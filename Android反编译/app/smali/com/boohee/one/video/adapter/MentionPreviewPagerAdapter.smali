.class public Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MentionPreviewPagerAdapter.java"


# instance fields
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
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "mentionList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 27
    iput-object p2, p0, Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;->mentionList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;->mentionList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;->mentionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;->mentionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    invoke-static {v0}, Lcom/boohee/one/video/fragment/MentionPreviewFragment;->newInstance(Lcom/boohee/one/video/entity/Mention;)Lcom/boohee/one/video/fragment/MentionPreviewFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 54
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/fragment/MentionPreviewFragment;

    .line 48
    .local v0, "f":Lcom/boohee/one/video/fragment/MentionPreviewFragment;
    iget-object v1, p0, Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;->mentionList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/video/entity/Mention;

    invoke-virtual {v0, v1}, Lcom/boohee/one/video/fragment/MentionPreviewFragment;->setMention(Lcom/boohee/one/video/entity/Mention;)V

    .line 49
    return-object v0
.end method
