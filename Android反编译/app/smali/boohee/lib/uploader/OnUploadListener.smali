.class public interface abstract Lboohee/lib/uploader/OnUploadListener;
.super Ljava/lang/Object;
.source "OnUploadListener.java"


# virtual methods
.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)V"
        }
    .end annotation
.end method
