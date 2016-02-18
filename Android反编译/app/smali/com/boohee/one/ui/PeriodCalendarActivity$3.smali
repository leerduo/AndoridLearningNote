.class Lcom/boohee/one/ui/PeriodCalendarActivity$3;
.super Ljava/lang/Object;
.source "PeriodCalendarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/PeriodCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/PeriodCalendarActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$400(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/calendar/PeriodCalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/calendar/PeriodCalendarAdapter;->startPosition()I

    move-result v0

    if-lt p3, v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$400(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/calendar/PeriodCalendarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/calendar/PeriodCalendarAdapter;->endPosition()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$400(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/calendar/PeriodCalendarAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/boohee/calendar/PeriodCalendarAdapter;->getDate(I)Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const v0, 0x7f07013a

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    new-instance v1, Lcom/boohee/myview/NewPeroidDialog;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;
    invoke-static {v3}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$400(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/calendar/PeriodCalendarAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/boohee/calendar/PeriodCalendarAdapter;->getDate(I)Ljava/util/Date;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/NewPeroidDialog;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    # setter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$702(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/myview/NewPeroidDialog;)Lcom/boohee/myview/NewPeroidDialog;

    .line 182
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/PeriodCalendarActivity$MCComingListener;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {v1, v2, v4}, Lcom/boohee/one/ui/PeriodCalendarActivity$MCComingListener;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/one/ui/PeriodCalendarActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewPeroidDialog;->setMcComingListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {v1, v2, v4}, Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/one/ui/PeriodCalendarActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewPeroidDialog;->setMcLeaveListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$400(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/calendar/PeriodCalendarAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/boohee/calendar/PeriodCalendarAdapter;->getDate(I)Ljava/util/Date;

    move-result-object v1

    # invokes: Lcom/boohee/one/ui/PeriodCalendarActivity;->couldDelete(Ljava/util/Date;)Z
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$1000(Lcom/boohee/one/ui/PeriodCalendarActivity;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {v1, v2, v4}, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/one/ui/PeriodCalendarActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewPeroidDialog;->setMcDeleteListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/NewPeroidDialog;->show()V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/boohee/myview/NewPeroidDialog;->setMcDeleteListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
