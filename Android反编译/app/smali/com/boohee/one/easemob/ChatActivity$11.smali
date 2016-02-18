.class Lcom/boohee/one/easemob/ChatActivity$11;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/easemob/ChatActivity;->getGridChildView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/easemob/ChatActivity;

.field final synthetic val$expressionAdapter:Lcom/boohee/one/easemob/adapter/ExpressionAdapter;


# direct methods
.method constructor <init>(Lcom/boohee/one/easemob/ChatActivity;Lcom/boohee/one/easemob/adapter/ExpressionAdapter;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    iput-object p2, p0, Lcom/boohee/one/easemob/ChatActivity$11;->val$expressionAdapter:Lcom/boohee/one/easemob/adapter/ExpressionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1382
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->val$expressionAdapter:Lcom/boohee/one/easemob/adapter/ExpressionAdapter;

    invoke-virtual {v8, p3}, Lcom/boohee/one/easemob/adapter/ExpressionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1386
    .local v4, "filename":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->buttonSetModeKeyboard:Landroid/view/View;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2000(Lcom/boohee/one/easemob/ChatActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_0

    .line 1388
    const-string v8, "delete_expression"

    if-eq v4, v8, :cond_1

    .line 1390
    const-string v8, "com.boohee.one.easemob.utils.SmileUtils"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1391
    .local v1, "clz":Ljava/lang/Class;
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1392
    .local v3, "field":Ljava/lang/reflect/Field;
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;

    move-result-object v9

    iget-object v10, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v10, v8}, Lcom/boohee/one/easemob/utils/SmileUtils;->getSmiledText(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/boohee/one/easemob/widget/PasteEditText;->append(Ljava/lang/CharSequence;)V

    .line 1420
    .end local v1    # "clz":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/boohee/one/easemob/widget/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1397
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/boohee/one/easemob/widget/PasteEditText;->getSelectionStart()I

    move-result v6

    .line 1398
    .local v6, "selectionStart":I
    if-lez v6, :cond_0

    .line 1399
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/boohee/one/easemob/widget/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "body":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1401
    .local v7, "tempStr":Ljava/lang/String;
    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1402
    .local v5, "i":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 1403
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, "cs":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/boohee/one/easemob/utils/SmileUtils;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1405
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/boohee/one/easemob/widget/PasteEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1417
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "cs":Ljava/lang/CharSequence;
    .end local v5    # "i":I
    .end local v6    # "selectionStart":I
    .end local v7    # "tempStr":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1407
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v2    # "cs":Ljava/lang/CharSequence;
    .restart local v5    # "i":I
    .restart local v6    # "selectionStart":I
    .restart local v7    # "tempStr":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/boohee/one/easemob/widget/PasteEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v8, v9, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1410
    .end local v2    # "cs":Ljava/lang/CharSequence;
    :cond_3
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity$11;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;
    invoke-static {v8}, Lcom/boohee/one/easemob/ChatActivity;->access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/boohee/one/easemob/widget/PasteEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v8, v9, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
