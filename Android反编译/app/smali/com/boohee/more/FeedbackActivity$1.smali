.class Lcom/boohee/more/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/FeedbackActivity;->findView()V
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
    .line 104
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$1;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$1;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v0}, Lcom/boohee/more/FeedbackActivity;->closeKeyboard()V

    .line 109
    const/4 v0, 0x0

    return v0
.end method
