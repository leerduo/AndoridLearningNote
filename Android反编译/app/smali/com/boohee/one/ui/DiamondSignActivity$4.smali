.class Lcom/boohee/one/ui/DiamondSignActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "DiamondSignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/DiamondSignActivity;->requestCheckNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/DiamondSignActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/DiamondSignActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 192
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    const-class v0, Lcom/boohee/model/CheckInfo;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/CheckInfo;

    # setter for: Lcom/boohee/one/ui/DiamondSignActivity;->checkInfo:Lcom/boohee/model/CheckInfo;
    invoke-static {v1, v0}, Lcom/boohee/one/ui/DiamondSignActivity;->access$402(Lcom/boohee/one/ui/DiamondSignActivity;Lcom/boohee/model/CheckInfo;)Lcom/boohee/model/CheckInfo;

    .line 193
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->checkInfo:Lcom/boohee/model/CheckInfo;
    invoke-static {v0}, Lcom/boohee/one/ui/DiamondSignActivity;->access$400(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/model/CheckInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/DiamondSignActivity;->tvContinueDay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->checkInfo:Lcom/boohee/model/CheckInfo;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$400(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/model/CheckInfo;

    move-result-object v2

    iget v2, v2, Lcom/boohee/model/CheckInfo;->checkin_days:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/DiamondSignActivity;->tvAllDay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->checkInfo:Lcom/boohee/model/CheckInfo;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$400(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/model/CheckInfo;

    move-result-object v2

    iget v2, v2, Lcom/boohee/model/CheckInfo;->all_checkin_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/DiamondSignActivity;->tvNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$4;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->checkInfo:Lcom/boohee/model/CheckInfo;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$400(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/model/CheckInfo;

    move-result-object v2

    iget v2, v2, Lcom/boohee/model/CheckInfo;->envious_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    return-void
.end method
