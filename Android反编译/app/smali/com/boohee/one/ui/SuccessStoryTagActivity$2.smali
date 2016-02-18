.class Lcom/boohee/one/ui/SuccessStoryTagActivity$2;
.super Ljava/lang/Object;
.source "SuccessStoryTagActivity.java"

# interfaces
.implements Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SuccessStoryTagActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SuccessStoryTagActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;->this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;

    iput-object p2, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagClick(Landroid/view/View;ILcom/zhy/view/flowlayout/FlowLayout;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "flowLayout"    # Lcom/zhy/view/flowlayout/FlowLayout;

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;->this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;

    # getter for: Lcom/boohee/one/ui/SuccessStoryTagActivity;->isClicked:Z
    invoke-static {v0}, Lcom/boohee/one/ui/SuccessStoryTagActivity;->access$000(Lcom/boohee/one/ui/SuccessStoryTagActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;->this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;

    iget-object v1, v0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;->val$items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->comeOnWithTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;->this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;

    # setter for: Lcom/boohee/one/ui/SuccessStoryTagActivity;->isClicked:Z
    invoke-static {v0, v2}, Lcom/boohee/one/ui/SuccessStoryTagActivity;->access$002(Lcom/boohee/one/ui/SuccessStoryTagActivity;Z)Z

    .line 71
    :cond_0
    return v2
.end method
