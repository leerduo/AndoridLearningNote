.class Lcom/boohee/one/ui/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WelcomeActivity;->requestJson()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/boohee/one/ui/WelcomeActivity$2;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity$2;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    const/4 v1, 0x0

    # invokes: Lcom/boohee/one/ui/WelcomeActivity;->setRefresh(Z)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/WelcomeActivity;->access$200(Lcom/boohee/one/ui/WelcomeActivity;Z)V

    .line 76
    return-void
.end method
