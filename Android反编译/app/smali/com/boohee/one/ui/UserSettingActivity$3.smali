.class Lcom/boohee/one/ui/UserSettingActivity$3;
.super Ljava/lang/Thread;
.source "UserSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserSettingActivity;->getCacheSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserSettingActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/boohee/one/ui/UserSettingActivity$3;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 221
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/FileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    .line 222
    .local v0, "size":J
    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity$3;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    new-instance v3, Lcom/boohee/one/ui/UserSettingActivity$3$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/boohee/one/ui/UserSettingActivity$3$1;-><init>(Lcom/boohee/one/ui/UserSettingActivity$3;J)V

    invoke-virtual {v2, v3}, Lcom/boohee/one/ui/UserSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method
