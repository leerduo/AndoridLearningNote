.class Lcom/boohee/one/video/ui/SportSettingActivity$2;
.super Ljava/lang/Thread;
.source "SportSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SportSettingActivity;->getCacheSize()V
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
    .line 81
    iput-object p1, p0, Lcom/boohee/one/video/ui/SportSettingActivity$2;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/boohee/one/video/ui/SportSettingActivity$2;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    # getter for: Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/one/video/ui/SportSettingActivity;->access$000(Lcom/boohee/one/video/ui/SportSettingActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/FileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    .line 86
    .local v0, "size":J
    iget-object v2, p0, Lcom/boohee/one/video/ui/SportSettingActivity$2;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    new-instance v3, Lcom/boohee/one/video/ui/SportSettingActivity$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/boohee/one/video/ui/SportSettingActivity$2$1;-><init>(Lcom/boohee/one/video/ui/SportSettingActivity$2;J)V

    invoke-virtual {v2, v3}, Lcom/boohee/one/video/ui/SportSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
