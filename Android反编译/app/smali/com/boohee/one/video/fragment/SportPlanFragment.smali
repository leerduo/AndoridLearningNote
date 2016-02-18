.class public Lcom/boohee/one/video/fragment/SportPlanFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "SportPlanFragment.java"


# static fields
.field public static final COURSE_STATUS_DOING:Ljava/lang/String; = "doing"

.field public static final COURSE_STATUS_FINISH:Ljava/lang/String; = "finish"

.field public static final COURSE_STATUS_NORMAL:Ljava/lang/String; = "normal"

.field public static final REFRESH_SPORT_PLAN_FRAGMENT:Ljava/lang/String; = "REFRESH_SPORT_PLAN_FRAGMENT"


# instance fields
.field alert:Ljava/lang/String;

.field private courseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/SportPlanCourse;",
            ">;"
        }
    .end annotation
.end field

.field private fileCache:Lcom/boohee/one/cache/FileCache;

.field layoutContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e034c
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;

.field scrollview:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e000c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->courseList:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->alert:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/fragment/SportPlanFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/fragment/SportPlanFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->loadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/fragment/SportPlanFragment;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/fragment/SportPlanFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->fileCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/fragment/SportPlanFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/fragment/SportPlanFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/one/video/fragment/SportPlanFragment;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->courseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 131
    iget-object v1, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->courseList:Ljava/util/List;

    const-string v2, "courses"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/boohee/one/video/entity/SportPlanCourse;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->refreshView()V

    .line 133
    const-string v1, "alert"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->alert:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->showResetAlert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/boohee/one/video/entity/SportPlanCourse;)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "course"    # Lcom/boohee/one/video/entity/SportPlanCourse;

    .prologue
    const/4 v2, 0x0

    .line 323
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 324
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 326
    new-instance v1, Lcom/boohee/one/video/adapter/CourseRecyclerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p2, Lcom/boohee/one/video/entity/SportPlanCourse;->dailys:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/video/adapter/CourseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 327
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->scrollview:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v1, Lcom/boohee/one/video/fragment/SportPlanFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/fragment/SportPlanFragment$1;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 101
    return-void
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->showLoading()V

    .line 105
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/video/fragment/SportPlanFragment$2;

    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/video/fragment/SportPlanFragment$2;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/one/video/api/SportApi;->getSportPlan(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 126
    return-void
.end method

.method private refreshView()V
    .locals 24

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 157
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->courseList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_e

    .line 158
    const/16 v19, 0x0

    .line 159
    .local v19, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->courseList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/video/entity/SportPlanCourse;

    .line 160
    .local v3, "course":Lcom/boohee/one/video/entity/SportPlanCourse;
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->level_status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "finish"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f03012b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 162
    const v20, 0x7f0e03d6

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 163
    .local v16, "tvLevel":Landroid/widget/TextView;
    const v20, 0x7f0e017e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/RecyclerView;

    .line 164
    .local v13, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/boohee/one/video/fragment/SportPlanFragment;->setTvLevel(Landroid/widget/TextView;I)V

    .line 166
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/boohee/one/video/fragment/SportPlanFragment;->initRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/boohee/one/video/entity/SportPlanCourse;)V

    .line 265
    .end local v13    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v16    # "tvLevel":Landroid/widget/TextView;
    :cond_0
    :goto_1
    if-eqz v19, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->level_status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "doing"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f03012a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 169
    const v20, 0x7f0e03d6

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 170
    .restart local v16    # "tvLevel":Landroid/widget/TextView;
    const v20, 0x7f0e03d8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 171
    .local v10, "ivBg":Landroid/widget/ImageView;
    const v20, 0x7f0e03d9

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 172
    .local v12, "ivStatus":Landroid/widget/ImageView;
    const v20, 0x7f0e0266

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 173
    .local v18, "tvTitle":Landroid/widget/TextView;
    const v20, 0x7f0e0381

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 174
    .local v15, "tvDes":Landroid/widget/TextView;
    const v20, 0x7f0e03da

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 175
    .local v14, "tvBtn":Landroid/widget/TextView;
    const v20, 0x7f0e03db

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 176
    .local v17, "tvStory":Landroid/widget/TextView;
    const v20, 0x7f0e017e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/RecyclerView;

    .line 178
    .restart local v13    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    const/16 v21, 0x2

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v10, v1, v2}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/boohee/one/video/fragment/SportPlanFragment;->initRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/boohee/one/video/entity/SportPlanCourse;)V

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/boohee/one/video/fragment/SportPlanFragment;->setTvLevel(Landroid/widget/TextView;I)V

    .line 182
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->dailys:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->dailys:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_4

    .line 310
    .end local v3    # "course":Lcom/boohee/one/video/entity/SportPlanCourse;
    .end local v10    # "ivBg":Landroid/widget/ImageView;
    .end local v12    # "ivStatus":Landroid/widget/ImageView;
    .end local v13    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v14    # "tvBtn":Landroid/widget/TextView;
    .end local v15    # "tvDes":Landroid/widget/TextView;
    .end local v16    # "tvLevel":Landroid/widget/TextView;
    .end local v17    # "tvStory":Landroid/widget/TextView;
    .end local v18    # "tvTitle":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    return-void

    .line 185
    .restart local v3    # "course":Lcom/boohee/one/video/entity/SportPlanCourse;
    .restart local v10    # "ivBg":Landroid/widget/ImageView;
    .restart local v12    # "ivStatus":Landroid/widget/ImageView;
    .restart local v13    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .restart local v14    # "tvBtn":Landroid/widget/TextView;
    .restart local v15    # "tvDes":Landroid/widget/TextView;
    .restart local v16    # "tvLevel":Landroid/widget/TextView;
    .restart local v17    # "tvStory":Landroid/widget/TextView;
    .restart local v18    # "tvTitle":Landroid/widget/TextView;
    .restart local v19    # "view":Landroid/view/View;
    :cond_4
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-static/range {v20 .. v20}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "date":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_3
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->dailys:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    .line 187
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->dailys:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/DailyCourse;

    .line 188
    .local v4, "dailyCourse":Lcom/boohee/one/video/entity/DailyCourse;
    iget-object v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->date:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->pic_url:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 191
    iget-object v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "complete"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 193
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    const-string v20, "\u5df2\u5b8c\u6210"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v20, Lcom/boohee/one/video/fragment/SportPlanFragment$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/boohee/one/video/fragment/SportPlanFragment$4;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;Lcom/boohee/one/video/entity/DailyCourse;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_5
    :goto_4
    invoke-virtual {v13, v9}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 186
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 208
    :cond_7
    iget-object v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "rest"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 209
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    const-string v20, "\u4eca\u5929\u4f11\u606f\u4e00\u5929"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const-string v20, "\u660e\u5929\u5c06\u5f00\u542f\u7b2c\u4e8c\u9636\u6bb5\u7684\u8bad\u7ec3"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    if-nez v8, :cond_9

    .line 216
    const v20, 0x7f02026f

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    :cond_8
    :goto_5
    new-instance v20, Lcom/boohee/one/video/fragment/SportPlanFragment$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/boohee/one/video/fragment/SportPlanFragment$5;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;Lcom/boohee/one/video/entity/DailyCourse;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 217
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_a

    .line 218
    const v20, 0x7f020271

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 219
    :cond_a
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_8

    .line 220
    const v20, 0x7f020273

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 232
    :cond_b
    iget-object v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "pre"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 233
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const-string v20, "\u4eca\u65e5\u5df2\u6709%d\u4eba\u5b8c\u6210\u8bad\u7ec3"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v4, Lcom/boohee/one/video/entity/DailyCourse;->finish_count:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v20, Lcom/boohee/one/video/fragment/SportPlanFragment$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/boohee/one/video/fragment/SportPlanFragment$6;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;Lcom/boohee/one/video/entity/DailyCourse;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 253
    .end local v4    # "dailyCourse":Lcom/boohee/one/video/entity/DailyCourse;
    .end local v5    # "date":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v10    # "ivBg":Landroid/widget/ImageView;
    .end local v12    # "ivStatus":Landroid/widget/ImageView;
    .end local v13    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v14    # "tvBtn":Landroid/widget/TextView;
    .end local v15    # "tvDes":Landroid/widget/TextView;
    .end local v16    # "tvLevel":Landroid/widget/TextView;
    .end local v17    # "tvStory":Landroid/widget/TextView;
    .end local v18    # "tvTitle":Landroid/widget/TextView;
    :cond_c
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->level_status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "normal"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f03012c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 255
    const v20, 0x7f0e03d6

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 256
    .restart local v16    # "tvLevel":Landroid/widget/TextView;
    const v20, 0x7f0e03dd

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 257
    .local v11, "ivLocked":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/boohee/one/video/fragment/SportPlanFragment;->setTvLevel(Landroid/widget/TextView;I)V

    .line 258
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_d

    .line 259
    const v20, 0x7f02007e

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 260
    :cond_d
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_0

    .line 261
    const v20, 0x7f02007f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 271
    .end local v3    # "course":Lcom/boohee/one/video/entity/SportPlanCourse;
    .end local v11    # "ivLocked":Landroid/widget/ImageView;
    .end local v16    # "tvLevel":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    :cond_e
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->courseList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/video/fragment/SportPlanFragment;->courseList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/video/entity/SportPlanCourse;

    .line 272
    .restart local v3    # "course":Lcom/boohee/one/video/entity/SportPlanCourse;
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->level_status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "finish"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 273
    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->dailys:Ljava/util/List;

    move-object/from16 v20, v0

    iget-object v0, v3, Lcom/boohee/one/video/entity/SportPlanCourse;->dailys:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/boohee/one/video/entity/DailyCourse;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/boohee/one/video/entity/DailyCourse;->status:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "complete"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    const-string v21, "\u606d\u559c\u4f60\u5b8c\u6210\u8bad\u7ec3"

    invoke-static/range {v20 .. v21}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v6

    .line 276
    .local v6, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    const-string v20, "\u5982\u679c\u4f60\u5bf9\u8fd9\u8f6e\u8bad\u7ec3\u611f\u5230\u56f0\u96be\uff0c\u8bf7\u70b9\u51fb\u91cd\u65b0\u8bad\u7ec3;\u5982\u679c\u611f\u5230\u8f7b\u677e\uff0c\u8bf7\u70b9\u51fb\u4e0b\u4e00\u96be\u5ea6\u8bad\u7ec3"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/boohee/widgets/LightAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    const-string v20, "\u91cd\u65b0\u8bad\u7ec3"

    new-instance v21, Lcom/boohee/one/video/fragment/SportPlanFragment$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/boohee/one/video/fragment/SportPlanFragment$7;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;Lcom/boohee/widgets/LightAlertDialog;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 290
    const-string v20, "\u4e0b\u4e00\u96be\u5ea6\u8bad\u7ec3"

    new-instance v21, Lcom/boohee/one/video/fragment/SportPlanFragment$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/boohee/one/video/fragment/SportPlanFragment$8;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;Lcom/boohee/widgets/LightAlertDialog;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 303
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/boohee/widgets/LightAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 304
    invoke-virtual {v6}, Lcom/boohee/widgets/LightAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 307
    .end local v3    # "course":Lcom/boohee/one/video/entity/SportPlanCourse;
    .end local v6    # "dialog":Lcom/boohee/widgets/LightAlertDialog;
    :catch_0
    move-exception v7

    .line 308
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private setTvLevel(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "tvLevel"    # Landroid/widget/TextView;
    .param p2, "i"    # I

    .prologue
    .line 313
    if-nez p2, :cond_1

    .line 314
    const-string v0, "\u7b2c\u4e00\u9636\u6bb5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 316
    const-string v0, "\u7b2c\u4e8c\u9636\u6bb5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 318
    const-string v0, "\u7b2c\u4e09\u9636\u6bb5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showResetAlert()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->alert:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 145
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    iget-object v1, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->alert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    const-string v1, "\u597d\u7684\uff0c\u6211\u4e0d\u8981\u534a\u9014\u800c\u5e9f"

    new-instance v2, Lcom/boohee/one/video/fragment/SportPlanFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/video/fragment/SportPlanFragment$3;-><init>(Lcom/boohee/one/video/fragment/SportPlanFragment;Lcom/boohee/widgets/LightAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 152
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->layoutInflater:Landroid/view/LayoutInflater;

    .line 89
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/fragment/SportPlanFragment;->fileCache:Lcom/boohee/one/cache/FileCache;

    .line 90
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->initView()V

    .line 91
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SportPlanFragment;->loadData()V

    .line 92
    return-void
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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    const v1, 0x7f0300f5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 82
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 332
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 333
    return-void
.end method
