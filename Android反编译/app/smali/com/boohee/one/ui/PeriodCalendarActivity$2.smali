.class Lcom/boohee/one/ui/PeriodCalendarActivity$2;
.super Ljava/lang/Object;
.source "PeriodCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 155
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # invokes: Lcom/boohee/one/ui/PeriodCalendarActivity;->requestRecords()V
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$600(Lcom/boohee/one/ui/PeriodCalendarActivity;)V

    .line 170
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$300(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$302(Lcom/boohee/one/ui/PeriodCalendarActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->txt_date:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$500(Lcom/boohee/one/ui/PeriodCalendarActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$300(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/PeriodCalendarActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$300(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$302(Lcom/boohee/one/ui/PeriodCalendarActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->txt_date:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$500(Lcom/boohee/one/ui/PeriodCalendarActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$300(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/PeriodCalendarActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e06b3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
