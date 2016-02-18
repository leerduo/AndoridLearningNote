.class Lcom/boohee/one/onekey/UserInfoCheckActivity$1;
.super Ljava/lang/Object;
.source "UserInfoCheckActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/UserInfoCheckActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/UserInfoCheckActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$1;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$1;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->rbMale:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$1;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    const-string v1, "male"

    # setter for: Lcom/boohee/one/onekey/UserInfoCheckActivity;->mSex:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->access$002(Lcom/boohee/one/onekey/UserInfoCheckActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$1;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    const-string v1, "female"

    # setter for: Lcom/boohee/one/onekey/UserInfoCheckActivity;->mSex:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->access$002(Lcom/boohee/one/onekey/UserInfoCheckActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
