.class Lcom/boohee/one/ui/StatusPostTextActivity$1;
.super Ljava/lang/Object;
.source "StatusPostTextActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StatusPostTextActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StatusPostTextActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$1;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$1;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v1}, Lcom/boohee/widgets/EmojiEditText;->length()I

    move-result v0

    .line 179
    .local v0, "currentNum":I
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$1;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StatusPostTextActivity;->charNumTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / 140"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/16 v1, 0x8c

    if-ne v0, v1, :cond_0

    .line 181
    const v1, 0x7f070504

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 174
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 170
    return-void
.end method
