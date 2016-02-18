.class public Lcom/boohee/one/ui/fragment/GoodsHomeFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "GoodsHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/GoodsHomeFragment$HeadImagePagerAdapter;,
        Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;,
        Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;
    }
.end annotation


# static fields
.field private static final URL_GOODS:Ljava/lang/String; = "/api/v1/goods/%d/detail.html"

.field private static final WTAT_EXTRA_TIME:I


# instance fields
.field private btn_cart_add:Landroid/widget/Button;

.field indicator:Lcom/viewpagerindicator/IconPageIndicator;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0174
    .end annotation
.end field

.field private isTimeOut:Z

.field iv_arrow_right:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06f6
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$HeadImagePagerAdapter;

.field private mGoods:Lcom/boohee/model/Goods;

.field private mHandler:Landroid/os/Handler;

.field private mOnOpenGoodsFormatListener:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;

.field private mRemainTime:J

.field private mRunnable:Ljava/lang/Runnable;

.field private onGoodsPageChangeListener:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;

.field private photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remainTimeString:Ljava/lang/StringBuffer;

.field tv_format:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06f5
    .end annotation
.end field

.field tv_good_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0343
    .end annotation
.end field

.field tv_market_price:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e05fe
    .end annotation
.end field

.field tv_market_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e05fd
    .end annotation
.end field

.field tv_month_quantity:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e05ff
    .end annotation
.end field

.field tv_price:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e05fc
    .end annotation
.end field

.field tv_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0266
    .end annotation
.end field

.field view_divide_format:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0345
    .end annotation
.end field

.field view_format_tips:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0344
    .end annotation
.end field

.field viewpager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field

.field webview:Landroid/webkit/WebView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0010
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->photoList:Ljava/util/List;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->remainTimeString:Ljava/lang/StringBuffer;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->isTimeOut:Z

    .line 106
    new-instance v0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$1;-><init>(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mHandler:Landroid/os/Handler;

    .line 333
    new-instance v0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$4;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$4;-><init>(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRunnable:Ljava/lang/Runnable;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    return-wide v0
.end method

.method static synthetic access$022(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;J)J
    .locals 3
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->isTimeOut:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->isTimeOut:Z

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->requestGood()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->remainTimeString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)Lcom/boohee/model/Goods;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    return-object v0
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;Lcom/boohee/model/Goods;)Lcom/boohee/model/Goods;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;
    .param p1, "x1"    # Lcom/boohee/model/Goods;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    return-object p1
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->onGoodsPageChangeListener:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->btn_cart_add:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->initPromotion()V

    return-void
.end method

