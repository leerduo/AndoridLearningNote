.class public abstract Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "BaseViewPagerFragment.java"

# interfaces
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ScrollableListener;


# static fields
.field protected static final BUNDLE_FRAGMENT_INDEX:Ljava/lang/String; = "BaseFragment.BUNDLE_FRAGMENT_INDEX"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
