.class public abstract Lcom/boohee/one/ui/fragment/BaseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field public changeListener:Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;

.field protected mCache:Lcom/boohee/one/cache/FileCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 108
    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/boohee/one/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->dismissLoading()V

    .line 59
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "BaseDialogFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "BaseDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    .line 38
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    .line 39
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "BaseDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 45
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 46
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 100
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/MyApplication;->getRefWatcher(Landroid/content/Context;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    .line 101
    .local v0, "refWatcher":Lcom/squareup/leakcanary/RefWatcher;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/boohee/one/http/RequestManager;->cancelAll(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 71
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 72
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V
    .locals 0
    .param p1, "onChangeListener"    # Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->changeListener:Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;

    .line 116
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 92
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 94
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/boohee/one/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 53
    :cond_0
    return-void
.end method
