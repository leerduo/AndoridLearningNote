.class Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;
.super Ljava/lang/Object;
.source "GoodMorningNoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/more/GoodMorningNoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOnclick"
.end annotation


# instance fields
.field alarm:Lcom/boohee/model/Alarm;

.field text_view:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/boohee/more/GoodMorningNoticeActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/more/GoodMorningNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V
    .locals 0
    .param p2, "text_view"    # Landroid/widget/TextView;
    .param p3, "alarm"    # Lcom/boohee/model/Alarm;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;->text_view:Landroid/widget/TextView;

    .line 77
    iput-object p3, p0, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;->alarm:Lcom/boohee/model/Alarm;

    .line 78
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    # getter for: Lcom/boohee/more/GoodMorningNoticeActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->access$100(Lcom/boohee/more/GoodMorningNoticeActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;->alarm:Lcom/boohee/model/Alarm;

    iget-object v2, p0, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/GoodMorningNoticeActivity;

    # getter for: Lcom/boohee/more/GoodMorningNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;
    invoke-static {v2}, Lcom/boohee/more/GoodMorningNoticeActivity;->access$200(Lcom/boohee/more/GoodMorningNoticeActivity;)Lcom/boohee/modeldao/AlarmDao;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;->text_view:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->showTimeDialog(Landroid/content/Context;Lcom/boohee/model/Alarm;Lcom/boohee/modeldao/AlarmDao;Landroid/widget/TextView;)V

    .line 83
    return-void
.end method
