.class Lcom/boohee/more/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 281
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$4;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$4;->this$0:Lcom/boohee/more/FeedbackActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/boohee/more/FeedbackActivity;->access$702(Lcom/boohee/more/FeedbackActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 285
    return-void
.end method
