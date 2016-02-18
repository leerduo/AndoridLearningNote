.class Lcom/boohee/one/video/ui/SportSettingActivity$3;
.super Ljava/lang/Object;
.source "SportSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SportSettingActivity;->cleanDownloadCahce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/SportSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SportSettingActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/boohee/one/video/ui/SportSettingActivity$3;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity$3;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    # getter for: Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/video/ui/SportSettingActivity;->access$100(Lcom/boohee/one/video/ui/SportSettingActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/FileUtil;->deleteAllFilesOfDir(Ljava/io/File;)V

    .line 105
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity$3;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SportSettingActivity;->clvCleanCache:Lcom/boohee/myview/CommonLineView;

    const-string v1, "0.0M"

    invoke-virtual {v0, v1}, Lcom/boohee/myview/CommonLineView;->setRightText(Ljava/lang/String;)V

    .line 106
    return-void
.end method
