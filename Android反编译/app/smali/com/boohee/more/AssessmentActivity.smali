.class public Lcom/boohee/more/AssessmentActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AssessmentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/boohee/more/AssessmentAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/boohee/more/AssessmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/AssessmentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 30
    const v1, 0x7f0e0150

    invoke-virtual {p0, v1}, Lcom/boohee/more/AssessmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 31
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Lcom/boohee/more/AssessmentAdapter;

    iget-object v2, p0, Lcom/boohee/more/AssessmentActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/more/AssessmentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/more/AssessmentActivity;->adapter:Lcom/boohee/more/AssessmentAdapter;

    .line 32
    iget-object v1, p0, Lcom/boohee/more/AssessmentActivity;->adapter:Lcom/boohee/more/AssessmentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030099

    invoke-virtual {p0, v0}, Lcom/boohee/more/AssessmentActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f0700e6

    invoke-virtual {p0, v0}, Lcom/boohee/more/AssessmentActivity;->setTitle(I)V

    .line 26
    invoke-direct {p0}, Lcom/boohee/more/AssessmentActivity;->init()V

    .line 27
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 38
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/more/AssessmentActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/more/AssessmentDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/boohee/more/AssessmentActivity;->adapter:Lcom/boohee/more/AssessmentAdapter;

    invoke-virtual {v2, p3}, Lcom/boohee/more/AssessmentAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Lcom/boohee/more/AssessmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
