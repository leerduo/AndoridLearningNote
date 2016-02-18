.class Lcom/boohee/one/ui/ChannelPostsActivity$5;
.super Ljava/lang/Object;
.source "ChannelPostsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChannelPostsActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChannelPostsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChannelPostsActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity$5;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$5;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # invokes: Lcom/boohee/one/ui/ChannelPostsActivity;->startImageLinkActivity()V
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$800(Lcom/boohee/one/ui/ChannelPostsActivity;)V

    .line 187
    return-void
.end method
