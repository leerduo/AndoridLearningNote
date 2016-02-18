.class Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;
.super Landroid/os/AsyncTask;
.source "MyFavoriteActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/MyFavoriteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/boohee/one/ui/MyFavoriteActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/MyFavoriteActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/MyFavoriteActivity;Lcom/boohee/one/ui/MyFavoriteActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/MyFavoriteActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/MyFavoriteActivity$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;-><init>(Lcom/boohee/one/ui/MyFavoriteActivity;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MyFavoriteActivity$SaveImageTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MyFavoriteActivity$SaveImageTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 104
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MyFavoriteActivity;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MyFavoriteActivity;->ctx:Landroid/content/Context;

    aget-object v1, p1, v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    iget-object v3, p0, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/MyFavoriteActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/utils/FileUtil;->downloadImage2Gallery(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MyFavoriteActivity$SaveImageTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MyFavoriteActivity$SaveImageTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fe\u7247\u5df2\u4fdd\u5b58\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "\u4fdd\u5b58\u56fe\u7247\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4fdd\u5b58~~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
