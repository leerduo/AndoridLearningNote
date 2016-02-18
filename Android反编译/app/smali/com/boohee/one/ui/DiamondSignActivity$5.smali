.class Lcom/boohee/one/ui/DiamondSignActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "DiamondSignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/DiamondSignActivity;->requestRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/DiamondSignActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/DiamondSignActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONArray;)V

    .line 211
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->mRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/DiamondSignActivity;->access$500(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 212
    instance-of v1, p1, Lorg/json/JSONArray;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .end local p1    # "array":Lorg/json/JSONArray;
    :goto_0
    const-class v2, Lcom/boohee/model/CheckRecord;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CheckRecord;>;"
    const-string v1, "JsonCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->mRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/DiamondSignActivity;->access$500(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->mRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/DiamondSignActivity;->access$500(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/DiamondSignActivity;->access$600(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    new-instance v2, Lcom/boohee/calendar/CheckCalendarAdapter;

    iget-object v3, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/DiamondSignActivity;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;
    invoke-static {v4}, Lcom/boohee/one/ui/DiamondSignActivity;->access$600(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyyMM"

    invoke-static {v4, v5}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->mRecords:Ljava/util/List;
    invoke-static {v5}, Lcom/boohee/one/ui/DiamondSignActivity;->access$500(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/calendar/CheckCalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;)V

    # setter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$002(Lcom/boohee/one/ui/DiamondSignActivity;Lcom/boohee/calendar/CheckCalendarAdapter;)Lcom/boohee/calendar/CheckCalendarAdapter;

    .line 220
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/DiamondSignActivity;->calendarGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # getter for: Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/DiamondSignActivity;->access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    :cond_1
    return-void

    .line 212
    .end local v0    # "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CheckRecord;>;"
    .restart local p1    # "array":Lorg/json/JSONArray;
    :cond_2
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "array":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 227
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$5;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/DiamondSignActivity;->dismissLoading()V

    .line 228
    return-void
.end method
