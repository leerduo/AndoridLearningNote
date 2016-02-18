.class Lcom/boohee/one/ui/UserSettingActivity$4;
.super Ljava/lang/Object;
.source "UserSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserSettingActivity;->cleanPictureCache()V
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
    .line 237
    iput-object p1, p0, Lcom/boohee/one/ui/UserSettingActivity$4;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 240
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 241
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity$4;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/UserSettingActivity;->cacheLine:Lcom/boohee/myview/CommonLineView;

    const-string v1, "0.0M"

    invoke-virtual {v0, v1}, Lcom/boohee/myview/CommonLineView;->setRightText(Ljava/lang/String;)V

    .line 242
    return-void
.end method
