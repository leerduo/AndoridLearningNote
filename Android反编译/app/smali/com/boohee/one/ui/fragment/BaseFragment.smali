.class public abstract Lcom/boohee/one/ui/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field protected mCache:Lcom/boohee/one/cache/FileCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/fragment/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/boohee/one/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->dismissLoading()V

    .line 47
    :cond_0
    return-void
.end method

.method public loadFirst()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "BaseFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "BaseFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->activity:Landroid/app/Activity;

    .line 34
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    .line 35
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "BaseFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 53
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/MyApplication;->getRefWatcher(Landroid/content/Context;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    .line 54
    .local v0, "refWatcher":Lcom/squareup/leakcanary/RefWatcher;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/boohee/one/http/RequestManager;->cancelAll(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 70
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 75
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 77
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/boohee/one/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/BaseFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 41
    :cond_0
    return-void
.end method
