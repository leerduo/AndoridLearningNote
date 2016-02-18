.class Lcom/boohee/one/mine/BiologyClockSettingActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "BiologyClockSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/mine/BiologyClockSettingActivity;->getMcStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/mine/BiologyClockSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/mine/BiologyClockSettingActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;->this$0:Lcom/boohee/one/mine/BiologyClockSettingActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 60
    iget-object v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;->this$0:Lcom/boohee/one/mine/BiologyClockSettingActivity;

    invoke-virtual {v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v2, "mc_summary"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/model/mine/McSummary;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/mine/McSummary;

    move-result-object v0

    .line 62
    .local v0, "mcSummary":Lcom/boohee/model/mine/McSummary;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/boohee/model/mine/McSummary;->cycle:I

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;->this$0:Lcom/boohee/one/mine/BiologyClockSettingActivity;

    # getter for: Lcom/boohee/one/mine/BiologyClockSettingActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->access$000(Lcom/boohee/one/mine/BiologyClockSettingActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v1

    .line 64
    .local v1, "userPrefernce":Lcom/boohee/database/UserPreference;
    const-string v2, "duration"

    iget v3, v0, Lcom/boohee/model/mine/McSummary;->duration:I

    invoke-virtual {v1, v2, v3}, Lcom/boohee/database/UserPreference;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v2, "cycle"

    iget v3, v0, Lcom/boohee/model/mine/McSummary;->cycle:I

    invoke-virtual {v1, v2, v3}, Lcom/boohee/database/UserPreference;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-object v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;->this$0:Lcom/boohee/one/mine/BiologyClockSettingActivity;

    iget v3, v0, Lcom/boohee/model/mine/McSummary;->cycle:I

    # setter for: Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircle:I
    invoke-static {v2, v3}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->access$102(Lcom/boohee/one/mine/BiologyClockSettingActivity;I)I

    .line 67
    iget-object v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;->this$0:Lcom/boohee/one/mine/BiologyClockSettingActivity;

    iget v3, v0, Lcom/boohee/model/mine/McSummary;->duration:I

    # setter for: Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDay:I
    invoke-static {v2, v3}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->access$202(Lcom/boohee/one/mine/BiologyClockSettingActivity;I)I

    .line 68
    iget-object v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;->this$0:Lcom/boohee/one/mine/BiologyClockSettingActivity;

    # invokes: Lcom/boohee/one/mine/BiologyClockSettingActivity;->initMc()V
    invoke-static {v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->access$300(Lcom/boohee/one/mine/BiologyClockSettingActivity;)V

    goto :goto_0
.end method
