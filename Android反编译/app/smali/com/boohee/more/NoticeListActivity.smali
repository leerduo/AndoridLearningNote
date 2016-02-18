.class public Lcom/boohee/more/NoticeListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "NoticeListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/boohee/more/NoticeListAdapter;

.field private noMsgText:Landroid/widget/TextView;

.field private notices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Notice;",
            ">;"
        }
    .end annotation
.end field

.field private tipList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/boohee/more/NoticeListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/NoticeListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private deleteNotice(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    new-instance v0, Lcom/boohee/modeldao/NoticeDao;

    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/NoticeDao;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "noticeDao":Lcom/boohee/modeldao/NoticeDao;
    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->adapter:Lcom/boohee/more/NoticeListAdapter;

    invoke-virtual {v1, p1}, Lcom/boohee/more/NoticeListAdapter;->getItem(I)Lcom/boohee/model/Notice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/NoticeDao;->delete(Lcom/boohee/model/Notice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->notices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->adapter:Lcom/boohee/more/NoticeListAdapter;

    invoke-virtual {v1}, Lcom/boohee/more/NoticeListAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/boohee/modeldao/NoticeDao;->closeDB()V

    .line 115
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0e0593

    invoke-virtual {p0, v0}, Lcom/boohee/more/NoticeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/NoticeListActivity;->noMsgText:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e0594

    invoke-virtual {p0, v0}, Lcom/boohee/more/NoticeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/more/NoticeListActivity;->tipList:Landroid/widget/ListView;

    .line 47
    iget-object v0, p0, Lcom/boohee/more/NoticeListActivity;->tipList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/boohee/more/NoticeListActivity;->tipList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/boohee/more/NoticeListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method private initList()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/boohee/modeldao/NoticeDao;

    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/NoticeDao;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "noticeDao":Lcom/boohee/modeldao/NoticeDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/NoticeDao;->getNotices()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/more/NoticeListActivity;->notices:Ljava/util/ArrayList;

    .line 73
    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->notices:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->notices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    new-instance v1, Lcom/boohee/more/NoticeListAdapter;

    iget-object v2, p0, Lcom/boohee/more/NoticeListActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/more/NoticeListActivity;->notices:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/NoticeListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/boohee/more/NoticeListActivity;->adapter:Lcom/boohee/more/NoticeListAdapter;

    .line 75
    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->tipList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/boohee/more/NoticeListActivity;->adapter:Lcom/boohee/more/NoticeListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/boohee/modeldao/NoticeDao;->closeDB()V

    .line 79
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 103
    .local v0, "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 104
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/boohee/more/NoticeListActivity;->deleteNotice(I)V

    .line 105
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0301dd

    invoke-virtual {p0, v0}, Lcom/boohee/more/NoticeListActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f0703a1

    invoke-virtual {p0, v0}, Lcom/boohee/more/NoticeListActivity;->setTitle(I)V

    .line 40
    const-string v0, "other_clickAlertPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/boohee/more/NoticeListActivity;->findView()V

    .line 42
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 97
    const v0, 0x7f0703a1

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 98
    const/4 v0, 0x1

    const-string v1, "\u5220\u9664"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x2

    .line 53
    const-string v0, "\u6d88\u606f\u63d0\u9192"

    invoke-virtual {p0, v0}, Lcom/boohee/more/NoticeListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v0, 0x0

    const-string v1, "\u4e00\u952e\u5220\u9664"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/boohee/more/NoticeListActivity;->adapter:Lcom/boohee/more/NoticeListAdapter;

    invoke-virtual {v3, p3}, Lcom/boohee/more/NoticeListAdapter;->getItem(I)Lcom/boohee/model/Notice;

    move-result-object v1

    .line 84
    .local v1, "notice":Lcom/boohee/model/Notice;
    invoke-virtual {v1}, Lcom/boohee/model/Notice;->isOpened()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    new-instance v2, Lcom/boohee/modeldao/NoticeDao;

    iget-object v3, p0, Lcom/boohee/more/NoticeListActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/boohee/modeldao/NoticeDao;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, "noticeDao":Lcom/boohee/modeldao/NoticeDao;
    invoke-virtual {v2, v1}, Lcom/boohee/modeldao/NoticeDao;->updateIsOpened(Lcom/boohee/model/Notice;)Z

    .line 87
    invoke-virtual {v2}, Lcom/boohee/modeldao/NoticeDao;->closeDB()V

    .line 89
    .end local v2    # "noticeDao":Lcom/boohee/modeldao/NoticeDao;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/more/NoticeListActivity;->ctx:Landroid/content/Context;

    const-class v4, Lcom/boohee/more/ViewTipActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "notice_message"

    iget-object v4, v1, Lcom/boohee/model/Notice;->alarm_tip_message:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v3, "notice_id"

    iget v4, v1, Lcom/boohee/model/Notice;->alarm_tip_id:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/boohee/more/NoticeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 61
    new-instance v0, Lcom/boohee/modeldao/NoticeDao;

    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/NoticeDao;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "dao":Lcom/boohee/modeldao/NoticeDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/NoticeDao;->clear()Z

    .line 63
    invoke-virtual {v0}, Lcom/boohee/modeldao/NoticeDao;->closeDB()V

    .line 64
    invoke-virtual {p0}, Lcom/boohee/more/NoticeListActivity;->onResume()V

    .line 65
    iget-object v1, p0, Lcom/boohee/more/NoticeListActivity;->ctx:Landroid/content/Context;

    const-string v2, "\u6e05\u9664\u6210\u529f"

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 67
    .end local v0    # "dao":Lcom/boohee/modeldao/NoticeDao;
    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 118
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/boohee/more/NoticeListActivity;->initList()V

    .line 120
    iget-object v0, p0, Lcom/boohee/more/NoticeListActivity;->notices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/boohee/more/NoticeListActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/boohee/more/NoticeListActivity;->tipList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/boohee/more/NoticeListActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/boohee/more/NoticeListActivity;->tipList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
