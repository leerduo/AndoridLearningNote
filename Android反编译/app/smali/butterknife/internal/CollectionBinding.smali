.class final Lbutterknife/internal/CollectionBinding;
.super Ljava/lang/Object;
.source "CollectionBinding.java"

# interfaces
.implements Lbutterknife/internal/Binding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/internal/CollectionBinding$Kind;
    }
.end annotation


# instance fields
.field private final kind:Lbutterknife/internal/CollectionBinding$Kind;

.field private final name:Ljava/lang/String;

.field private final required:Z

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbutterknife/internal/CollectionBinding$Kind;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "kind"    # Lbutterknife/internal/CollectionBinding$Kind;
    .param p4, "required"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbutterknife/internal/CollectionBinding;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lbutterknife/internal/CollectionBinding;->type:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lbutterknife/internal/CollectionBinding;->kind:Lbutterknife/internal/CollectionBinding$Kind;

    .line 18
    iput-boolean p4, p0, Lbutterknife/internal/CollectionBinding;->required:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/CollectionBinding;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lbutterknife/internal/CollectionBinding$Kind;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbutterknife/internal/CollectionBinding;->kind:Lbutterknife/internal/CollectionBinding$Kind;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbutterknife/internal/CollectionBinding;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lbutterknife/internal/CollectionBinding;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lbutterknife/internal/CollectionBinding;->required:Z

    return v0
.end method
