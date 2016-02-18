.class Lcom/boohee/more/DietNoticeActivity$TimeOnclick;
.super Ljava/lang/Object;
.source "DietNoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/more/DietNoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOnclick"
.end annotation


# instance fields
.field alarm:Lcom/boohee/model/Alarm;

.field text_view:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/boohee/more/DietNoticeActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/more/DietNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V
    .locals 0
    .param p2, "text_view"    # Landroid/widget/TextView;
    .param p3, "alarm"    # Lcom/boohee/model/Alarm;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/DietNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;->text_view:Landroid/widget/TextView;

    .line 126
    iput-object p3, p0, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;->alarm:Lcom/boohee/model/Alarm;

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/DietNoticeActivity;

    # getter for: Lcom/boohee/more/DietNoticeActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/more/DietNoticeActivity;->access$100(Lcom/boohee/more/DietNoticeActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;->alarm:Lcom/boohee/model/Alarm;

    iget-object v2, p0, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/DietNoticeActivity;

    # getter for: Lcom/boohee/more/DietNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;
    invoke-static {v2}, Lcom/boohee/more/DietNoticeActivity;->access$200(Lcom/boohee/more/DietNoticeActivity;)Lcom/boohee/modeldao/AlarmDao;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;->text_view:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->showTimeDialog(Landroid/content/Context;Lcom/boohee/model/Alarm;Lcom/boohee/modeldao/AlarmDao;Landroid/widget/TextView;)V

    .line 132
    return-void
.end method
