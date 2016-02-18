.class public Lcom/boohee/one/ui/adapter/IntroductionAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "IntroductionAdapter.java"


# instance fields
.field private mData:[I


# direct methods
.method public constructor <init>([ILandroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "data"    # [I
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 19
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 20
    iput-object p1, p0, Lcom/boohee/one/ui/adapter/IntroductionAdapter;->mData:[I

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/IntroductionAdapter;->mData:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/adapter/IntroductionAdapter;->getItem(I)Lcom/boohee/one/ui/fragment/IntroductionFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/boohee/one/ui/fragment/IntroductionFragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 25
    iget-object v2, p0, Lcom/boohee/one/ui/adapter/IntroductionAdapter;->mData:[I

    aget v1, v2, p1

    .line 26
    .local v1, "resId":I
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/boohee/one/ui/adapter/IntroductionAdapter;->mData:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 27
    .local v0, "isShowGo":Z
    :goto_0
    invoke-static {v1, v0}, Lcom/boohee/one/ui/fragment/IntroductionFragment;->newInstance(IZ)Lcom/boohee/one/ui/fragment/IntroductionFragment;

    move-result-object v2

    return-object v2

    .line 26
    .end local v0    # "isShowGo":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 37
    const/4 v0, -0x2

    return v0
.end method
