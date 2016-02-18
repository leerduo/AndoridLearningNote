.class Lcom/boohee/one/ui/MyFavoriteActivity$1;
.super Ljava/lang/Object;
.source "MyFavoriteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MyFavoriteActivity;->loadBooheePic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MyFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MyFavoriteActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/boohee/one/ui/MyFavoriteActivity$1;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/boohee/one/ui/MyFavoriteActivity$1;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    const-string v3, "http://up.boohee.cn/house/u/one/reminder/%d.jpg"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/boohee/one/ui/MyFavoriteActivity;->imageUrl:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/boohee/one/ui/MyFavoriteActivity$1;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/MyFavoriteActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/boohee/one/ui/MyFavoriteActivity$1;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/MyFavoriteActivity;->imageUrl:Ljava/lang/String;

    new-instance v4, Lcom/boohee/one/ui/MyFavoriteActivity$1$1;

    invoke-direct {v4, p0}, Lcom/boohee/one/ui/MyFavoriteActivity$1$1;-><init>(Lcom/boohee/one/ui/MyFavoriteActivity$1;)V

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 86
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
