.class Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$4;
.super Ljava/lang/Object;
.source "IntroduceChallengeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 93
    iput-object p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$4;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$4;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->finish()V

    .line 97
    return-void
.end method
