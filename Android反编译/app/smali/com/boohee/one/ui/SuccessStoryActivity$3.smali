.class Lcom/boohee/one/ui/SuccessStoryActivity$3;
.super Ljava/lang/Object;
.source "SuccessStoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SuccessStoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$3;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/SuccessStory$ItemsEntity;

    .line 109
    .local v0, "itemsEntity":Lcom/boohee/model/SuccessStory$ItemsEntity;
    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, v0, Lcom/boohee/model/SuccessStory$ItemsEntity;->url:Ljava/lang/String;

    .line 113
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity$3;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    iget-object v3, v0, Lcom/boohee/model/SuccessStory$ItemsEntity;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/boohee/model/SuccessStory$ItemsEntity;->title:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/boohee/one/ui/StoryDetailActivity;->comeOn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity$3;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
