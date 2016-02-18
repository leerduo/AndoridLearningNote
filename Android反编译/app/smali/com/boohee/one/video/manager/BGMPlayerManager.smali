.class public Lcom/boohee/one/video/manager/BGMPlayerManager;
.super Ljava/lang/Object;
.source "BGMPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/video/manager/BGMPlayerManager$BGMPlayerManagerHodler;
    }
.end annotation


# static fields
.field private static bgmPlayer:Landroid/media/MediaPlayer;

.field private static initialed:Z

.field private static path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->initialed:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/video/manager/BGMPlayerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/video/manager/BGMPlayerManager$1;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/boohee/one/video/manager/BGMPlayerManager;-><init>()V

    return-void
.end method

.method static synthetic access$200()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static getInstance()Lcom/boohee/one/video/manager/BGMPlayerManager;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/boohee/one/video/manager/BGMPlayerManager;->init()V

    .line 34
    invoke-static {}, Lcom/boohee/one/video/manager/BGMPlayerManager$BGMPlayerManagerHodler;->access$100()Lcom/boohee/one/video/manager/BGMPlayerManager;

    move-result-object v0

    return-object v0
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    .line 44
    sget-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/boohee/one/video/manager/BGMPlayerManager$1;

    invoke-direct {v1}, Lcom/boohee/one/video/manager/BGMPlayerManager$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 50
    sget-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/boohee/one/video/manager/BGMPlayerManager$2;

    invoke-direct {v1}, Lcom/boohee/one/video/manager/BGMPlayerManager$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public pauseBgm()V
    .locals 2

    .prologue
    .line 78
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 107
    const/4 v1, 0x0

    sput-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resumeBgm()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public startBgm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    sget-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sport_audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->path:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 64
    .local v6, "descriptor":Landroid/content/res/AssetFileDescriptor;
    sget-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 65
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 66
    sget-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 67
    sget-object v0, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v7

    .line 69
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 71
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopBgm()V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/BGMPlayerManager;->bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
