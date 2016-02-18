.class Lcom/boohee/one/ui/DiamondSignActivity$1;
.super Ljava/lang/Object;
.source "DiamondSignActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/DiamondSignActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/DiamondSignActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/DiamondSignActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 133
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/calendar/CheckCalendarAdapter;->startPosition()I

    move-result v2

    if-lt p3, v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/calendar/CheckCalendarAdapter;->endPosition()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/boohee/calendar/CheckCalendarAdapter;->getDate(I)Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/DiamondSignActivity;->repairBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/boohee/calendar/CheckCalendarAdapter;->getDateString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/DateFormatUtils;->countDay(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 139
    .local v0, "dayCount":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    const-wide/16 v2, 0x7

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/boohee/calendar/CheckCalendarAdapter;->isChecked(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/DiamondSignActivity;->repairBtn:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v3}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/boohee/calendar/CheckCalendarAdapter;->getDateString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/boohee/one/ui/DiamondSignActivity;->repairDate:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boohee/one/ui/DiamondSignActivity;->access$102(Lcom/boohee/one/ui/DiamondSignActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    :goto_1
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/boohee/calendar/CheckCalendarAdapter;->setCurrentPosition(I)V

    .line 147
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/calendar/CheckCalendarAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$1;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/DiamondSignActivity;->repairBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
