.class Lcom/boohee/one/onekey/UserInfoCheckActivity$2;
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
    .line 109
    iput-object p1, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->rbEasy:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    const-string v1, "easy"

    # setter for: Lcom/boohee/one/onekey/UserInfoCheckActivity;->mLevel:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->access$102(Lcom/boohee/one/onekey/UserInfoCheckActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->rbNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    const-string v1, "normal"

    # setter for: Lcom/boohee/one/onekey/UserInfoCheckActivity;->mLevel:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->access$102(Lcom/boohee/one/onekey/UserInfoCheckActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->rbHard:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    const-string v1, "hard"

    # setter for: Lcom/boohee/one/onekey/UserInfoCheckActivity;->mLevel:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->access$102(Lcom/boohee/one/onekey/UserInfoCheckActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
