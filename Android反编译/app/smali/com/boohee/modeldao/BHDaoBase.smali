.class public Lcom/boohee/modeldao/BHDaoBase;
.super Ljava/lang/Object;
.source "BHDaoBase.java"


# static fields
.field public static final ID:Ljava/lang/String; = "id"


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/modeldao/BHDaoBase;->ctx:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Lcom/boohee/modeldao/BHDaoBase;->ctx:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/boohee/modeldao/BHDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/boohee/database/BHDBHelper;

    invoke-direct {v0, p1}, Lcom/boohee/database/BHDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/boohee/database/BHDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/modeldao/BHDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDB()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/modeldao/BHDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/modeldao/BHDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/boohee/modeldao/BHDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 30
    :cond_0
    return-void
.end method

.method protected makePlaceholders(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 33
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 35
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No placeholders"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 40
    const-string v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
