.class Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;
.super Ljava/lang/Object;
.source "StatusPostTextActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/StatusPostTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicUploadListener"
.end annotation


# instance fields
.field private isNeedSync:Z

.field private nfId:I

.field private sendFaildIntent:Landroid/app/PendingIntent;

.field private syncData:Ljava/lang/String;

.field final synthetic this$0:Lcom/boohee/one/ui/StatusPostTextActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;ZLandroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 0
    .param p2, "isNeedSync"    # Z
    .param p3, "sendFaildIntent"    # Landroid/app/PendingIntent;
    .param p4, "nfId"    # I
    .param p5, "syncData"    # Ljava/lang/String;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-boolean p2, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->isNeedSync:Z

    .line 554
    iput-object p3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->sendFaildIntent:Landroid/app/PendingIntent;

    .line 555
    iput p4, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->nfId:I

    .line 556
    iput-object p5, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->syncData:Ljava/lang/String;

    .line 557
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    const-string v1, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25, \u8bf7\u68c0\u67e5\u7f51\u7edc\u7a0d\u540e\u91cd\u8bd5~"

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->sendFaildIntent:Landroid/app/PendingIntent;

    iget v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->nfId:I

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->sendFaild(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$900(Lcom/boohee/one/ui/StatusPostTextActivity;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 575
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 561
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
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
    .line 569
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-boolean v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->isNeedSync:Z

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->sendFaildIntent:Landroid/app/PendingIntent;

    iget v4, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->nfId:I

    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;->syncData:Ljava/lang/String;

    move-object v1, p1

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->doSend(Ljava/util/List;ZLandroid/app/PendingIntent;ILjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$800(Lcom/boohee/one/ui/StatusPostTextActivity;Ljava/util/List;ZLandroid/app/PendingIntent;ILjava/lang/String;)V

    .line 570
    return-void
.end method
