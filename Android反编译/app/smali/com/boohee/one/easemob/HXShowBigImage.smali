.class public Lcom/boohee/one/easemob/HXShowBigImage;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "HXShowBigImage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private default_res:I

.field private image:Luk/co/senab/photoview/PhotoView;

.field private isDownloaded:Z

.field private loadLocalPb:Landroid/widget/ProgressBar;

.field private localFilePath:Ljava/lang/String;

.field private pd:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/boohee/one/easemob/HXShowBigImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/easemob/HXShowBigImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    .line 42
    const v0, 0x7f02011f

    iput v0, p0, Lcom/boohee/one/easemob/HXShowBigImage;->default_res:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/easemob/HXShowBigImage;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXShowBigImage;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/easemob/HXShowBigImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/easemob/HXShowBigImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXShowBigImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/easemob/HXShowBigImage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXShowBigImage;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/easemob/HXShowBigImage;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/easemob/HXShowBigImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXShowBigImage;

    .prologue
    .line 38
    iget v0, p0, Lcom/boohee/one/easemob/HXShowBigImage;->default_res:I

    return v0
.end method

.method static synthetic access$300(Lcom/boohee/one/easemob/HXShowBigImage;)Luk/co/senab/photoview/PhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXShowBigImage;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/easemob/HXShowBigImage;->image:Luk/co/senab/photoview/PhotoView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/easemob/HXShowBigImage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXShowBigImage;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->isDownloaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/one/easemob/HXShowBigImage;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXShowBigImage;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/easemob/HXShowBigImage;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/boohee/one/easemob/HXShowBigImage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private downloadImage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "remoteFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXShowBigImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "str1":Ljava/lang/String;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->pd:Landroid/app/ProgressDialog;

    .line 125
    iget-object v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 126
    iget-object v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    iget-object v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/HXShowBigImage;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->localFilePath:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/boohee/one/easemob/HXShowBigImage$2;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/HXShowBigImage$2;-><init>(Lcom/boohee/one/easemob/HXShowBigImage;)V

    .line 184
    .local v0, "callback":Lcom/easemob/EMCallBack;
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/easemob/HXShowBigImage;->localFilePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, p2, v0}, Lcom/easemob/chat/EMChatManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/EMCallBack;)V

    .line 186
    return-void
.end method


# virtual methods
.method public getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "remoteUrl"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "localPath":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 112
    .end local v0    # "localPath":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "localPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXShowBigImage;->isDownloaded:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/HXShowBigImage;->setResult(I)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXShowBigImage;->finish()V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f030079

    invoke-virtual {p0, v1}, Lcom/boohee/one/easemob/HXShowBigImage;->setContentView(I)V

    .line 54
    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/boohee/one/easemob/HXShowBigImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/senab/photoview/PhotoView;

    iput-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->image:Luk/co/senab/photoview/PhotoView;

    .line 55
    const v1, 0x7f0e020d

    invoke-virtual {p0, v1}, Lcom/boohee/one/easemob/HXShowBigImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->loadLocalPb:Landroid/widget/ProgressBar;

    .line 56
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXShowBigImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_image"

    const v3, 0x7f02011a

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->default_res:I

    .line 57
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXShowBigImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 58
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXShowBigImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "remotepath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "remotepath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXShowBigImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "secret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "secret":Ljava/lang/String;
    sget-object v1, Lcom/boohee/one/easemob/HXShowBigImage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show big image uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remotepath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz v11, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    sget-object v1, Lcom/boohee/one/easemob/HXShowBigImage;->TAG:Ljava/lang/String;

    const-string v2, "showbigimage file exists. directly show it"

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXShowBigImage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 69
    invoke-static {}, Lcom/boohee/one/easemob/utils/HXImageCache;->getInstance()Lcom/boohee/one/easemob/utils/HXImageCache;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/easemob/utils/HXImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->bitmap:Landroid/graphics/Bitmap;

    .line 70
    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 71
    new-instance v0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/easemob/HXShowBigImage;->image:Luk/co/senab/photoview/PhotoView;

    iget-object v4, p0, Lcom/boohee/one/easemob/HXShowBigImage;->loadLocalPb:Landroid/widget/ProgressBar;

    const/16 v5, 0x280

    const/16 v6, 0x3c0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;-><init>(Landroid/content/Context;Ljava/lang/String;Luk/co/senab/photoview/PhotoView;Landroid/widget/ProgressBar;II)V

    .line 73
    .local v0, "task":Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 74
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v12, [Ljava/lang/Void;

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    .end local v0    # "task":Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->image:Luk/co/senab/photoview/PhotoView;

    new-instance v2, Lcom/boohee/one/easemob/HXShowBigImage$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/easemob/HXShowBigImage$1;-><init>(Lcom/boohee/one/easemob/HXShowBigImage;)V

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void

    .line 74
    .restart local v0    # "task":Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;
    .restart local v8    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 76
    .restart local v0    # "task":Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;
    :cond_1
    new-array v1, v12, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->image:Luk/co/senab/photoview/PhotoView;

    iget-object v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 81
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    :cond_4
    if-eqz v9, :cond_6

    .line 82
    sget-object v1, Lcom/boohee/one/easemob/HXShowBigImage;->TAG:Ljava/lang/String;

    const-string v2, "download remote image"

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v7, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 85
    const-string v1, "share-secret"

    invoke-interface {v7, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_5
    invoke-direct {p0, v9, v7}, Lcom/boohee/one/easemob/HXShowBigImage;->downloadImage(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 89
    .end local v7    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage;->image:Luk/co/senab/photoview/PhotoView;

    iget v2, p0, Lcom/boohee/one/easemob/HXShowBigImage;->default_res:I

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoView;->setImageResource(I)V

    goto :goto_0
.end method
