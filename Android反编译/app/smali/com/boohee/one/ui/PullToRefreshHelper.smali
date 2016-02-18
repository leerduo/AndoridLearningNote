.class public Lcom/boohee/one/ui/PullToRefreshHelper;
.super Ljava/lang/Object;
.source "PullToRefreshHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFirst(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    const v1, 0x7f0e00f8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 23
    .local v0, "listView":Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v1}, Lcom/boohee/utils/ListViewUtils;->smoothScrollListViewToTop(Landroid/widget/ListView;)V

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/boohee/one/ui/PullToRefreshHelper$1;

    invoke-direct {v2, v0}, Lcom/boohee/one/ui/PullToRefreshHelper$1;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
