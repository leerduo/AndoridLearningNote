.class Lcom/boohee/one/ui/ChallengeBrowserActivity$2;
.super Landroid/webkit/WebViewClient;
.source "ChallengeBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeBrowserActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    sget-object v0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$400(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    new-array v0, v3, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$500(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$502(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    new-array v0, v3, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$500(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$500(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 207
    sget-object v0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$400(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return v5

    .line 178
    :cond_0
    sget-object v2, Lcom/boohee/one/ui/ChallengeBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, ".apk"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # setter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$102(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # invokes: Lcom/boohee/one/ui/ChallengeBrowserActivity;->setUpMilstoneBtn()V
    invoke-static {v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$200(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V

    .line 202
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # invokes: Lcom/boohee/one/ui/ChallengeBrowserActivity;->setupShareBtn()V
    invoke-static {v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$300(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V

    goto :goto_0

    .line 189
    :cond_2
    const-string v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-static {v2, p2}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 193
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 187
    :catch_1
    move-exception v2

    goto :goto_1
.end method
