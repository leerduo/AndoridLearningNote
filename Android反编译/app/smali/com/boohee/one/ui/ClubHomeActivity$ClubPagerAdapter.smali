.class Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ClubHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/ClubHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClubPagerAdapter"
.end annotation


# instance fields
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:[Ljava/lang/String;

.field final synthetic this$0:Lcom/boohee/one/ui/ClubHomeActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/ClubHomeActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 3
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p3, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;>;"
    iput-object p1, p0, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    .line 266
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6700\u65b0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u70ed\u95e8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6d3b\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u7ecf\u9a8c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;->mTitles:[Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;->mFragments:Ljava/util/List;

    .line 268
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;->mTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
