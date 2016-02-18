.class public Lcom/boohee/one/ui/UserGuideChooseInterestActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "UserGuideChooseInterestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;

.field private currentCheckedNum:I

.field private gridView:Landroid/widget/GridView;

.field private li:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private tags:[Ljava/lang/String;

.field final titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 24
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u51cf\u80a5"

    aput-object v2, v0, v1

    const-string v1, "\u5065\u8eab"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "\u7f8e\u98df"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5b66\u751f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u529e\u516c\u65cf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8fa3\u5988"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->titles:[Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->titles:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    .prologue
    .line 24
    iget v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I

    return v0
.end method

.method static synthetic access$208(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    .prologue
    .line 24
    iget v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I

    return v0
.end method

.method static synthetic access$210(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    .prologue
    .line 24
    iget v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->li:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;-><init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;-><init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0e00ee

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->gridView:Landroid/widget/GridView;

    .line 46
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 97
    iput-object p0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->li:Landroid/view/LayoutInflater;

    .line 99
    new-instance v0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;-><init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;)V

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->adapter:Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;

    .line 100
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->adapter:Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->setContentView(I)V

    .line 38
    const-string v0, "\u9009\u62e9\u4f60\u7684\u5174\u8da3"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->findView()V

    .line 40
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->addListener()V

    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->init()V

    .line 42
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->finish()V

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
