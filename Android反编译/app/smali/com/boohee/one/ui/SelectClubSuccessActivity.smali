.class public Lcom/boohee/one/ui/SelectClubSuccessActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SelectClubSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final KEY_FRIENDS:Ljava/lang/String; = "key_friends"


# instance fields
.field private GIRL_IMG:[I

.field private ivContent:Landroid/widget/ImageView;

.field private mFriends:I

.field private tvAlert:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->GIRL_IMG:[I

    return-void

    :array_0
    .array-data 4
        0x7f020338
        0x7f020339
        0x7f02033a
        0x7f02033b
        0x7f02033c
        0x7f02033d
    .end array-data
.end method

.method public static comeOnBaby(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "friends"    # I

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/SelectClubSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_friends"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getImageRes()I
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->GIRL_IMG:[I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->GIRL_IMG:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/boohee/one/ui/MainActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->finish()V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v1, "SelectClubSuccessActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "SelectClubSuccessActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 28
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x4000000

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f030075

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->setContentView(I)V

    .line 33
    const v1, 0x7f0e020b

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->ivContent:Landroid/widget/ImageView;

    .line 34
    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->ivContent:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->getImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    const v1, 0x7f0e020c

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->tvAlert:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_friends"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->mFriends:I

    .line 37
    iget v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->mFriends:I

    if-lez v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->tvAlert:Landroid/widget/TextView;

    const v2, 0x7f0704aa

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->mFriends:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :goto_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "SelectClubSuccessActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 40
    .restart local v0    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubSuccessActivity;->tvAlert:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