.method private getFormat(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "specs":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/GoodsFormat;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/GoodsFormat;

    .line 326
    .local v0, "format":Lcom/boohee/model/GoodsFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/boohee/model/GoodsFormat;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 328
    .end local v0    # "format":Lcom/boohee/model/GoodsFormat;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initFormat()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 296
    sget-object v4, Lcom/boohee/model/Goods$goods_type;->SpecGoods:Lcom/boohee/model/Goods$goods_type;

    invoke-virtual {v4}, Lcom/boohee/model/Goods$goods_type;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v5, v5, Lcom/boohee/model/Goods;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v4, v4, Lcom/boohee/model/Goods;->specs:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v4, v4, Lcom/boohee/model/Goods;->specs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 297
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v4, v4, Lcom/boohee/model/Goods;->specs:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "format":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_format:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bf7\u9009\u62e9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, " \u5546\u54c1\u89c4\u683c"

    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->view_format_tips:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->view_divide_format:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->iv_arrow_right:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v4, v4, Lcom/boohee/model/Goods;->chosen_specs:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 303
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->view_format_tips:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->view_divide_format:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->iv_arrow_right:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v4, v4, Lcom/boohee/model/Goods;->chosen_specs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 308
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v4, v4, Lcom/boohee/model/Goods;->chosen_specs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/FormatModel;

    .line 309
    .local v1, "formatModel":Lcom/boohee/model/FormatModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/boohee/model/FormatModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v1    # "formatModel":Lcom/boohee/model/FormatModel;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_format:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initGoodsView()V
    .locals 9

    .prologue
    const v8, 0x7f070647

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 209
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    if-nez v3, :cond_0

    .line 244
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_good_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v4, v4, Lcom/boohee/model/Goods;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v1, v3, Lcom/boohee/model/Goods;->square_photo_urls:Ljava/util/List;

    .line 212
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->photoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    new-instance v3, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$HeadImagePagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->photoList:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$HeadImagePagerAdapter;-><init>(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mAdapter:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$HeadImagePagerAdapter;

    .line 215
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mAdapter:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$HeadImagePagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 216
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->photoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 217
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->indicator:Lcom/viewpagerindicator/IconPageIndicator;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Lcom/viewpagerindicator/IconPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 218
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->indicator:Lcom/viewpagerindicator/IconPageIndicator;

    invoke-virtual {v3, v6}, Lcom/viewpagerindicator/IconPageIndicator;->setVisibility(I)V

    .line 222
    :goto_1
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v0, v3, Lcom/boohee/model/Goods;->base_price:Ljava/lang/String;

    .line 227
    .local v0, "basePrice":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v2, v3, Lcom/boohee/model/Goods;->market_price:Ljava/lang/String;

    .line 229
    .local v2, "marketPrice":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_price:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 231
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_market_title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_market_price:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_market_price:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    .line 235
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_market_price:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v5, v5, Lcom/boohee/model/Goods;->market_price:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_2
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->initPromotion()V

    .line 242
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->initFormat()V

    goto/16 :goto_0

    .line 220
    .end local v0    # "basePrice":Ljava/lang/String;
    .end local v2    # "marketPrice":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->indicator:Lcom/viewpagerindicator/IconPageIndicator;

    invoke-virtual {v3, v7}, Lcom/viewpagerindicator/IconPageIndicator;->setVisibility(I)V

    goto/16 :goto_1

    .line 237
    .restart local v0    # "basePrice":Ljava/lang/String;
    .restart local v2    # "marketPrice":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_market_title:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_market_price:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private initPromotion()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xbb8

    const-wide/16 v8, 0x0

    const v7, 0x7f0d012e

    const/4 v6, 0x0

    .line 250
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget v1, v1, Lcom/boohee/model/Goods;->month_quantity:I

    if-lez v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_month_quantity:Landroid/widget/TextView;

    const v2, 0x7f070396

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget v4, v4, Lcom/boohee/model/Goods;->month_quantity:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v5, v5, Lcom/boohee/model/Goods;->unit_name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_month_quantity:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_month_quantity:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->remainTimeString:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 256
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v0, v1, Lcom/boohee/model/Goods;->flash_sale:Lcom/boohee/model/Promotion;

    .line 257
    .local v0, "promotion":Lcom/boohee/model/Promotion;
    if-nez v0, :cond_2

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    sget-object v1, Lcom/boohee/model/Promotion$STATE_TYPE;->preview:Lcom/boohee/model/Promotion$STATE_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$STATE_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->state:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->btn_cart_add:Landroid/widget/Button;

    iget-object v1, v0, Lcom/boohee/model/Promotion;->state_text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u5373\u5c06\u5f00\u59cb"

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    sget-object v1, Lcom/boohee/model/Promotion$FLASH_TYPE;->time:Lcom/boohee/model/Promotion$FLASH_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$FLASH_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->flash_type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->remainTimeString:Ljava/lang/StringBuffer;

    const-string v2, " %s \u540e\u5f00\u62a2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/boohee/model/Promotion;->current_timestamp:Ljava/lang/String;

    iget-object v2, v0, Lcom/boohee/model/Promotion;->starts_at:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    .line 268
    iget-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_1

    .line 269
    iget-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    .line 270
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->startCountdown()V

    goto :goto_0

    .line 259
    :cond_4
    iget-object v1, v0, Lcom/boohee/model/Promotion;->state_text:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_5
    sget-object v1, Lcom/boohee/model/Promotion$FLASH_TYPE;->quota:Lcom/boohee/model/Promotion$FLASH_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$FLASH_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->flash_type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/boohee/model/Promotion$FLASH_TYPE;->both:Lcom/boohee/model/Promotion$FLASH_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$FLASH_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->flash_type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    :cond_6
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->remainTimeString:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " %s \u540e\u5f00\u62a2\n\u9650\u91cf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/boohee/model/Promotion;->total_quota:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v3, v3, Lcom/boohee/model/Goods;->unit_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 271
    :cond_7
    sget-object v1, Lcom/boohee/model/Promotion$STATE_TYPE;->active:Lcom/boohee/model/Promotion$STATE_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$STATE_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->state:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 272
    sget-object v1, Lcom/boohee/model/Promotion$FLASH_TYPE;->time:Lcom/boohee/model/Promotion$FLASH_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$FLASH_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->flash_type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 274
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->remainTimeString:Ljava/lang/StringBuffer;

    const-string v2, " \u5269 %s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/boohee/model/Promotion;->current_timestamp:Ljava/lang/String;

    iget-object v2, v0, Lcom/boohee/model/Promotion;->expires_at:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    .line 280
    iget-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    .line 281
    iget-wide v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRemainTime:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->startCountdown()V

    goto/16 :goto_0

    .line 275
    :cond_9
    sget-object v1, Lcom/boohee/model/Promotion$FLASH_TYPE;->quota:Lcom/boohee/model/Promotion$FLASH_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$FLASH_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->flash_type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/boohee/model/Promotion$FLASH_TYPE;->both:Lcom/boohee/model/Promotion$FLASH_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$FLASH_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->flash_type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 277
    :cond_a
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->remainTimeString:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u5269 %s \n\u5269 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/boohee/model/Promotion;->current_quota:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v3, v3, Lcom/boohee/model/Goods;->unit_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 283
    :cond_b
    sget-object v1, Lcom/boohee/model/Promotion$STATE_TYPE;->completed:Lcom/boohee/model/Promotion$STATE_TYPE;

    invoke-virtual {v1}, Lcom/boohee/model/Promotion$STATE_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/Promotion;->state:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->btn_cart_add:Landroid/widget/Button;

    iget-object v1, v0, Lcom/boohee/model/Promotion;->state_text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "\u5df2\u62a2\u5149"

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->btn_cart_add:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_month_quantity:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/boohee/model/Promotion;->state_text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "\u5df2\u62a2\u5149"

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_month_quantity:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_month_quantity:Landroid/widget/TextView;

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 284
    :cond_c
    iget-object v1, v0, Lcom/boohee/model/Promotion;->state_text:Ljava/lang/String;

    goto :goto_4

    .line 286
    :cond_d
    iget-object v1, v0, Lcom/boohee/model/Promotion;->state_text:Ljava/lang/String;

    goto :goto_5
.end method

.method private initWebView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 158
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 160
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    const-string v1, "/api/v1/goods/%d/detail.html"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget v3, v3, Lcom/boohee/model/Goods;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/http/client/OneClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$2;-><init>(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 177
    return-void
.end method

.method public static newInstance(Lcom/boohee/model/Goods;Landroid/widget/Button;)Lcom/boohee/one/ui/fragment/GoodsHomeFragment;
    .locals 1
    .param p0, "goods"    # Lcom/boohee/model/Goods;
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 132
    new-instance v0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;-><init>()V

    .line 133
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/GoodsHomeFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    .line 134
    iput-object p1, v0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->btn_cart_add:Landroid/widget/Button;

    .line 135
    return-object v0
.end method

.method private requestGood()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget v0, v0, Lcom/boohee/model/Goods;->id:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$3;-><init>(Lcom/boohee/one/ui/fragment/GoodsHomeFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ShopApi;->getGoodsDetail(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private startCountdown()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->isTimeOut:Z

    .line 129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0344
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    sget-object v0, Lcom/boohee/model/Goods$goods_type;->SpecGoods:Lcom/boohee/model/Goods$goods_type;

    invoke-virtual {v0}, Lcom/boohee/model/Goods$goods_type;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v1, v1, Lcom/boohee/model/Goods;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mOnOpenGoodsFormatListener:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mOnOpenGoodsFormatListener:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->tv_format:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;->onOpenGoodsFormat(Landroid/widget/TextView;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7f0e0344
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const v0, 0x7f0300e0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 410
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 411
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 149
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->initGoodsView()V

    .line 150
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->initWebView()V

    .line 151
    return-void
.end method

.method public setOnGoodsPageChangeListener(Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;)V
    .locals 0
    .param p1, "onGoodsPageChangeListener"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->onGoodsPageChangeListener:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;

    .line 357
    return-void
.end method

.method public setOnOpenGoodsFormatListener(Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;)V
    .locals 0
    .param p1, "onOpenGoodsFormatListener"    # Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mOnOpenGoodsFormatListener:Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;

    .line 367
    return-void
.end method

.method public shareGoods()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 342
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    if-eqz v1, :cond_0

    .line 343
    new-instance v0, Lcom/boohee/uchoice/ShareGoodsDetails;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v2, v2, Lcom/boohee/model/Goods;->share:Lcom/boohee/model/Share;

    iget-object v2, v2, Lcom/boohee/model/Share;->share_description:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/boohee/uchoice/ShareGoodsDetails;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 345
    .local v0, "shareToThird":Lcom/boohee/uchoice/ShareGoodsDetails;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v3, v3, Lcom/boohee/model/Goods;->share:Lcom/boohee/model/Share;

    iget-object v3, v3, Lcom/boohee/model/Share;->share_image:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->mGoods:Lcom/boohee/model/Goods;

    iget-object v2, v2, Lcom/boohee/model/Goods;->share:Lcom/boohee/model/Share;

    iget-object v2, v2, Lcom/boohee/model/Share;->share_link:Ljava/lang/String;

    aput-object v2, v1, v4

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/boohee/uchoice/ShareGoodsDetails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    .end local v0    # "shareToThird":Lcom/boohee/uchoice/ShareGoodsDetails;
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local v0    # "shareToThird":Lcom/boohee/uchoice/ShareGoodsDetails;
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "shareToThird":Lcom/boohee/uchoice/ShareGoodsDetails;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
