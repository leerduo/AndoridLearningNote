.class public Lcom/boohee/one/ui/fragment/AddMeasureFragment;
.super Lcom/boohee/one/ui/fragment/BaseDialogFragment;
.source "AddMeasureFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;,
        Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;,
        Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;
    }
.end annotation


# static fields
.field private static final URL_MEASURE:Ljava/lang/String; = "/api/v2/measures?token=%s&record_on=%s"

.field public static final URL_MEASURE_DELETE:Ljava/lang/String; = "/api/v1/measures/%1$s"

.field private static final URL_MEASURE_POST:Ljava/lang/String; = "/api/v2/measures"


# instance fields
.field private et_arm:Landroid/widget/EditText;

.field private et_brass:Landroid/widget/EditText;

.field private et_hip:Landroid/widget/EditText;

.field private et_shank:Landroid/widget/EditText;

.field private et_thigh:Landroid/widget/EditText;

.field private et_waist:Landroid/widget/EditText;

.field private isRefresh:Z

.field private recordMeasure:Lcom/boohee/model/RecordMeasure;

.field private record_on:Ljava/lang/String;

.field private rl_left:Landroid/widget/RelativeLayout;

.field private rl_right:Landroid/widget/RelativeLayout;

.field private txt_cancel:Landroid/widget/TextView;

.field private txt_commit:Landroid/widget/TextView;

.field private txt_date:Landroid/widget/TextView;

.field private txt_del_arm:Landroid/widget/TextView;

.field private txt_del_brass:Landroid/widget/TextView;

.field private txt_del_hip:Landroid/widget/TextView;

.field private txt_del_shank:Landroid/widget/TextView;

.field private txt_del_thigh:Landroid/widget/TextView;

.field private txt_del_waist:Landroid/widget/TextView;

.field private txt_right:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;-><init>()V

    .line 194
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/AddMeasureFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->isRefresh:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->deleteMeasureRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->isRefresh:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->saveMeasureRecord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/AddMeasureFragment;)Lcom/boohee/model/RecordMeasure;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Lcom/boohee/model/RecordMeasure;)Lcom/boohee/model/RecordMeasure;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .param p1, "x1"    # Lcom/boohee/model/RecordMeasure;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Lcom/boohee/model/RecordMeasure;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .param p1, "x1"    # Lcom/boohee/model/RecordMeasure;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->inputValidate(Lcom/boohee/model/RecordMeasure;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/AddMeasureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->postMeasure()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/AddMeasureFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/AddMeasureFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_right:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/AddMeasureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->requestMeasure()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->deleteMeasure(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/fragment/AddMeasureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->refreshMeasure()V

    return-void
.end method

