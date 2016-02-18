.class public Lcom/boohee/myview/NewPeroidDialog;
.super Landroid/app/Dialog;
.source "NewPeroidDialog.java"


# instance fields
.field date:Ljava/util/Date;

.field dateTaoday:Landroid/widget/TextView;

.field deleteMc:Landroid/widget/TextView;

.field mcComing:Landroid/widget/TextView;

.field mcLeave:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "day"    # Ljava/util/Date;

    .prologue
    .line 31
    const v0, 0x7f0a00e1

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p2, p0, Lcom/boohee/myview/NewPeroidDialog;->date:Ljava/util/Date;

    .line 33
    invoke-direct {p0}, Lcom/boohee/myview/NewPeroidDialog;->init()V

    .line 34
    return-void
.end method

.method private addListener(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 65
    const v0, 0x7f0e075f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/boohee/myview/NewPeroidDialog$1;

    invoke-direct {v1, p0}, Lcom/boohee/myview/NewPeroidDialog$1;-><init>(Lcom/boohee/myview/NewPeroidDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private findView(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 58
    const v0, 0x7f0e075b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->dateTaoday:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0e075c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcComing:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0e075d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcLeave:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e075e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->deleteMc:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/boohee/myview/NewPeroidDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030264

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/myview/NewPeroidDialog;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0, v4}, Lcom/boohee/myview/NewPeroidDialog;->setCancelable(Z)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/boohee/myview/NewPeroidDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-direct {p0, v0}, Lcom/boohee/myview/NewPeroidDialog;->initView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/boohee/myview/NewPeroidDialog;->findView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/myview/NewPeroidDialog;->addListener(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->dateTaoday:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/myview/NewPeroidDialog;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcComing:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/myview/NewPeroidDialog;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcLeave:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/myview/NewPeroidDialog;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->deleteMc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/myview/NewPeroidDialog;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->dateTaoday:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/myview/NewPeroidDialog;->date:Ljava/util/Date;

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/myview/NewPeroidDialog;->date:Ljava/util/Date;

    invoke-virtual {p0}, Lcom/boohee/myview/NewPeroidDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/DateHelper;->getWeekOfDate(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method


# virtual methods
.method public setMcComingListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcComing:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcComing:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcComing:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setMcDeleteListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->deleteMc:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->deleteMc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->deleteMc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setMcLeaveListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcLeave:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcLeave:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/boohee/myview/NewPeroidDialog;->mcLeave:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
