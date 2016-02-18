.class public Lcom/boohee/one/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private isMainOpened:Z

.field private refWatcher:Lcom/squareup/leakcanary/RefWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/MyApplication;->isMainOpened:Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/boohee/one/MyApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getRefWatcher(Landroid/content/Context;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/MyApplication;

    .line 53
    .local v0, "application":Lcom/boohee/one/MyApplication;
    iget-object v1, v0, Lcom/boohee/one/MyApplication;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/boohee/one/MyApplication;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    goto :goto_0
.end method

.method public static initImageLoader(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->randomColor()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 104
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 105
    return-void
.end method

.method private initLogger()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "OneLogger"

    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/Settings;->methodCount(I)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/orhanobut/logger/Settings;->hideThreadInfo()Lcom/orhanobut/logger/Settings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/Settings;->methodOffset(I)Lcom/orhanobut/logger/Settings;

    .line 127
    return-void
.end method

.method private initPicassoLib()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-virtual {p0}, Lcom/boohee/one/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "builder":Lcom/squareup/picasso/Picasso$Builder;
    new-instance v1, Lcom/squareup/picasso/LruCache;

    const/high16 v2, 0x200000

    invoke-direct {v1, v2}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;->memoryCache(Lcom/squareup/picasso/Cache;)Lcom/squareup/picasso/Picasso$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->setSingletonInstance(Lcom/squareup/picasso/Picasso;)V

    .line 120
    return-void
.end method

.method private initUploader()V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lboohee/lib/uploader/UploaderConfig;->init(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lboohee/lib/uploader/UploaderConfig;->debug(Z)V

    .line 111
    invoke-static {}, Lcom/boohee/utility/Config;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lboohee/lib/uploader/UploaderConfig;->setBooheeUploadParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 94
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public getIsMainOpened()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/boohee/one/MyApplication;->isMainOpened:Z

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 59
    invoke-virtual {p0}, Lcom/boohee/one/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/boohee/one/MyApplication;->sContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/boohee/one/MyApplication;->initLogger()V

    .line 62
    invoke-static {}, Lcom/boohee/one/http/IPCheck;->cacheIpAndApiTest()V

    .line 63
    invoke-virtual {p0}, Lcom/boohee/one/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utility/App;->checkDB(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lcom/boohee/one/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/one/MyApplication;->initImageLoader(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcom/boohee/main/CrashHandler;->getInstance()Lcom/boohee/main/CrashHandler;

    move-result-object v1

    .line 68
    .local v1, "handler":Lcom/boohee/main/CrashHandler;
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 77
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v2

    sget-object v3, Lcom/boohee/one/MyApplication;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/boohee/push/PushManager;->initPush(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/boohee/utils/MeiQiaHelper;->initSDK()V

    .line 81
    invoke-direct {p0}, Lcom/boohee/one/MyApplication;->initUploader()V

    .line 83
    invoke-static {}, Lcom/boohee/utils/MultiImageHelper;->initMultiSelctor()V

    .line 85
    invoke-direct {p0}, Lcom/boohee/one/MyApplication;->initPicassoLib()V

    .line 87
    const-string v0, "http://bohe-house.u.qiniudn.com/android/logo_256x256.png"

    .line 88
    .local v0, "defaultImageUrl":Ljava/lang/String;
    sget-object v2, Lcom/boohee/one/MyApplication;->sContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lboohee/lib/share/ShareManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setIsMainActivityOpened(Z)V
    .locals 0
    .param p1, "isOpened"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/boohee/one/MyApplication;->isMainOpened:Z

    .line 45
    return-void
.end method