.method private deleteMeasure(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "record_type"    # Ljava/lang/String;
    .param p2, "txt_add_record_del"    # Landroid/widget/TextView;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 325
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "token"

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "/api/v1/measures/%1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/fragment/AddMeasureFragment$2;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, p2, p1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$2;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private deleteMeasureRecord(Ljava/lang/String;)V
    .locals 4
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v3, "latest_girth"

    invoke-virtual {v2, v3}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 448
    .local v1, "object":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const-class v2, Lcom/boohee/model/LocalMeasureRecord;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/LocalMeasureRecord;

    .line 450
    .local v0, "measureRecord":Lcom/boohee/model/LocalMeasureRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/boohee/model/LocalMeasureRecord;->record_on:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v3, "latest_weight"

    invoke-virtual {v2, v3}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private inputValidate(Lcom/boohee/model/RecordMeasure;)Z
    .locals 6
    .param p1, "recordMeasure"    # Lcom/boohee/model/RecordMeasure;

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0xf

    const/16 v2, 0x32

    const/16 v3, 0x96

    .line 404
    iget-object v0, p1, Lcom/boohee/model/RecordMeasure;->waist:Ljava/lang/String;

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasureValidate(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/boohee/model/RecordMeasure;->brass:Ljava/lang/String;

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasureValidate(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/boohee/model/RecordMeasure;->hip:Ljava/lang/String;

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasureValidate(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/boohee/model/RecordMeasure;->arm:Ljava/lang/String;

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasureValidate(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/boohee/model/RecordMeasure;->thigh:Ljava/lang/String;

    const/16 v1, 0x1e

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasureValidate(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/boohee/model/RecordMeasure;->shank:Ljava/lang/String;

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasureValidate(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    .locals 1
    .param p0, "record_date"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;-><init>()V

    .line 60
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method private postMeasure()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 362
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "token"

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "waist"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v2, v2, Lcom/boohee/model/RecordMeasure;->waist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "brass"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v2, v2, Lcom/boohee/model/RecordMeasure;->brass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "hip"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v2, v2, Lcom/boohee/model/RecordMeasure;->hip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "arm"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v2, v2, Lcom/boohee/model/RecordMeasure;->arm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v1, "thigh"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v2, v2, Lcom/boohee/model/RecordMeasure;->thigh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "shank"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v2, v2, Lcom/boohee/model/RecordMeasure;->shank:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "/api/v2/measures"

    new-instance v2, Lcom/boohee/one/ui/fragment/AddMeasureFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$3;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private recordMeasureValidate(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 424
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 425
    .local v1, "f_value":F
    int-to-float v3, p2

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    int-to-float v3, p3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 426
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u8f93\u5165\u4e0d\u5728\u5408\u7406\u8303\u56f4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v1    # "f_value":F
    :goto_0
    return v2

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private refreshMeasure()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    if-nez v0, :cond_0

    new-instance v0, Lcom/boohee/model/RecordMeasure;

    invoke-direct {v0}, Lcom/boohee/model/RecordMeasure;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v0, v0, Lcom/boohee/model/RecordMeasure;->brass:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_brass:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_brass:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v1, v1, Lcom/boohee/model/RecordMeasure;->brass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v0, v0, Lcom/boohee/model/RecordMeasure;->waist:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_waist:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_waist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v1, v1, Lcom/boohee/model/RecordMeasure;->waist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v0, v0, Lcom/boohee/model/RecordMeasure;->hip:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_hip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_hip:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v1, v1, Lcom/boohee/model/RecordMeasure;->hip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v0, v0, Lcom/boohee/model/RecordMeasure;->arm:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_arm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_arm:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v1, v1, Lcom/boohee/model/RecordMeasure;->arm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_3
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v0, v0, Lcom/boohee/model/RecordMeasure;->thigh:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 300
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_thigh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_thigh:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v1, v1, Lcom/boohee/model/RecordMeasure;->thigh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_4
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v0, v0, Lcom/boohee/model/RecordMeasure;->shank:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 307
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_shank:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_shank:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    iget-object v1, v1, Lcom/boohee/model/RecordMeasure;->shank:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_5
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_brass:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_brass:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_waist:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_waist:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_hip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_hip:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_arm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_arm:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_thigh:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_thigh:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_shank:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_shank:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private requestMeasure()V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_date:Landroid/widget/TextView;

    const-string v1, "\u4eca\u5929"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_right:Landroid/widget/TextView;

    const v1, 0x7f0201ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 252
    :goto_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->showLoading()V

    .line 253
    const-string v0, "/api/v2/measures?token=%s&record_on=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$1;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$1;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private saveMeasureRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "waist"    # Ljava/lang/String;
    .param p2, "record_on"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p2}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    new-instance v0, Lcom/boohee/model/LocalMeasureRecord;

    invoke-direct {v0, p1, p2}, Lcom/boohee/model/LocalMeasureRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v0, "measureRecord":Lcom/boohee/model/LocalMeasureRecord;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v2, "latest_girth"

    invoke-static {v0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .end local v0    # "measureRecord":Lcom/boohee/model/LocalMeasureRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->requestMeasure()V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/boohee/model/RecordMeasure;

    invoke-direct {v0}, Lcom/boohee/model/RecordMeasure;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->recordMeasure:Lcom/boohee/model/RecordMeasure;

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 76
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 77
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v0, 0x7f0300d0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f0e031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_cancel:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0e031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_date:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0e031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_commit:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0e06b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_right:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0e0711

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_waist:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0e0709

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_brass:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0e070b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_hip:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0e0707

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_arm:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0e070f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_thigh:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0e070d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_shank:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0e0712

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_waist:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f0e070a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_brass:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f0e070c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_hip:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f0e0708

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_arm:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f0e0710

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_thigh:Landroid/widget/EditText;

    .line 106
    const v0, 0x7f0e070e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_shank:Landroid/widget/EditText;

    .line 107
    const v0, 0x7f0e06b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->rl_left:Landroid/widget/RelativeLayout;

    .line 108
    const v0, 0x7f0e06b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->rl_right:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Lcom/boohee/one/ui/fragment/AddMeasureFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_commit:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Lcom/boohee/one/ui/fragment/AddMeasureFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->rl_left:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Lcom/boohee/one/ui/fragment/AddMeasureFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->rl_right:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Lcom/boohee/one/ui/fragment/AddMeasureFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_waist:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_waist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_waist:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_brass:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_brass:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_brass:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_hip:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_hip:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_hip:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_arm:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_arm:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_arm:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_thigh:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_thigh:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_thigh:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_shank:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_shank:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_shank:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureDelClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_waist:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_waist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_waist:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_brass:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_brass:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_brass:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_hip:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_hip:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_hip:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_arm:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_arm:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_arm:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_thigh:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_thigh:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_thigh:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_shank:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->et_shank:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->txt_del_shank:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddMeasureFragment$MeasureTextWatcher;-><init>(Lcom/boohee/one/ui/fragment/AddMeasureFragment;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    return-void
.end method
