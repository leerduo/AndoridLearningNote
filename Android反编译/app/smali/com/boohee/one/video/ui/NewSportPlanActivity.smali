.class public Lcom/boohee/one/video/ui/NewSportPlanActivity;
.super Lcom/boohee/main/GestureActivity;
.source "NewSportPlanActivity.java"


# static fields
.field public static final IS_FIRST:Ljava/lang/String; = "IS_FIRST"

.field public static final REFERSH:Ljava/lang/String; = "REFRESH"


# instance fields
.field private final FRAGMENT_SPECIAL_PLAN:I

.field private final FRAGMENT_SPORT_PLAN:I

.field private dashBoard:Lcom/boohee/one/video/entity/DashBoard;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private isFirst:Z

.field ivLevel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c3
    .end annotation
.end field

.field tabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c6
    .end annotation
.end field

.field tvContinueDay:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0113
    .end annotation
.end field

.field tvTotalCalory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c4
    .end annotation
.end field

.field tvTrainTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->FRAGMENT_SPORT_PLAN:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->FRAGMENT_SPECIAL_PLAN:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/NewSportPlanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewSportPlanActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/NewSportPlanActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewSportPlanActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/fragment/BaseFragment;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V

    return-void
.end method

.method static synthetic access$202(Lcom/boohee/one/video/ui/NewSportPlanActivity;Lcom/boohee/one/video/entity/DashBoard;)Lcom/boohee/one/video/entity/DashBoard;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewSportPlanActivity;
    .param p1, "x1"    # Lcom/boohee/one/video/entity/DashBoard;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/video/ui/NewSportPlanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewSportPlanActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->refreshDashBoard()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/NewSportPlanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public static comeWithFirst(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/NewSportPlanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IS_FIRST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method private getData()V
    .locals 3

    .prologue
    .line 149
    const-string v0, "/api/v1/lessons/dashboard"

    new-instance v1, Lcom/boohee/one/video/ui/NewSportPlanActivity$2;

    iget-object v2, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/video/ui/NewSportPlanActivity$2;-><init>(Lcom/boohee/one/video/ui/NewSportPlanActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method private initFragments()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/boohee/one/video/fragment/SportPlanFragment;

    invoke-direct {v1}, Lcom/boohee/one/video/fragment/SportPlanFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;

    invoke-direct {v1}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method private initTabLayout()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0704ef

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 101
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0704de

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;-><init>(Lcom/boohee/one/video/ui/NewSportPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 127
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->initFragments()V

    .line 86
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->initTabLayout()V

    .line 88
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    .line 89
    .local v0, "homeFragment":Lcom/boohee/one/ui/fragment/BaseFragment;
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 90
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0e01a8

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 91
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 92
    return-void
.end method

.method private refreshDashBoard()V
    .locals 14

    .prologue
    .line 175
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    if-nez v10, :cond_0

    .line 226
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v5, 0x0

    .line 179
    .local v5, "tvLevel":Landroid/widget/TextView;
    iget-boolean v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->isFirst:Z

    if-eqz v10, :cond_1

    .line 180
    new-instance v10, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->ctx:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 181
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->ctx:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03027c

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 182
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 183
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    invoke-virtual {v2, v8}, Landroid/support/v7/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 186
    const v10, 0x7f0e0790

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tvLevel":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 187
    .restart local v5    # "tvLevel":Landroid/widget/TextView;
    const v10, 0x7f0e0791

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, "tvBmi":Landroid/widget/TextView;
    const v10, 0x7f0e0792

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 189
    .local v6, "tvWeight":Landroid/widget/TextView;
    const v10, 0x7f0e0794

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    .local v1, "btnOk":Landroid/widget/TextView;
    new-instance v10, Lcom/boohee/modeldao/UserDao;

    invoke-direct {v10, p0}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v7

    .line 192
    .local v7, "user":Lcom/boohee/model/User;
    invoke-virtual {v7}, Lcom/boohee/model/User;->height()F

    move-result v3

    .line 193
    .local v3, "height":F
    invoke-static {}, Lcom/boohee/database/OnePreference;->getLatestWeight()F

    move-result v9

    .line 195
    .local v9, "weight":F
    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-static {v3, v9}, Lcom/boohee/utils/Utils;->calBmi(FF)F

    move-result v0

    .line 197
    .local v0, "bmi":F
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v10, Lcom/boohee/one/video/ui/NewSportPlanActivity$3;

    invoke-direct {v10, p0, v2}, Lcom/boohee/one/video/ui/NewSportPlanActivity$3;-><init>(Lcom/boohee/one/video/ui/NewSportPlanActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->isFirst:Z

    .line 207
    .end local v0    # "bmi":F
    .end local v1    # "btnOk":Landroid/widget/TextView;
    .end local v2    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v3    # "height":F
    .end local v4    # "tvBmi":Landroid/widget/TextView;
    .end local v6    # "tvWeight":Landroid/widget/TextView;
    .end local v7    # "user":Lcom/boohee/model/User;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "weight":F
    :cond_1
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v10, v10, Lcom/boohee/one/video/entity/DashBoard;->total_calorie:I

    if-ltz v10, :cond_3

    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v10, v10, Lcom/boohee/one/video/entity/DashBoard;->total_calorie:I

    const/16 v11, 0x708

    if-gt v10, v11, :cond_3

    .line 208
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->ivLevel:Landroid/widget/ImageView;

    const v11, 0x7f02026e

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 209
    if-eqz v5, :cond_2

    .line 210
    const-string v10, "\u8f83\u5f31"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tvTotalCalory:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v11, v11, Lcom/boohee/one/video/entity/DashBoard;->total_calorie:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tvTrainTime:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v11, v11, Lcom/boohee/one/video/entity/DashBoard;->total_time:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->tvContinueDay:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v11, v11, Lcom/boohee/one/video/entity/DashBoard;->max_continue_day:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 212
    :cond_3
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v10, v10, Lcom/boohee/one/video/entity/DashBoard;->total_calorie:I

    const/16 v11, 0x708

    if-le v10, v11, :cond_4

    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v10, v10, Lcom/boohee/one/video/entity/DashBoard;->total_calorie:I

    const/16 v11, 0x1518

    if-gt v10, v11, :cond_4

    .line 213
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->ivLevel:Landroid/widget/ImageView;

    const v11, 0x7f020270

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 214
    if-eqz v5, :cond_2

    .line 215
    const-string v10, "\u5065\u5eb7"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 217
    :cond_4
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;

    iget v10, v10, Lcom/boohee/one/video/entity/DashBoard;->total_calorie:I

    const/16 v11, 0x1518

    if-le v10, v11, :cond_2

    .line 218
    iget-object v10, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->ivLevel:Landroid/widget/ImageView;

    const v11, 0x7f020272

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 219
    if-eqz v5, :cond_2

    .line 220
    const-string v10, "\u8fbe\u4eba"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/boohee/one/ui/fragment/BaseFragment;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 131
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/ui/fragment/BaseFragment;

    .line 132
    .local v1, "item":Lcom/boohee/one/ui/fragment/BaseFragment;
    if-ne v1, p1, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    const v3, 0x7f0e01a8

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 136
    invoke-virtual {p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->loadFirst()V

    .line 138
    :cond_1
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/BaseFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 145
    .end local v1    # "item":Lcom/boohee/one/ui/fragment/BaseFragment;
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 146
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 76
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->initView()V

    .line 77
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->getData()V

    .line 78
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->showLoading()V

    .line 79
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_FIRST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->isFirst:Z

    .line 82
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    const-string v0, "IS_FIRST"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->isFirst:Z

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->getData()V

    .line 172
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 245
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 242
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/one/video/ui/SportSettingActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x7f0e07de
        :pswitch_0
    .end packed-switch
.end method
