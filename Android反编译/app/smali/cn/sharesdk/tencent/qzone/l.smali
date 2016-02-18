.class Lcn/sharesdk/tencent/qzone/l;
.super Lcom/mob/tools/SSDKWebViewClient;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/i;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/l;->a:Lcn/sharesdk/tencent/qzone/i;

    invoke-direct {p0}, Lcom/mob/tools/SSDKWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/l;->a:Lcn/sharesdk/tencent/qzone/i;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/i;->b(Lcn/sharesdk/tencent/qzone/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/l;->a:Lcn/sharesdk/tencent/qzone/i;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qzone/i;->a(Lcn/sharesdk/tencent/qzone/i;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/mob/tools/SSDKWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "mqzone://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/l;->a:Lcn/sharesdk/tencent/qzone/i;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qzone/i;->b(Lcn/sharesdk/tencent/qzone/i;Ljava/lang/String;)V

    goto :goto_0
.end method
