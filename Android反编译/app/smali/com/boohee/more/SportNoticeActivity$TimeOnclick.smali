.class Lcom/boohee/more/SportNoticeActivity$TimeOnclick;
.super Ljava/lang/Object;
.source "SportNoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/more/SportNoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOnclick"
.end annotation


# instance fields
.field alarm:Lcom/boohee/model/Alarm;

.field text_view:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/boohee/more/SportNoticeActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/more/SportNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V
    .locals 0
    .param p2, "text_view"    # Landroid/widget/TextView;
    .param p3, "alarm"    # Lcom/boohee/model/Alarm;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/SportNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;->text_view:Landroid/widget/TextView;

    .line 78
    iput-object p3, p0, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;->alarm:Lcom/boohee/model/Alarm;

    .line 79
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/SportNoticeActivity;

    # getter for: Lcom/boohee/more/SportNoticeActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/more/SportNoticeActivity;->access$100(Lcom/boohee/more/SportNoticeActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;->alarm:Lcom/boohee/model/Alarm;

    iget-object v2, p0, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;->this$0:Lcom/boohee/more/SportNoticeActivity;

    # getter for: Lcom/boohee/more/SportNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;
    invoke-static {v2}, Lcom/boohee/more/SportNoticeActivity;->access$200(Lcom/boohee/more/SportNoticeActivity;)Lcom/boohee/modeldao/AlarmDao;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;->text_view:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->showTimeDialog(Landroid/content/Context;Lcom/boohee/model/Alarm;Lcom/boohee/modeldao/AlarmDao;Landroid/widget/TextView;)V

    .line 84
    return-void
.end method
