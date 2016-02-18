.class Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/club/Story;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field final synthetic this$0:Lcom/boohee/one/ui/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/WelcomeActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Story;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Story;>;"
    iput-object p1, p0, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    .line 110
    invoke-direct {p0, p2, p3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 111
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;->mLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 112
    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f030156

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/club/Story;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 121
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/club/Story;>.ViewHolder;"
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/club/Story;

    .line 122
    .local v1, "story":Lcom/boohee/model/club/Story;
    if-eqz v1, :cond_0

    .line 123
    const v3, 0x7f0e0448

    invoke-virtual {p3, v3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    .local v0, "ivStory":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;->mLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v1, Lcom/boohee/model/club/Story;->pic:Ljava/lang/String;

    const v5, 0x7f0d012e

    invoke-static {v5}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 126
    const v3, 0x7f0e0266

    invoke-virtual {p3, v3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, "tvTitle":Landroid/widget/TextView;
    iget-object v3, v1, Lcom/boohee/model/club/Story;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v3, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter$1;-><init>(Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;Lcom/boohee/model/club/Story;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .end local v0    # "ivStory":Landroid/widget/ImageView;
    .end local v2    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    return-object p2
.end method
