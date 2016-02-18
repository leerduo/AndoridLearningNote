.class public Lcom/boohee/more/AssessmentDetailActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AssessmentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private index:I

.field private indicator:Lcom/viewpagerindicator/TabPageIndicator;

.field private title:Ljava/lang/String;

.field private titles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/boohee/more/AssessmentDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/AssessmentDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private getFrags()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "frags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->index:I

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u7897"

    aput-object v2, v1, v3

    const-string v2, "\u4e50\u6263\u7897"

    aput-object v2, v1, v4

    const-string v2, "\u9910\u76d8\u683c"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->titles:[Ljava/lang/String;

    .line 61
    const v1, 0x7f020492

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const v1, 0x7f020494

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const v1, 0x7f020493

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :pswitch_1
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u7897"

    aput-object v2, v1, v3

    const-string v2, "\u4e50\u6263\u7897"

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->titles:[Ljava/lang/String;

    .line 67
    const v1, 0x7f020634

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const v1, 0x7f020633

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :pswitch_2
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u6c64\u7897"

    aput-object v2, v1, v3

    const-string v2, "\u4e50\u6263\u7897"

    aput-object v2, v1, v4

    const-string v2, "\u76d8\u5b50"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->titles:[Ljava/lang/String;

    .line 72
    const v1, 0x7f020432

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const v1, 0x7f020433

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const v1, 0x7f020434

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :pswitch_3
    const v1, 0x7f020098

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1, v6}, Lcom/viewpagerindicator/TabPageIndicator;->setVisibility(I)V

    goto/16 :goto_0

    .line 81
    :pswitch_4
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u852c\u83dc"

    aput-object v2, v1, v3

    const-string v2, "\u8364\u83dc"

    aput-object v2, v1, v4

    const-string v2, "\u534a\u8364\u534a\u7d20"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->titles:[Ljava/lang/String;

    .line 82
    const v1, 0x7f02012e

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const v1, 0x7f02012d

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const v1, 0x7f02012f

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :pswitch_5
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u7897"

    aput-object v2, v1, v3

    const-string v2, "\u76c5"

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->titles:[Ljava/lang/String;

    .line 88
    const v1, 0x7f02054c

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const v1, 0x7f02054d

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 92
    :pswitch_6
    const v1, 0x7f020136

    invoke-static {v1}, Lcom/boohee/more/AssessmentFragment;->newInstance(I)Lcom/boohee/more/AssessmentFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1, v6}, Lcom/viewpagerindicator/TabPageIndicator;->setVisibility(I)V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/boohee/more/AssessmentDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->index:I

    .line 41
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 45
    const v3, 0x7f0e0174

    invoke-virtual {p0, v3}, Lcom/boohee/more/AssessmentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v3, p0, Lcom/boohee/more/AssessmentDetailActivity;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    .line 46
    const v3, 0x7f0e0173

    invoke-virtual {p0, v3}, Lcom/boohee/more/AssessmentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 47
    .local v1, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v0, Lcom/boohee/main/FragmentAdapter;

    invoke-virtual {p0}, Lcom/boohee/more/AssessmentDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/boohee/more/AssessmentDetailActivity;->getFrags()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/more/AssessmentDetailActivity;->titles:[Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/boohee/main/FragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 49
    .local v0, "adapter":Lcom/boohee/main/FragmentAdapter;
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 50
    iget-object v3, p0, Lcom/boohee/more/AssessmentDetailActivity;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 52
    const v3, 0x7f0e0284

    invoke-virtual {p0, v3}, Lcom/boohee/more/AssessmentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 53
    .local v2, "view_physical":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/more/AssessmentDetailActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/more/PhysicalDimenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "index"

    iget v2, p0, Lcom/boohee/more/AssessmentDetailActivity;->index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/boohee/more/AssessmentDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03009a

    invoke-virtual {p0, v0}, Lcom/boohee/more/AssessmentDetailActivity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/boohee/more/AssessmentDetailActivity;->handleIntent()V

    .line 34
    invoke-direct {p0}, Lcom/boohee/more/AssessmentDetailActivity;->init()V

    .line 35
    iget-object v0, p0, Lcom/boohee/more/AssessmentDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/more/AssessmentDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
