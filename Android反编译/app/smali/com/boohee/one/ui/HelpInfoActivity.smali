.class public Lcom/boohee/one/ui/HelpInfoActivity;
.super Lcom/boohee/main/GestureActivity;
.source "HelpInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/HelpInfoActivity$1;,
        Lcom/boohee/one/ui/HelpInfoActivity$MOnGroupExpandableListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/boohee/one/ui/adapter/HelpInfoAdapter;

.field private lvExp:Landroid/widget/ExpandableListView;

.field private mChildDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeaderDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/HelpInfoActivity;->position:I

    .line 80
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/boohee/one/ui/HelpInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    iget v2, p0, Lcom/boohee/one/ui/HelpInfoActivity;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/HelpInfoActivity;->position:I

    .line 40
    const v0, 0x7f0e014a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HelpInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/boohee/one/ui/HelpInfoActivity;->lvExp:Landroid/widget/ExpandableListView;

    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/HelpInfoActivity;->prepareDatas()V

    .line 42
    new-instance v0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mChildDatas:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/boohee/one/ui/HelpInfoActivity;->adapter:Lcom/boohee/one/ui/adapter/HelpInfoAdapter;

    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/HelpInfoActivity;->lvExp:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/boohee/one/ui/HelpInfoActivity;->adapter:Lcom/boohee/one/ui/adapter/HelpInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/HelpInfoActivity;->lvExp:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/boohee/one/ui/HelpInfoActivity$MOnGroupExpandableListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/HelpInfoActivity$MOnGroupExpandableListener;-><init>(Lcom/boohee/one/ui/HelpInfoActivity;Lcom/boohee/one/ui/HelpInfoActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/HelpInfoActivity;->lvExp:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/boohee/one/ui/HelpInfoActivity;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 46
    return-void
.end method

.method private prepareDatas()V
    .locals 8

    .prologue
    .line 49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    .line 50
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mChildDatas:Ljava/util/Map;

    .line 52
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const-string v6, "\u4ec0\u4e48\u662fBMI?"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const-string v6, "\u4ec0\u4e48\u662f\u9884\u7b97\u70ed\u91cf?"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const-string v6, "\u4ec0\u4e48\u662f\u8eab\u4f53\u5e74\u9f84?"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const-string v6, "\u4ec0\u4e48\u662f\u4f53\u8102\u7387?"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const-string v6, "\u4ec0\u4e48\u662f\u71c3\u8102\u5fc3\u7387?"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "bmi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "BMI(Body Mass Index)\u5373BMI\u6307\u6570\uff0c\u4e5f\u53eb\u8eab\u4f53\u8d28\u91cf\u6307\u6570\uff0c\u662f\u8861\u91cf\u662f\u5426\u80a5\u80d6\u548c\u6807\u51c6\u4f53\u91cd\u7684\u91cd\u8981\u6307\u6807\u3002"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, "hot":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "\u9884\u7b97\u70ed\u91cf\u662f\u51cf\u80a5\u65f6\u6bcf\u65e5\u996e\u98df\u6444\u5165\u7684\u6700\u4f73\u70ed\u91cf\u503c\uff0c\u7531NICE\u51cf\u91cd\u987e\u95ee\u7ec4\u4ee5\u7f8e\u56fdUSDA\u7684\u6743\u5a01\u7814\u7a76\u548c\u7ed3\u8bba\u4e3a\u57fa\u7840\uff0c\u7ed3\u5408\u4e2d\u56fd\u51cf\u80a5\u4eba\u7fa4\u7684\u7279\u70b9\u548c\u9700\u6c42\uff0c\u72ec\u5bb6\u7814\u53d1\u800c\u6765\u3002\u4f9d\u7167\u6700\u4f73\u70ed\u91cf\u9884\u7b97\u63a7\u5236\u996e\u98df\u70ed\u91cf\u7684\u6444\u5165\uff0c\u914d\u5408\u5408\u7406\u7684\u8fd0\u52a8\u8ba1\u5212\uff0c\u5c31\u80fd\u591f\u6709\u6548\u5b9e\u73b0\u70ed\u91cf\u8d1f\u5e73\u8861\uff0c\u6700\u7ec8\u8fbe\u5230\u51cf\u80a5\u7684\u76ee\u7684\u3002"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "age":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "\u8eab\u4f53\u5e74\u9f84\u662f\u7efc\u5408\u4f53\u91cd\u3001\u8eab\u4f53\u8102\u80aa\u7387\u7b49\u591a\u79cd\u6307\u6570\u8ba1\u7b97\u540e\u5f97\u51fa\u7684\uff0c\u5b83\u662f\u4e00\u4e2a\u9ad8\u4e8e\u6216\u4f4e\u4e8e\u5b9e\u9645\u5e74\u9f84\u7684\u7efc\u5408\u5224\u65ad\u8eab\u4f53\u72b6\u51b5\u7684\u6807\u51c6\u3002"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v4, "rate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "\u4f53\u8102\u7387\u662f\u6307\u4eba\u4f53\u5185\u8102\u80aa\u91cd\u91cf\u5728\u4eba\u4f53\u603b\u4f53\u91cd\u4e2d\u6240\u5360\u7684\u6bd4\u4f8b\uff0c\u53c8\u79f0\u4f53\u8102\u767e\u5206\u6570\uff0c\u5b83\u53cd\u6620\u4eba\u4f53\u5185\u8102\u80aa\u542b\u91cf\u7684\u591a\u5c11\u3002"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "fire":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "\u5373\u4eba\u4f53\u5728\u8fdb\u884c\u71c3\u8102\u8fd0\u52a8\u65f6\u4fdd\u6301\u7684\u5fc3\u7387\u72b6\u6001\u3002\u71c3\u8102\u8fd0\u52a8\u5c31\u662f\u71c3\u70e7\u8102\u80aa\u7684\u8fd0\u52a8\uff0c\u9700\u8981\u6ee1\u8db3\u4e0b\u9762\u4e09\u4e2a\u5fc5\u8981\u6761\u4ef6\uff1a\n1.\u8be5\u8fd0\u52a8\u8981\u8fbe\u5230\u4e2d\u4f4e\u5f3a\u5ea6\u7684\u8fd0\u52a8\u5fc3\u7387\uff1b\n2.\u8fd9\u79cd\u4e2d\u4f4e\u5f3a\u5ea6\u8fd0\u52a8\u5fc3\u7387\u7684\u8fd0\u52a8\u8981\u6301\u7eed20\u5206\u949f\u4ee5\u4e0a\uff1b\n3.\u8fd9\u79cd\u8fd0\u52a8\u5fc5\u987b\u662f\u5927\u808c\u8089\u7fa4\u7684\u8fd0\u52a8\uff0c\u5982\u6162\u8dd1\u3001\u6e38\u6cf3\u3001\u5065\u8eab\u64cd\u7b49\u3002"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mChildDatas:Ljava/util/Map;

    iget-object v6, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mChildDatas:Ljava/util/Map;

    iget-object v6, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mChildDatas:Ljava/util/Map;

    iget-object v6, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mChildDatas:Ljava/util/Map;

    iget-object v6, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v5, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mChildDatas:Ljava/util/Map;

    iget-object v6, p0, Lcom/boohee/one/ui/HelpInfoActivity;->mHeaderDatas:Ljava/util/List;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v0, "\u5e2e\u52a9"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HelpInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HelpInfoActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/boohee/one/ui/HelpInfoActivity;->init()V

    .line 36
    return-void
.end method
