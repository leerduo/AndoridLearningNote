.class Lcom/boohee/one/onekey/UserHomeActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/UserHomeActivity;->requestSolutions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/UserHomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/UserHomeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/boohee/one/onekey/UserHomeActivity$3;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcom/boohee/one/onekey/UserHomeActivity$3;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    iget-object v4, v4, Lcom/boohee/one/onekey/UserHomeActivity;->tvStart:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_1
    const-string v4, "chat_status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 160
    .local v0, "chatStatus":Z
    iget-object v4, p0, Lcom/boohee/one/onekey/UserHomeActivity$3;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    iget-object v4, v4, Lcom/boohee/one/onekey/UserHomeActivity;->btStart:Landroid/widget/Button;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 151
    .end local v0    # "chatStatus":Z
    :cond_1
    iget-object v4, p0, Lcom/boohee/one/onekey/UserHomeActivity$3;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    iget-object v4, v4, Lcom/boohee/one/onekey/UserHomeActivity;->tvStart:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v4, p0, Lcom/boohee/one/onekey/UserHomeActivity$3;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    iget-object v4, v4, Lcom/boohee/one/onekey/UserHomeActivity;->tvStart:Landroid/widget/TextView;

    new-instance v5, Lcom/boohee/one/onekey/UserHomeActivity$3$1;

    invoke-direct {v5, p0, v1}, Lcom/boohee/one/onekey/UserHomeActivity$3$1;-><init>(Lcom/boohee/one/onekey/UserHomeActivity$3;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .restart local v0    # "chatStatus":Z
    :cond_2
    move v2, v3

    .line 160
    goto :goto_2
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity$3;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/UserHomeActivity;->dismissLoading()V

    .line 166
    return-void
.end method
