.class Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;
.super Landroid/os/AsyncTask;
.source "TodayAnalysisActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapAsync"
.end annotation

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

.field iv_content:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

.field view_share_summary:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLlTodayAnalysis:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/boohee/utils/BitmapUtil;->getBitmapByView(Landroid/widget/LinearLayout;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "TodayAnalysisActivity$BitmapAsync#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TodayAnalysisActivity$BitmapAsync#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 364
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->iv_content:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->view_share_summary:Landroid/view/View;

    invoke-static {v2}, Lcom/boohee/utils/BitmapUtil;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    .local v0, "bitmap_share":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    # getter for: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$700(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v3

    if-nez v0, :cond_3

    move-object v2, p1

    :goto_0
    const-string v4, "SHARE_4_LINECHART"

    invoke-static {v3, v2, v4}, Lcom/boohee/utils/FileUtil;->getPNGImagePath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    # getter for: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$800(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    const-string v3, "\u5206\u4eab"

    const-string v4, ""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 370
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 373
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 376
    :cond_2
    return-void

    .end local v1    # "filePath":Ljava/lang/String;
    :cond_3
    move-object v2, v0

    .line 366
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "TodayAnalysisActivity$BitmapAsync#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->onPostExecute(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TodayAnalysisActivity$BitmapAsync#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 353
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 354
    const-string v1, "\u6b63\u5728\u5206\u4eab\u4e2d..."

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    # getter for: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$500(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03026b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->view_share_summary:Landroid/view/View;

    .line 356
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->view_share_summary:Landroid/view/View;

    const v2, 0x7f0e023e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 357
    .local v0, "tv_date":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    # getter for: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$600(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8584\u8377\u996e\u98df\u5206\u6790"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->view_share_summary:Landroid/view/View;

    const v2, 0x7f0e020b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->iv_content:Landroid/widget/ImageView;

    .line 359
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    # getter for: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$600(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "M\u6708d\u65e5"

    invoke-static {v1, v3}, Lcom/boohee/utils/DateFormatUtils;->string2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
