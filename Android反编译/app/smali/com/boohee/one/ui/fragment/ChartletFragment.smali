.class public Lcom/boohee/one/ui/fragment/ChartletFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "ChartletFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/ChartletFragment$ItemClickListener;
    }
.end annotation


# static fields
.field public static final KEY_DRAWABLE_IDS:Ljava/lang/String; = "key_drawale_ids"

.field public static final KEY_STRINGS:Ljava/lang/String; = "key_strings"

.field public static final KEY_THUMBNAIL_DRAWABLE_IDS:Ljava/lang/String; = "key_thumbnail_drawale_ids"

.field public static final KEY_URI_STR:Ljava/lang/String; = "key_uri_str"


# instance fields
.field private CHARTLET_RES_IDS:[I

.field private CHARTLET_TEXTS:[Ljava/lang/String;

.field private dragViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/myview/DragScaleImageView;",
            ">;"
        }
    .end annotation
.end field

.field iconListView:Lcom/boohee/widgets/HorizontalListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0337
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mThumbailIds:[I

.field private mUri:Landroid/net/Uri;

.field parentLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0335
    .end annotation
.end field

.field preImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0336
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->dragViewList:Ljava/util/ArrayList;

    .line 172
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ChartletFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChartletFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ChartletFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChartletFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_RES_IDS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/ChartletFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChartletFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->dragViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/ChartletFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChartletFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/fragment/ChartletFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChartletFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/ChartletFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChartletFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mHandler:Landroid/os/Handler;

    .line 137
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->initPreImage(Landroid/net/Uri;)V

    .line 138
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->initChartletListView()V

    .line 139
    return-void
.end method

.method private initChartletListView()V
    .locals 5

    .prologue
    .line 146
    new-instance v0, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mThumbailIds:[I

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_TEXTS:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;-><init>([I[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;)V

    .line 148
    .local v0, "adapter":Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/boohee/widgets/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/ChartletFragment$ItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/ChartletFragment$ItemClickListener;-><init>(Lcom/boohee/one/ui/fragment/ChartletFragment;Lcom/boohee/one/ui/fragment/ChartletFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/boohee/widgets/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    return-void
.end method

.method private initPreImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "mUri"    # Landroid/net/Uri;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->preImage:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 143
    return-void
.end method

.method public static newInstance([I[ILjava/lang/String;)Lcom/boohee/one/ui/fragment/ChartletFragment;
    .locals 1
    .param p0, "thumbnailIds"    # [I
    .param p1, "drawableIds"    # [I
    .param p2, "imageUriStr"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/boohee/one/ui/fragment/ChartletFragment;->newInstance([I[I[Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/one/ui/fragment/ChartletFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([I[I[Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/one/ui/fragment/ChartletFragment;
    .locals 3
    .param p0, "thumbnailIds"    # [I
    .param p1, "drawableIds"    # [I
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "imageUriStr"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    .line 71
    :cond_1
    new-instance v1, Lcom/boohee/one/ui/fragment/ChartletFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/ChartletFragment;-><init>()V

    .line 72
    .local v1, "fragment":Lcom/boohee/one/ui/fragment/ChartletFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_drawale_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 74
    const-string v2, "key_thumbnail_drawale_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 75
    if-eqz p2, :cond_2

    array-length v2, p2

    if-lez v2, :cond_2

    .line 76
    const-string v2, "key_strings"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    :cond_2
    const-string v2, "key_uri_str"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->init()V

    .line 118
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 88
    const-string v1, "key_drawale_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_RES_IDS:[I

    .line 89
    const-string v1, "key_thumbnail_drawale_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mThumbailIds:[I

    .line 90
    const-string v1, "key_strings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_TEXTS:[Ljava/lang/String;

    .line 91
    const-string v1, "key_uri_str"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mUri:Landroid/net/Uri;

    .line 93
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v0, "key_drawale_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_RES_IDS:[I

    .line 100
    const-string v0, "key_thumbnail_drawale_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mThumbailIds:[I

    .line 101
    const-string v0, "key_strings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_TEXTS:[Ljava/lang/String;

    .line 102
    const-string v0, "key_uri_str"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mUri:Landroid/net/Uri;

    .line 104
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 153
    const/4 v0, 0x0

    const v1, 0x7f070486

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 155
    return v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    const v1, 0x7f0300d6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "rootView":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 110
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->postAction()V

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "outState":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 125
    .restart local p1    # "outState":Landroid/os/Bundle;
    :cond_0
    const-string v0, "key_drawale_ids"

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_RES_IDS:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 126
    const-string v0, "key_thumbnail_drawale_ids"

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mThumbailIds:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_TEXTS:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_TEXTS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 128
    const-string v0, "key_strings"

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->CHARTLET_TEXTS:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    :cond_1
    const-string v1, "key_uri_str"

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public postAction()V
    .locals 4

    .prologue
    .line 205
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->dragViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/myview/DragScaleImageView;

    .line 206
    .local v1, "drag":Lcom/boohee/myview/DragScaleImageView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/boohee/myview/DragScaleImageView;->setFocusable(Z)V

    goto :goto_0

    .line 209
    .end local v1    # "drag":Lcom/boohee/myview/DragScaleImageView;
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ChartletFragment;->parentLayout:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lcom/boohee/utils/BitmapUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 237
    :goto_1
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChartletFragment;->showLoading()V

    .line 214
    new-instance v3, Lcom/boohee/one/ui/fragment/ChartletFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/boohee/one/ui/fragment/ChartletFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ChartletFragment;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lcom/boohee/one/ui/fragment/ChartletFragment$1;->start()V

    goto :goto_1
.end method
