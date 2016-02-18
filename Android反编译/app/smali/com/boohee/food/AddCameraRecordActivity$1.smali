.class Lcom/boohee/food/AddCameraRecordActivity$1;
.super Ljava/lang/Object;
.source "AddCameraRecordActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddCameraRecordActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddCameraRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddCameraRecordActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 124
    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v1, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v1, v1, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/boohee/food/AddCameraRecordActivity;->mInputCalory:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/food/AddCameraRecordActivity;->access$002(Lcom/boohee/food/AddCameraRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v0, v0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 127
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v0, v0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u7b49\u5f85\u987e\u95ee\u4e3a\u4f60\u4f30\u7b97"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v0, v0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    # getter for: Lcom/boohee/food/AddCameraRecordActivity;->mInputCalory:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/food/AddCameraRecordActivity;->access$000(Lcom/boohee/food/AddCameraRecordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v0, v0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    # getter for: Lcom/boohee/food/AddCameraRecordActivity;->mInputCalory:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/food/AddCameraRecordActivity;->access$000(Lcom/boohee/food/AddCameraRecordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v0, v0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v1, v1, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v0, v0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    const-string v1, "\u6240\u542b\u7684\u70ed\u91cf\uff08\u53ef\u4e0d\u586b\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$1;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    iget-object v0, v0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
