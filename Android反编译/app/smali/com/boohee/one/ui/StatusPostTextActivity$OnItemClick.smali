.class Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;
.super Ljava/lang/Object;
.source "StatusPostTextActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/StatusPostTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StatusPostTextActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;Lcom/boohee/one/ui/StatusPostTextActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/StatusPostTextActivity$1;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 452
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/StatusPostTextActivity;->mAdapter:Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

    invoke-virtual {v3, p3}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 453
    .local v2, "path":Ljava/lang/String;
    const-string v3, "add"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->openPhotoPicker()V
    invoke-static {v3}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$500(Lcom/boohee/one/ui/StatusPostTextActivity;)V

    .line 464
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iput p3, v3, Lcom/boohee/one/ui/StatusPostTextActivity;->mCurEditPicPosition:I

    .line 459
    new-instance v4, Ljava/io/File;

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 460
    .local v0, "imageUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/StatusPostTextActivity;->mActivity:Lcom/boohee/one/ui/StatusPostTextActivity;

    const-class v4, Lcom/boohee/one/ui/ImageEditActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 462
    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Lcom/boohee/one/ui/StatusPostTextActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
