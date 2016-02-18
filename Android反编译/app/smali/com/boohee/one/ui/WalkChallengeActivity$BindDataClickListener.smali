.class Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;
.super Ljava/lang/Object;
.source "WalkChallengeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WalkChallengeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindDataClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WalkChallengeActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/WalkChallengeActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/one/ui/WalkChallengeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/WalkChallengeActivity$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # invokes: Lcom/boohee/one/ui/WalkChallengeActivity;->bindMiBand()V
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$400(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # invokes: Lcom/boohee/one/ui/WalkChallengeActivity;->isOneDataSource()Z
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$600(Lcom/boohee/one/ui/WalkChallengeActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    const-string v1, "ledongli"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # invokes: Lcom/boohee/one/ui/WalkChallengeActivity;->loadLeDongLiData()V
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$500(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # invokes: Lcom/boohee/one/ui/WalkChallengeActivity;->bindMiBand()V
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$400(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # invokes: Lcom/boohee/one/ui/WalkChallengeActivity;->showDialog()V
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$700(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    goto :goto_0
.end method
