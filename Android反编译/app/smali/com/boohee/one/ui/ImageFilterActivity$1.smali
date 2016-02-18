.class Lcom/boohee/one/ui/ImageFilterActivity$1;
.super Ljava/lang/Thread;
.source "ImageFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ImageFilterActivity;->postAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ImageFilterActivity;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ImageFilterActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/boohee/one/ui/ImageFilterActivity$1;->this$0:Lcom/boohee/one/ui/ImageFilterActivity;

    iput-object p2, p0, Lcom/boohee/one/ui/ImageFilterActivity$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/ImageFilterActivity$1;->this$0:Lcom/boohee/one/ui/ImageFilterActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/ImageFilterActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/boohee/utils/BitmapUtil;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity$1;->this$0:Lcom/boohee/one/ui/ImageFilterActivity;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/boohee/one/ui/ImageFilterActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/ImageFilterActivity;->access$002(Lcom/boohee/one/ui/ImageFilterActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 139
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity$1;->this$0:Lcom/boohee/one/ui/ImageFilterActivity;

    # getter for: Lcom/boohee/one/ui/ImageFilterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/boohee/one/ui/ImageFilterActivity;->access$100(Lcom/boohee/one/ui/ImageFilterActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/ImageFilterActivity$1$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/ImageFilterActivity$1$1;-><init>(Lcom/boohee/one/ui/ImageFilterActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method
