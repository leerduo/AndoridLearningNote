.class Lcom/boohee/more/GoodMorningNoticeActivity$1;
.super Ljava/lang/Object;
.source "GoodMorningNoticeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/GoodMorningNoticeActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/GoodMorningNoticeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/GoodMorningNoticeActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/boohee/more/GoodMorningNoticeActivity$1;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity$1;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    # getter for: Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->access$000(Lcom/boohee/more/GoodMorningNoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity$1;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    # getter for: Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->access$000(Lcom/boohee/more/GoodMorningNoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/GoodMorningNoticeActivity$1;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity$1;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    # getter for: Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->access$000(Lcom/boohee/more/GoodMorningNoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v1, v0, p2}, Lcom/boohee/more/GoodMorningNoticeActivity;->openOrClose(Lcom/boohee/model/Alarm;Z)V

    goto :goto_0
.end method
