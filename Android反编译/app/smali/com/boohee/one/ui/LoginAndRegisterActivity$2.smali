.class Lcom/boohee/one/ui/LoginAndRegisterActivity$2;
.super Ljava/lang/Object;
.source "LoginAndRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/LoginAndRegisterActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 122
    const/high16 v5, 0x41a00000    # 20.0f

    .line 123
    .local v5, "translateY":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 124
    .local v0, "alpha":F
    const-string v6, "clicked"

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :goto_0
    iget-object v6, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$100(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "translationY"

    new-array v8, v12, [F

    iget-object v9, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$100(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getTranslationY()F

    move-result v9

    aput v9, v8, v10

    aput v5, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 134
    .local v2, "animTranslateY":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$100(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "alpha"

    new-array v8, v12, [F

    iget-object v9, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$100(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getAlpha()F

    move-result v9

    aput v9, v8, v10

    aput v0, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 137
    .local v1, "animAlpha":Landroid/animation/ObjectAnimator;
    move v4, v0

    .line 138
    .local v4, "tempAlpha":F
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 139
    .local v3, "set":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/boohee/one/ui/LoginAndRegisterActivity$2$1;

    invoke-direct {v6, p0, v4}, Lcom/boohee/one/ui/LoginAndRegisterActivity$2$1;-><init>(Lcom/boohee/one/ui/LoginAndRegisterActivity$2;F)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    new-array v6, v12, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v1, v6, v11

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 159
    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 160
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 162
    return-void

    .line 126
    .end local v0    # "alpha":F
    .end local v1    # "animAlpha":Landroid/animation/ObjectAnimator;
    .end local v2    # "animTranslateY":Landroid/animation/ObjectAnimator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v4    # "tempAlpha":F
    .end local v5    # "translateY":F
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    const/high16 v5, -0x3e600000    # -20.0f

    .line 129
    .restart local v5    # "translateY":F
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_0
.end method
