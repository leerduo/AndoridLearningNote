.class Lcom/boohee/more/ViewTipActivity$SaveImageTask;
.super Landroid/os/AsyncTask;
.source "ViewTipActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/more/ViewTipActivity;
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

.field final synthetic this$0:Lcom/boohee/more/ViewTipActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/more/ViewTipActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->this$0:Lcom/boohee/more/ViewTipActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/more/ViewTipActivity;Lcom/boohee/more/ViewTipActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/more/ViewTipActivity;
    .param p2, "x1"    # Lcom/boohee/more/ViewTipActivity$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/boohee/more/ViewTipActivity$SaveImageTask;-><init>(Lcom/boohee/more/ViewTipActivity;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "ViewTipActivity$SaveImageTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ViewTipActivity$SaveImageTask#doInBackground"

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

    .line 151
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->imageUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/more/ViewTipActivity;->access$600(Lcom/boohee/more/ViewTipActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/more/ViewTipActivity;->access$700(Lcom/boohee/more/ViewTipActivity;)Landroid/content/Context;

    move-result-object v0

    aget-object v1, p1, v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    iget-object v3, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->imageUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/more/ViewTipActivity;->access$600(Lcom/boohee/more/ViewTipActivity;)Ljava/lang/String;

    move-result-object v3

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
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "ViewTipActivity$SaveImageTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ViewTipActivity$SaveImageTask#onPostExecute"

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
    .line 159
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$SaveImageTask;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->saveText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/more/ViewTipActivity;->access$000(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
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

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "\u4fdd\u5b58\u56fe\u7247\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4fdd\u5b58~~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
