.class Lcom/boohee/account/UserProfileActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/UserProfileActivity;->initMc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/UserProfileActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const v3, 0x7f07041f

    .line 381
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 383
    const-string v1, "mc_summary"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/mine/McSummary;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/mine/McSummary;

    move-result-object v0

    .line 384
    .local v0, "mcSummary":Lcom/boohee/model/mine/McSummary;
    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    iget v2, v0, Lcom/boohee/model/mine/McSummary;->duration:I

    # setter for: Lcom/boohee/account/UserProfileActivity;->duration:I
    invoke-static {v1, v2}, Lcom/boohee/account/UserProfileActivity;->access$902(Lcom/boohee/account/UserProfileActivity;I)I

    .line 388
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    iget v2, v0, Lcom/boohee/model/mine/McSummary;->cycle:I

    # setter for: Lcom/boohee/account/UserProfileActivity;->cycle:I
    invoke-static {v1, v2}, Lcom/boohee/account/UserProfileActivity;->access$1002(Lcom/boohee/account/UserProfileActivity;I)I

    .line 389
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->duration:I
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$900(Lcom/boohee/account/UserProfileActivity;)I

    move-result v1

    if-lez v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->mcDays:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$1100(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->duration:I
    invoke-static {v2}, Lcom/boohee/account/UserProfileActivity;->access$900(Lcom/boohee/account/UserProfileActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_1
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->cycle:I
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$1000(Lcom/boohee/account/UserProfileActivity;)I

    move-result v1

    if-lez v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->mcCircle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$1200(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->cycle:I
    invoke-static {v2}, Lcom/boohee/account/UserProfileActivity;->access$1000(Lcom/boohee/account/UserProfileActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->mcDays:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$1100(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v2, v3}, Lcom/boohee/account/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->mcCircle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$1200(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity$6;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v2, v3}, Lcom/boohee/account/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
