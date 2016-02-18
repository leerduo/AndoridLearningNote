.class public Lcom/boohee/one/ui/ImageEditActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "ImageEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FILTER_HELP_URL:Ljava/lang/String; = "/api/v1/articles/filter_help.html"


# instance fields
.field private isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSyncDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private preference:Lcom/boohee/database/UserPreference;

.field private previewImage:Landroid/widget/ImageView;

.field private tab1:Landroid/widget/TextView;

.field private tab2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncDatas:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncTags:Ljava/util/List;

    .line 42
    iput v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private addListener()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0e0169

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0e016b

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0e0166

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->previewImage:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0e0167

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab1:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0e0168

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab2:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 71
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->preference:Lcom/boohee/database/UserPreference;

    .line 72
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->showLoading()V

    .line 73
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncDatas:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncTags:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->updateBackorPreview()V

    .line 80
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->dismissLoading()V

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->initPreviewImage(Landroid/net/Uri;)V

    .line 83
    return-void
.end method

.method private initPreviewImage(Landroid/net/Uri;)V
    .locals 4
    .param p1, "mUri"    # Landroid/net/Uri;

    .prologue
    .line 86
    iget-object v2, p0, Lcom/boohee/one/ui/ImageEditActivity;->ctx:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/boohee/utils/BitmapUtil;->getResizedBitmapWithUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lboohee/lib/uploader/utils/BitmapUtils;->autoRotateBitmap(Ljava/lang/String;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 89
    .local v1, "weakbmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v1, :cond_1

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private removeTempFilterRecord()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->preference:Lcom/boohee/database/UserPreference;

    const-string v1, "KEY_POST_TAG"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->preference:Lcom/boohee/database/UserPreference;

    const-string v1, "KEY_POST_DATA"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private updateBackorPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    .line 170
    iget v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    :goto_0
    return-void

    .line 174
    :cond_2
    iget v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 178
    :cond_3
    iget v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 180
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->tab2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    .line 160
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncDatas:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->preference:Lcom/boohee/database/UserPreference;

    const-string v2, "KEY_POST_DATA"

    invoke-virtual {v1, v2}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncTags:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->preference:Lcom/boohee/database/UserPreference;

    const-string v2, "KEY_POST_TAG"

    invoke-virtual {v1, v2}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->initPreviewImage(Landroid/net/Uri;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->removeTempFilterRecord()V

    .line 111
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onBackPressed()V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->showLoading()V

    .line 122
    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    .line 123
    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/boohee/one/ui/ImageEditActivity;->initPreviewImage(Landroid/net/Uri;)V

    .line 124
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->updateBackorPreview()V

    .line 125
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->dismissLoading()V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->showLoading()V

    .line 129
    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    .line 130
    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/boohee/one/ui/ImageEditActivity;->initPreviewImage(Landroid/net/Uri;)V

    .line 131
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->updateBackorPreview()V

    .line 132
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->dismissLoading()V

    goto :goto_0

    .line 135
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/boohee/one/ui/ImageFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0, v2}, Lcom/boohee/one/ui/ImageEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 140
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/boohee/one/ui/ImageChartletActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0, v2}, Lcom/boohee/one/ui/ImageEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 145
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "/api/v1/articles/filter_help.html"

    invoke-static {v2}, Lcom/boohee/one/http/client/OneClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "title"

    const-string v2, "\u5e2e\u52a9"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0167
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->setContentView(I)V

    .line 50
    const-string v0, "\u56fe\u50cf\u7f16\u8f91"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->findView()V

    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->addListener()V

    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->init()V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 190
    const/4 v0, 0x0

    const v1, 0x7f070082

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 192
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->postAction()V

    .line 205
    :goto_0
    return v0

    .line 200
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->removeTempFilterRecord()V

    .line 202
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->finish()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageEditActivity;->updateBackorPreview()V

    .line 106
    return-void
.end method

.method public postAction()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 216
    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 221
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 222
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/utils/FileUtil;->delFile(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 228
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    if-eq v3, v7, :cond_4

    .line 229
    iget-object v4, p0, Lcom/boohee/one/ui/ImageEditActivity;->preference:Lcom/boohee/database/UserPreference;

    const-string v5, "KEY_POST_DATA"

    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncDatas:Ljava/util/List;

    iget v6, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/boohee/one/ui/ImageEditActivity;->preference:Lcom/boohee/database/UserPreference;

    const-string v5, "KEY_POST_TAG"

    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mSyncTags:Ljava/util/List;

    iget v6, p0, Lcom/boohee/one/ui/ImageEditActivity;->position:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/boohee/one/ui/ImageEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Lcom/boohee/one/ui/ImageEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageEditActivity;->finish()V

    goto :goto_0
.end method
