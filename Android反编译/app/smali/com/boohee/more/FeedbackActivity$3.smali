.class Lcom/boohee/more/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/FeedbackActivity;->showChoiceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$3;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$3;->this$0:Lcom/boohee/more/FeedbackActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/more/FeedbackActivity;->sendMessage(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$3;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/boohee/more/FeedbackActivity;->access$700(Lcom/boohee/more/FeedbackActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 276
    return-void
.end method
