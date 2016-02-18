.class public Lcom/boohee/one/ui/ClubMembersActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ClubMembersActivity.java"


# static fields
.field public static final KEY_CLUB:Ljava/lang/String; = "key_club"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private clubId:I

.field private lv_circle_members:Landroid/widget/ListView;

.field private mClubMember:Lcom/boohee/model/status/ClubMember;

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Member;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/boohee/one/ui/ClubMembersActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/ClubMembersActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->clubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ClubMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubMembersActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->members:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/ClubMembersActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubMembersActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/boohee/one/ui/ClubMembersActivity;->members:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/ClubMembersActivity;)Lcom/boohee/model/status/ClubMember;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubMembersActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/ClubMembersActivity;Lcom/boohee/model/status/ClubMember;)Lcom/boohee/model/status/ClubMember;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubMembersActivity;
    .param p1, "x1"    # Lcom/boohee/model/status/ClubMember;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/ClubMembersActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubMembersActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->lv_circle_members:Landroid/widget/ListView;

    return-object v0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ClubMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->lv_circle_members:Landroid/widget/ListView;

    .line 51
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->lv_circle_members:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/ui/ClubMembersActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ClubMembersActivity$1;-><init>(Lcom/boohee/one/ui/ClubMembersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_club"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->clubId:I

    .line 63
    return-void
.end method

.method private requestClubMembers()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubMembersActivity;->showLoading()V

    .line 70
    iget v0, p0, Lcom/boohee/one/ui/ClubMembersActivity;->clubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "/api/v1/clubs/%d/club_members"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/boohee/one/ui/ClubMembersActivity;->clubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/ClubMembersActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/ui/ClubMembersActivity$2;-><init>(Lcom/boohee/one/ui/ClubMembersActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ClubMembersActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f07016c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ClubMembersActivity;->setTitle(I)V

    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubMembersActivity;->handleIntent()V

    .line 44
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubMembersActivity;->findViews()V

    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubMembersActivity;->requestClubMembers()V

    .line 46
    return-void
.end method
