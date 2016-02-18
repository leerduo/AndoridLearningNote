.class Lcom/boohee/one/onekey/OneKeyContactActivity$1;
.super Ljava/lang/Object;
.source "OneKeyContactActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/OneKeyContactActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/OneKeyContactActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->closeKeyboard()V

    .line 140
    const/4 v0, 0x0

    return v0
.end method
