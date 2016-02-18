.class public Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;
.super Landroid/os/AsyncTask;
.source "LoadLocalBigImgTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private context:Landroid/content/Context;

.field private height:I

.field private path:Ljava/lang/String;

.field private pb:Landroid/widget/ProgressBar;

.field private photoView:Luk/co/senab/photoview/PhotoView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Luk/co/senab/photoview/PhotoView;Landroid/widget/ProgressBar;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "photoView"    # Luk/co/senab/photoview/PhotoView;
    .param p4, "pb"    # Landroid/widget/ProgressBar;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->path:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->photoView:Luk/co/senab/photoview/PhotoView;

    .line 34
    iput-object p4, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->pb:Landroid/widget/ProgressBar;

    .line 35
    iput p5, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->width:I

    .line 36
    iput p6, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->height:I

    .line 37
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->path:Ljava/lang/String;

    iget v2, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->width:I

    iget v3, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->height:I

    invoke-static {v1, v2, v3}, Lcom/easemob/util/ImageUtils;->decodeScaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "LoadLocalBigImgTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "LoadLocalBigImgTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->photoView:Luk/co/senab/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setVisibility(I)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-static {}, Lcom/boohee/one/easemob/utils/HXImageCache;->getInstance()Lcom/boohee/one/easemob/utils/HXImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/easemob/utils/HXImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->photoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204e2

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "LoadLocalBigImgTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "LoadLocalBigImgTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 41
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 42
    iget-object v1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/easemob/util/ImageUtils;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "degree":I
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->photoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, v3}, Luk/co/senab/photoview/PhotoView;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lcom/boohee/one/easemob/task/LoadLocalBigImgTask;->photoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoView;->setVisibility(I)V

    goto :goto_0
.end method
