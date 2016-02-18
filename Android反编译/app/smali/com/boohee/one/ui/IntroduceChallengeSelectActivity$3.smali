.class Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$3;
.super Ljava/lang/Object;
.source "IntroduceChallengeSelectActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$3;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$3;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->pullToloadMore()V

    .line 87
    return-void
.end method
