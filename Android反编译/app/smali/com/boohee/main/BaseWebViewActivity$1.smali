.class Lcom/boohee/main/BaseWebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/main/BaseWebViewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/main/BaseWebViewActivity;


# direct methods
.method constructor <init>(Lcom/boohee/main/BaseWebViewActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/boohee/main/BaseWebViewActivity$1;->this$0:Lcom/boohee/main/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity$1;->this$0:Lcom/boohee/main/BaseWebViewActivity;

    invoke-virtual {v0}, Lcom/boohee/main/BaseWebViewActivity;->dismissLoading()V

    .line 72
    return-void
.end method
