.class Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;
.super Ljava/lang/Object;
.source "StatusPostTextActivity.java"

# interfaces
.implements Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/StatusPostTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StatusPostTextActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;Lcom/boohee/one/ui/StatusPostTextActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/StatusPostTextActivity$1;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V

    return-void
.end method


# virtual methods
.method public onRedoClick()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onSaveClick()V
    .locals 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    # getter for: Lcom/boohee/one/ui/StatusPostTextActivity;->preference:Lcom/boohee/database/UserPreference;
    invoke-static {v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$200(Lcom/boohee/one/ui/StatusPostTextActivity;)Lcom/boohee/database/UserPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/DraftBean;->parse(Ljava/lang/String;)Lcom/boohee/model/status/DraftBean;

    move-result-object v0

    .line 420
    .local v0, "bean":Lcom/boohee/model/status/DraftBean;
    if-nez v0, :cond_0

    new-instance v0, Lcom/boohee/model/status/DraftBean;

    .end local v0    # "bean":Lcom/boohee/model/status/DraftBean;
    invoke-direct {v0}, Lcom/boohee/model/status/DraftBean;-><init>()V

    .line 421
    .restart local v0    # "bean":Lcom/boohee/model/status/DraftBean;
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v1}, Lcom/boohee/widgets/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/model/status/DraftBean;->setSendTextMsg(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 423
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/boohee/model/status/DraftBean;->selectedPictures:Ljava/util/List;

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    # getter for: Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;
    invoke-static {v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$300(Lcom/boohee/one/ui/StatusPostTextActivity;)Lcom/boohee/model/status/AttachMent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    # getter for: Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;
    invoke-static {v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$300(Lcom/boohee/one/ui/StatusPostTextActivity;)Lcom/boohee/model/status/AttachMent;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/status/DraftBean;->attachMent:Lcom/boohee/model/status/AttachMent;

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    # getter for: Lcom/boohee/one/ui/StatusPostTextActivity;->preference:Lcom/boohee/database/UserPreference;
    invoke-static {v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$200(Lcom/boohee/one/ui/StatusPostTextActivity;)Lcom/boohee/database/UserPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/boohee/model/status/DraftBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->finish()V

    .line 431
    return-void
.end method

.method public onUnSaveClick()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StatusPostTextActivity;->ctx:Landroid/content/Context;

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->removeTempFilterRecord(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$400(Lcom/boohee/one/ui/StatusPostTextActivity;Landroid/content/Context;)V

    .line 436
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->finish()V

    .line 437
    return-void
.end method
