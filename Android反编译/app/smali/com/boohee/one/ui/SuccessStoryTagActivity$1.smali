.class Lcom/boohee/one/ui/SuccessStoryTagActivity$1;
.super Lcom/zhy/view/flowlayout/TagAdapter;
.source "SuccessStoryTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SuccessStoryTagActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/view/flowlayout/TagAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SuccessStoryTagActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    .local p2, "x0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$1;->this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;

    invoke-direct {p0, p2}, Lcom/zhy/view/flowlayout/TagAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getView(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Lcom/zhy/view/flowlayout/FlowLayout;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p3, Ljava/lang/String;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/boohee/one/ui/SuccessStoryTagActivity$1;->getView(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "flowLayout"    # Lcom/zhy/view/flowlayout/FlowLayout;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity$1;->this$0:Lcom/boohee/one/ui/SuccessStoryTagActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SuccessStoryTagActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03015c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object v0
.end method
