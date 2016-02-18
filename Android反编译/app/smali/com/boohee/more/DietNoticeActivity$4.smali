.class Lcom/boohee/more/DietNoticeActivity$4;
.super Ljava/lang/Object;
.source "DietNoticeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/DietNoticeActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/DietNoticeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/DietNoticeActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/boohee/more/DietNoticeActivity$4;->this$0:Lcom/boohee/more/DietNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity$4;->this$0:Lcom/boohee/more/DietNoticeActivity;

    # getter for: Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/DietNoticeActivity;->access$000(Lcom/boohee/more/DietNoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity$4;->this$0:Lcom/boohee/more/DietNoticeActivity;

    # getter for: Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/DietNoticeActivity;->access$000(Lcom/boohee/more/DietNoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity$4;->this$0:Lcom/boohee/more/DietNoticeActivity;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity$4;->this$0:Lcom/boohee/more/DietNoticeActivity;

    # getter for: Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/DietNoticeActivity;->access$000(Lcom/boohee/more/DietNoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v1, v0, p2}, Lcom/boohee/more/DietNoticeActivity;->openOrClose(Lcom/boohee/model/Alarm;Z)V

    goto :goto_0
.end method
