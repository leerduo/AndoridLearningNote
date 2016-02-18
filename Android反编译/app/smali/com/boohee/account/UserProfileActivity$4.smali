.class Lcom/boohee/account/UserProfileActivity$4;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/UserProfileActivity;->uploadAvatar(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/UserProfileActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/boohee/account/UserProfileActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/boohee/account/UserProfileActivity$4;->this$0:Lcom/boohee/account/UserProfileActivity;

    iput-object p2, p0, Lcom/boohee/account/UserProfileActivity$4;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$4;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v0}, Lcom/boohee/account/UserProfileActivity;->dismissLoading()V

    .line 356
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 336
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$4;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v0}, Lcom/boohee/account/UserProfileActivity;->showLoading()V

    .line 341
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    const/4 v2, 0x0

    .line 345
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboohee/lib/uploader/model/Picture;

    iget-object v0, v0, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 347
    :cond_0
    const-string v0, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity$4;->onFailed(Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$4;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboohee/lib/uploader/model/Picture;

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity$4;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/boohee/account/UserProfileActivity;->changeAvatar(Lboohee/lib/uploader/model/Picture;Landroid/net/Uri;)V
    invoke-static {v1, v0, v2}, Lcom/boohee/account/UserProfileActivity;->access$500(Lcom/boohee/account/UserProfileActivity;Lboohee/lib/uploader/model/Picture;Landroid/net/Uri;)V

    goto :goto_0
.end method
