.class public Lcom/boohee/one/ui/SuccessStoryTagActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SuccessStoryTagActivity.java"


# static fields
.field public static KEY_TAGS:Ljava/lang/String;


# instance fields
.field private isClicked:Z

.field layoutInflater:Landroid/view/LayoutInflater;

.field llContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0127
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/SuccessStory$Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "key_tags"

    sput-object v0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->KEY_TAGS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->isClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/SuccessStoryTagActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SuccessStoryTagActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->isClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/SuccessStoryTagActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SuccessStoryTagActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->isClicked:Z

    return p1
.end method

.method public static comeOn(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/SuccessStory$Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/SuccessStory$Tag;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/SuccessStoryTagActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/boohee/one/ui/SuccessStoryTagActivity;->KEY_TAGS:Ljava/lang/String;

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "tags":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/SuccessStory$Tag;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->tags:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 50
    iget-object v6, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->tags:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/boohee/model/SuccessStory$Tag;

    iget-object v4, v6, Lcom/boohee/model/SuccessStory$Tag;->category:Ljava/lang/String;

    .line 51
    .local v4, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030158

    iget-object v8, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->llContent:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "tagView":Landroid/view/View;
    const v6, 0x7f0e044b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .local v5, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v6, 0x7f0e044c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 55
    .local v2, "tagFlowLayout":Lcom/zhy/view/flowlayout/TagFlowLayout;
    iget-object v6, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->tags:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/boohee/model/SuccessStory$Tag;

    iget-object v1, v6, Lcom/boohee/model/SuccessStory$Tag;->items:Ljava/util/List;

    .line 56
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lcom/boohee/one/ui/SuccessStoryTagActivity$1;

    invoke-direct {v6, p0, v1}, Lcom/boohee/one/ui/SuccessStoryTagActivity$1;-><init>(Lcom/boohee/one/ui/SuccessStoryTagActivity;Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setAdapter(Lcom/zhy/view/flowlayout/TagAdapter;)V

    .line 64
    new-instance v6, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;

    invoke-direct {v6, p0, v1}, Lcom/boohee/one/ui/SuccessStoryTagActivity$2;-><init>(Lcom/boohee/one/ui/SuccessStoryTagActivity;Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setOnTagClickListener(Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;)V

    .line 74
    iget-object v6, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "tagFlowLayout":Lcom/zhy/view/flowlayout/TagFlowLayout;
    .end local v3    # "tagView":Landroid/view/View;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030084

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SuccessStoryTagActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p0}, Lcom/boohee/one/ui/SuccessStoryTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/boohee/one/ui/SuccessStoryTagActivity;->KEY_TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->tags:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/SuccessStoryTagActivity;->init()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/SuccessStoryTagActivity;->isClicked:Z

    .line 82
    return-void
.end method
