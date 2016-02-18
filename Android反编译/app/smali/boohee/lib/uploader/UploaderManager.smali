.class public Lboohee/lib/uploader/UploaderManager;
.super Ljava/lang/Object;
.source "UploaderManager.java"


# static fields
.field private static mUploader:Lboohee/lib/uploader/uploader/QiniuUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lboohee/lib/uploader/uploader/QiniuUploader;->newInstance()Lboohee/lib/uploader/uploader/QiniuUploader;

    move-result-object v0

    sput-object v0, Lboohee/lib/uploader/UploaderManager;->mUploader:Lboohee/lib/uploader/uploader/QiniuUploader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAll()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lboohee/lib/uploader/UploaderManager;->mUploader:Lboohee/lib/uploader/uploader/QiniuUploader;

    invoke-virtual {v0}, Lboohee/lib/uploader/uploader/QiniuUploader;->canceleAll()V

    .line 115
    return-void
.end method

.method public static upload(Lboohee/lib/uploader/model/Picture;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 1
    .param p0, "picture"    # Lboohee/lib/uploader/model/Picture;
    .param p1, "listener"    # Lboohee/lib/uploader/OnUploadListener;

    .prologue
    .line 97
    sget-object v0, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Lboohee/lib/uploader/model/Picture;Lboohee/lib/uploader/OnUploadListener;)V

    .line 98
    return-void
.end method

.method public static upload(Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "listener"    # Lboohee/lib/uploader/OnUploadListener;

    .prologue
    .line 77
    sget-object v0, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    .line 78
    return-void
.end method

.method public static upload(Ljava/lang/String;Lboohee/lib/uploader/model/Picture;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "picture"    # Lboohee/lib/uploader/model/Picture;
    .param p2, "listener"    # Lboohee/lib/uploader/OnUploadListener;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p1, Lboohee/lib/uploader/model/Picture;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v0, Lboohee/lib/uploader/UploaderManager;->mUploader:Lboohee/lib/uploader/uploader/QiniuUploader;

    invoke-virtual {v0, p0, p1, p2}, Lboohee/lib/uploader/uploader/QiniuUploader;->upload(Ljava/lang/String;Lboohee/lib/uploader/model/Picture;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lboohee/lib/uploader/OnUploadListener;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lboohee/lib/uploader/UploaderManager;->mUploader:Lboohee/lib/uploader/uploader/QiniuUploader;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, p0, v1}, Lboohee/lib/uploader/uploader/QiniuUploader;->upload(Lboohee/lib/uploader/OnUploadListener;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static upload(Ljava/lang/String;Ljava/util/List;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p2, "listener"    # Lboohee/lib/uploader/OnUploadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;",
            "Lboohee/lib/uploader/OnUploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "pictureList":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v0, Lboohee/lib/uploader/UploaderManager;->mUploader:Lboohee/lib/uploader/uploader/QiniuUploader;

    invoke-virtual {v0, p0, p1, p2}, Lboohee/lib/uploader/uploader/QiniuUploader;->upload(Ljava/lang/String;Ljava/util/List;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0
.end method

.method public static upload(Ljava/lang/String;[Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pathArray"    # [Ljava/lang/String;
    .param p2, "listener"    # Lboohee/lib/uploader/OnUploadListener;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v0, Lboohee/lib/uploader/UploaderManager;->mUploader:Lboohee/lib/uploader/uploader/QiniuUploader;

    invoke-virtual {v0, p2, p0, p1}, Lboohee/lib/uploader/uploader/QiniuUploader;->upload(Lboohee/lib/uploader/OnUploadListener;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static upload(Ljava/util/List;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 1
    .param p1, "listener"    # Lboohee/lib/uploader/OnUploadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;",
            "Lboohee/lib/uploader/OnUploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "pictureList":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    sget-object v0, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Ljava/util/List;Lboohee/lib/uploader/OnUploadListener;)V

    .line 108
    return-void
.end method

.method public static upload([Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V
    .locals 1
    .param p0, "pathArray"    # [Ljava/lang/String;
    .param p1, "listener"    # Lboohee/lib/uploader/OnUploadListener;

    .prologue
    .line 87
    sget-object v0, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;[Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    .line 88
    return-void
.end method
