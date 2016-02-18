.class public Lcom/boohee/one/ui/HomeTimelineActivity;
.super Lcom/boohee/main/GestureActivity;
.source "HomeTimelineActivity.java"


# instance fields
.field private mMessageBadge:Lcom/boohee/myview/BadgeView;

.field private messageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/HomeTimelineActivity;)Lcom/boohee/myview/BadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeTimelineActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/HomeTimelineActivity;Lcom/boohee/myview/BadgeView;)Lcom/boohee/myview/BadgeView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeTimelineActivity;
    .param p1, "x1"    # Lcom/boohee/myview/BadgeView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/HomeTimelineActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeTimelineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I

    return p1
.end method

.method static synthetic access$112(Lcom/boohee/one/ui/HomeTimelineActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeTimelineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iget v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/HomeTimelineActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeTimelineActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/HomeTimelineActivity;->refreshUnreadMsg()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/HomeTimelineActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeTimelineActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/HomeTimelineActivity;->getApnUnread()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/HomeTimelineActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeTimelineActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/HomeTimelineActivity;->updateMessageBager()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    if-eqz p0, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/HomeTimelineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getApnUnread()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/boohee/one/ui/HomeTimelineActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/HomeTimelineActivity$3;-><init>(Lcom/boohee/one/ui/HomeTimelineActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ApnApi;->checkUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private refreshUnreadMsg()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/boohee/one/ui/HomeTimelineActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/HomeTimelineActivity$2;-><init>(Lcom/boohee/one/ui/HomeTimelineActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/OneApi;->getUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private updateMessageBager()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I

    if-lez v0, :cond_2

    .line 123
    iget-object v1, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    iget v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I

    const/16 v2, 0x63

    if-le v0, v2, :cond_1

    const-string v0, "99+"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/boohee/myview/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->show()V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f07010d

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->setTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/boohee/one/ui/HomeTimelineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e014d

    new-instance v2, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    invoke-direct {v2}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/boohee/one/ui/HomeTimelineActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/HomeTimelineActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/HomeTimelineActivity$1;-><init>(Lcom/boohee/one/ui/HomeTimelineActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->ctx:Landroid/content/Context;

    const-string v1, "other_clickMsgPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/status/MsgCategoryActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07c3
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I

    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/HomeTimelineActivity;->refreshUnreadMsg()V

    .line 47
    invoke-direct {p0}, Lcom/boohee/one/ui/HomeTimelineActivity;->getApnUnread()V

    .line 48
    return-void
.end method
